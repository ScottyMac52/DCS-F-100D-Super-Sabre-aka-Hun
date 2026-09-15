# Installing DCS-F-100D-Components

## Requirements

- DCS World with the F-100D Super Sabre module installed.
- OvGME configured with the DCS Saved Games directory as its root, normally `C:\Users\<you>\Saved Games\DCS` or `DCS.openbeta`.
- The hardware represented by the profiles you intend to use.
- OpenKneeboard, VoiceAttack, VAICOM PRO, and AutoHotkey are optional; see [OpenKneeboard and VAICOM PRO](OPENKNEEBOARD-VAICOM.md).

## Back up existing controls

Before enabling the package, copy these folders somewhere outside Saved Games:

```text
Saved Games\DCS\Config\Input\F-100D
Saved Games\DCS\Config\Input\UiLayer
Saved Games\DCS\KNEEBOARD\F-100D
```

DCS can rewrite input profiles when devices or bindings change. A backup gives you a clean recovery point independent of OvGME.

## Install with OvGME

1. Download `DCS-F-100D-Components-<version>-OVGME.zip` from the repository release.
2. Add the archive to the OvGME configuration whose root is your DCS Saved Games directory.
3. Enable the package.
4. Start DCS and open **Options → Controls → F-100D Super Sabre**.
5. Confirm that the expected device columns contain the assignments listed in [Control mappings](CONTROL-MAPPINGS.md).
6. Open the in-game kneeboard or OpenKneeboard and confirm that the F-100D Super Sabre pages appear in numeric order.

The archive writes only these package areas:

```text
Config\Input\F-100D\joystick
Config\Input\F-100D\modifiers.lua   (when configured)
Config\Input\UiLayer
KNEEBOARD\F-100D
```

## Device GUIDs

DCS embeds a Windows device-instance GUID in each `.diff.lua` filename. If your GUID differs from the packaged filename, DCS may show an empty column even though the profile is installed. In DCS, select the correct device column, choose **Load profile**, and load the matching file manually; DCS will save it under your local GUID. Re-scaffolding is appropriate when you want the repository itself to adopt a new captured device set.

## Verify the UI Layer

The build composes DCS-Common's canonical UI Layer with only the devices used by this module. In **Options → Controls**, select **UI Layer** and confirm that the applicable packaged devices have their shared controls. Module-specific bindings remain under **F-100D Super Sabre**.

## Remove or restore

Disable the package in OvGME before installing another version. To restore the pre-package state, keep it disabled and copy your backup folders back into Saved Games. If DCS retained generated or locally edited files, compare them with the backup before deleting anything.
