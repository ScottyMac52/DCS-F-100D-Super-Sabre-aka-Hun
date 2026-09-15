# OpenKneeboard and VAICOM PRO

## Included kneeboard tab

The OvGME package installs 9 numbered PNG reference pages into:

```text
KNEEBOARD\F-100D
```

OpenKneeboard should discover this through its DCS Aircraft tab. If aircraft detection does not expose it, add the directory as a Folder tab. Numeric prefixes preserve page order.

Current generated pages:

- `00-F100D-CONTROL-OVERVIEW.png`
- `01-MOZA-AB9.png`
- `02-TM-TPR.png`
- `03-VIPER-TQS-MISSION-PACK.png`
- `04-VKB-F14-GUNFIGHTER.png`
- `05-WINCTRL-PTO2.png`
- `06-WINCTRL-ICP.png`
- `08-TM-MFD-1.png`
- `09-TM-MFD-2.png`

The mappings behind these pages are documented in [Control mappings](CONTROL-MAPPINGS.md), and image provenance is covered by [Third-party assets](THIRD-PARTY-ASSETS.md).

## VAICOM PRO

This repository does not currently configure a module-specific VAICOM summary page or bundle a PTT bridge. Installing the package does not change VoiceAttack or VAICOM. If a bridge is added later, document its physical inputs and VoiceAttack chords here and reserve those inputs in the module profile.

Use VoiceAttack phrases that do not overlap VAICOM keywords.

## Optional VoiceAttack navigation

OpenKneeboard installs remote-control programs under `C:\Program Files\OpenKneeboard\utilities`.

| Suggested phrase | Program |
| --- | --- |
| Kneeboard next page | `OpenKneeboard-RemoteControl-NEXT_PAGE.exe` |
| Kneeboard previous page | `OpenKneeboard-RemoteControl-PREVIOUS_PAGE.exe` |
| Kneeboard next tab | `OpenKneeboard-RemoteControl-NEXT_TAB.exe` |
| Kneeboard previous tab | `OpenKneeboard-RemoteControl-PREVIOUS_TAB.exe` |
| Kneeboard brighter | `OpenKneeboard-RemoteControl-INCREASE_BRIGHTNESS.exe` |
| Kneeboard dimmer | `OpenKneeboard-RemoteControl-DECREASE_BRIGHTNESS.exe` |
| Kneeboard night | `OpenKneeboard-RemoteControl-ENABLE_TINT.exe` |
| Kneeboard day | `OpenKneeboard-RemoteControl-DISABLE_TINT.exe` |

Add these commands to the existing VoiceAttack profile without changing VAICOM's TX bindings.
