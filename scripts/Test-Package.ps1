param(
  [Parameter(Mandatory = $true)][string]$Version
)
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$commonRoot = if ($env:DCS_COMMON_ROOT) { $env:DCS_COMMON_ROOT } else { Join-Path $root '.dcs-common' }
$uiLayerSource = Join-Path $commonRoot 'assets/shared/ui-layer/input/UiLayer'
if (-not (Test-Path $uiLayerSource)) { throw "Missing shared UI Layer input payload: $uiLayerSource" }
$dist = Join-Path $root 'dist'
$pkgName = 'DCS-F-100D-Components'
$zip = Join-Path $dist "$pkgName-$Version-OVGME.zip"
if (-not (Test-Path $zip)) { throw "Missing package $zip" }
$sums = Get-Content (Join-Path $dist 'SHA256SUMS.txt')
$leaf = Split-Path $zip -Leaf
$hashLine = $sums | Where-Object { $_ -match [regex]::Escape($leaf) } | Select-Object -First 1
if (-not $hashLine) { throw 'SHA256SUMS.txt does not list the package archive.' }
$expected = ($hashLine -split '\s+')[0].ToLowerInvariant()
$actual = (Get-FileHash $zip -Algorithm SHA256).Hash.ToLowerInvariant()
if ($expected -ne $actual) { throw 'SHA256SUMS.txt does not match the package archive.' }

function Get-PhysicalDeviceName([string]$FileName) {
  $name = [System.IO.Path]::GetFileName($FileName) -replace '\.diff\.lua$', ''
  $name = $name -replace '\s*\{[0-9A-Fa-f-]{36}\}\s*$', ''
  return (($name.Trim() -replace '\s+', ' ').ToLowerInvariant())
}

$consumerDevices = @(
  Get-ChildItem (Join-Path $root 'src/Config/Input/F-100D/joystick') -Filter '*.diff.lua' |
    ForEach-Object { Get-PhysicalDeviceName $_.Name }
)
$expectedUiLayerProfiles = @(
  Get-ChildItem (Join-Path $uiLayerSource 'joystick') -Filter '*.diff.lua' |
    Where-Object { $consumerDevices -contains (Get-PhysicalDeviceName $_.Name) } |
    ForEach-Object { $_.Name } |
    Sort-Object
)
if ($expectedUiLayerProfiles.Count -eq 0) { throw 'No applicable shared UI Layer profiles were found for the F-100D hardware.' }

Add-Type -AssemblyName System.IO.Compression.FileSystem
$archiveBase = [System.IO.Path]::GetFileNameWithoutExtension($leaf)
$archive = [System.IO.Compression.ZipFile]::OpenRead($zip)
try {
  $entries = @($archive.Entries | ForEach-Object { $_.FullName.Replace('\', '/') })
  $payloadPrefix = "$archiveBase/"
  $unexpected = @($entries | Where-Object {
    $_ -ne 'README.TXT' -and
    $_ -ne 'VERSION.TXT' -and
    -not $_.StartsWith($payloadPrefix, [System.StringComparison]::Ordinal)
  })
  if ($unexpected.Count -gt 0) {
    throw "Invalid OVGME archive root. Expected '$archiveBase/' but found '$($unexpected[0])'."
  }
  if (-not ($entries | Where-Object { $_.StartsWith("${payloadPrefix}Config/Input/F-100D/joystick/", [System.StringComparison]::Ordinal) })) {
    throw 'OVGME archive is missing the F-100D joystick profile payload.'
  }

  $uiLayerJoystickPrefix = "${payloadPrefix}Config/Input/UiLayer/joystick/"
  $actualUiLayerProfiles = @(
    $entries |
      Where-Object { $_.StartsWith($uiLayerJoystickPrefix, [System.StringComparison]::Ordinal) -and $_.EndsWith('.diff.lua') } |
      ForEach-Object { $_.Substring($uiLayerJoystickPrefix.Length) } |
      Sort-Object
  )
  if ([string]::Join("`n", $actualUiLayerProfiles) -ne [string]::Join("`n", $expectedUiLayerProfiles)) {
    throw "Shared UI Layer joystick payload is not tailored to the F-100D hardware. Expected: $($expectedUiLayerProfiles -join ', '). Actual: $($actualUiLayerProfiles -join ', ')."
  }
  if ($entries -notcontains "${payloadPrefix}Config/Input/UiLayer/modifiers.lua") {
    throw 'OVGME archive is missing the shared UI Layer modifiers.lua.'
  }
  if (-not ($entries | Where-Object { $_.StartsWith("${payloadPrefix}KNEEBOARD/F-100D/", [System.StringComparison]::Ordinal) })) {
    throw 'OVGME archive is missing the F-100D kneeboard payload.'
  }
  if ($entries -notcontains 'README.TXT') { throw 'OVGME archive is missing README.TXT.' }
  if ($entries -notcontains 'VERSION.TXT') { throw 'OVGME archive is missing VERSION.TXT.' }
}
finally {
  $archive.Dispose()
}

Write-Host "Package checksum and tailored OVGME structure OK for $leaf"
