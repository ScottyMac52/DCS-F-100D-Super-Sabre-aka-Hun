# F-100D control mappings

This reference is generated from the effective DCS `.diff.lua` profiles used by IPI. Those profiles remain the executable source of truth.

## Device index

| Device | Profile file | Layers | Assignments |
| --- | --- | --- | ---: |
| [F16 MFD 1](devices/TM-MFD-1-MAPPINGS.md) | `F16 MFD 1 {51FA60C0-CB32-11ed-800B-444553540000}.diff.lua` | Base | 1 |
| [F16 MFD 2](devices/TM-MFD-2-MAPPINGS.md) | `F16 MFD 2 {51FA39B0-CB32-11ed-8008-444553540000}.diff.lua` | Base | 1 |
| [F16 MFD 3](devices/TM-MFD-3-MAPPINGS.md) | `F16 MFD 3 {C5BE49A0-2342-11ee-8001-444553540000}.diff.lua` | Base | 1 |
| [MOZA AB9 FFB Base](devices/MOZA-AB9-MAPPINGS.md) | `MOZA AB9 FFB Base {71DA6210-432E-11f1-8001-444553540000}.diff.lua` | Base | 2 |
| [T-Pendular-Rudder](devices/TM-TPR-MAPPINGS.md) | `T-Pendular-Rudder {14ED3D40-3F58-11f1-8002-444553540000}.diff.lua` | Base | 3 |
| [Viper TQS](devices/VIPER-TQS-MISSION-PACK-MAPPINGS.md) | `Viper TQS {C0A33440-3F54-11f1-8001-444553540000}.diff.lua` | Base, LCtrl | 17 |
| [VKBSim Gunfighter F14](devices/VKB-F14-GUNFIGHTER-MAPPINGS.md) | `VKBSim Gunfighter F14 {2D5CEC70-5189-11f1-8001-444553540000}.diff.lua` | Base, JOY_BTN7 | 17 |
| [WINCTRL CarrierAce PTO 2](devices/WINCTRL-PTO2-MAPPINGS.md) | `WINCTRL CarrierAce PTO 2 {19B7D090-6120-11f0-8001-444553540000}.diff.lua` | Base, LCtrl | 17 |
| [WINCTRL ViperAce ICP](devices/WINCTRL-ICP-MAPPINGS.md) | `WINCTRL ViperAce ICP {3731E2E0-4D98-11f1-8001-444553540000}.diff.lua` | Base, JOY_BTN7 | 53 |

## Reading the tables

- `JOY_BTN#` identifies a button; `JOY_X`, `JOY_Y`, and similar names identify axes.
- A modifier before an input means both must be active.
- Empty/default profiles are documented explicitly rather than omitted.
- DCS device GUIDs in filenames are installation-specific; see [Installation](INSTALLATION.md#device-guids).

## Devices

### F16 MFD 1

- Profile: `F16 MFD 1 {51FA60C0-CB32-11ed-800B-444553540000}.diff.lua`
- Shared hardware: `tm-mfd`
- Physical instance: `51fa60c0-cb32-11ed-800b-444553540000`
- Kneeboard page: `01-TM-MFD-1.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN13` | ZELL | — |

### F16 MFD 2

- Profile: `F16 MFD 2 {51FA39B0-CB32-11ed-8008-444553540000}.diff.lua`
- Shared hardware: `tm-mfd`
- Physical instance: `51fa39b0-cb32-11ed-8008-444553540000`
- Kneeboard page: `02-TM-MFD-2.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN13` | ZELL | — |

### F16 MFD 3

- Profile: `F16 MFD 3 {C5BE49A0-2342-11ee-8001-444553540000}.diff.lua`
- Shared hardware: `tm-mfd`
- Physical instance: `c5be49a0-2342-11ee-8001-444553540000`
- Kneeboard page: `03-TM-MFD-3.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN13` | ZELL | — |

### MOZA AB9 FFB Base

- Profile: `MOZA AB9 FFB Base {71DA6210-432E-11f1-8001-444553540000}.diff.lua`
- Shared hardware: `moza-ab9`
- Physical instance: `71da6210-432e-11f1-8001-444553540000`
- Kneeboard page: `04-MOZA-AB9.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_Y` | Pitch | — |
| `JOY_X` | Roll | — |

### T-Pendular-Rudder

- Profile: `T-Pendular-Rudder {14ED3D40-3F58-11f1-8002-444553540000}.diff.lua`
- Shared hardware: `tm-tpr`
- Physical instance: `14ed3d40-3f58-11f1-8002-444553540000`
- Kneeboard page: `05-TM-TPR.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_Z` | Rudder | — |
| `JOY_Y` | Wheel Brake Left | invert=true |
| `JOY_X` | Wheel Brake Right | invert=true |

### Viper TQS

- Profile: `Viper TQS {C0A33440-3F54-11f1-8001-444553540000}.diff.lua`
- Shared hardware: `viper-tqs-mission-pack`
- Physical instance: `c0a33440-3f54-11f1-8001-444553540000`
- Kneeboard page: `06-VIPER-TQS-MISSION-PACK.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN51` | AStart Cov CLSD | — |
| `JOY_BTN50` | AStart Cov OPN | — |
| `JOY_BTN6` | Sight Mechanical Cage Lever - TOGGLE | — |
| `JOY_BTN53` | AStart OFF | — |
| `JOY_BTN52` | AStart ON | — |
| `JOY_BTN9` | SBrake EXTND | — |
| `JOY_BTN10` | SBrake RET | — |
| `JOY_BTN16` | Sight Electrical Cage | — |
| `JOY_BTN43` | Armmament- | — |
| `JOY_BTN42` | Armmament+ | — |
| `JOY_BTN17` | MANUAL | — |
| `JOY_Z` | Thrust | — |
| `JOY_RZ` | Zoom View | — |
| `JOY_RX` | Range | — |
| `JOY_RY` | UHF Volume | — |

#### Modifier layer: `LCtrl`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `LCtrl + JOY_BTN43` | Course Set Knob - CCW | — |
| `LCtrl + JOY_BTN42` | Course Set Knob - CW | — |

### VKBSim Gunfighter F14

- Profile: `VKBSim Gunfighter F14 {2D5CEC70-5189-11f1-8001-444553540000}.diff.lua`
- Shared hardware: `vkb-f14-gunfighter`
- Physical instance: `2d5cec70-5189-11f1-8001-444553540000`
- Kneeboard page: `07-VKB-F14-GUNFIGHTER.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN11` | Nose UP | — |
| `JOY_BTN10` | Nose DOWN | — |
| `JOY_BTN12` | LWD | — |
| `JOY_BTN9` | RWD | — |
| `JOY_BTN6` | NWS | — |
| `JOY_BTN3` | Pickle | — |
| `JOY_BTN1` | Shoot | — |
| `JOY_BTN5` | Radar Reject Button | — |
| `JOY_BTN15` | SIGHT & RADAR | — |
| `JOY_BTN4` | LABS | — |
| `JOY_BTN13` | LABS ALT | — |
| `JOY_BTN14` | LADD | — |
| `JOY_BTN16` | OFF | — |
| `JOY_RX` | Missile Vol | — |

#### Modifier layer: `JOY_BTN7`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7 + JOY_BTN3` | AB | — |
| `JOY_BTN7 + JOY_BTN5` | F1 | — |
| `JOY_BTN7 + JOY_RX` | RHAW  | — |

### WINCTRL CarrierAce PTO 2

- Profile: `WINCTRL CarrierAce PTO 2 {19B7D090-6120-11f0-8001-444553540000}.diff.lua`
- Shared hardware: `winctrl-pto2`
- Physical instance: `19b7d090-6120-11f0-8001-444553540000`
- Kneeboard page: `08-WINCTRL-PTO2.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN12` | ZELL Raise | — |
| `JOY_BTN34` | Tail Hook Release | — |
| `JOY_BTN7` | Flap DWN | — |
| `JOY_BTN5` | Flap UP | — |
| `JOY_BTN1` | ZELL | — |
| `JOY_BTN28` | Chute Stow | — |
| `JOY_BTN31` | Chute Deploy | — |
| `JOY_BTN29` | Chute Release | — |
| `JOY_BTN37` | Gear DOWN | — |
| `JOY_BTN35` | Gear UP | — |
| `JOY_BTN11` | Anti-Skid OFF | — |
| `JOY_BTN10` | Anti-Skid ON | — |
| `JOY_BTN22` | EJett | — |
| `JOY_BTN8` | Taxi/LND Lghts ON | — |
| `JOY_BTN2` | Warning System Cutout | — |
| `JOY_BTN17` | EJett CVR UNLOCK | — |

#### Modifier layer: `LCtrl`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `LCtrl + JOY_BTN10` | Anti-Skid TST | — |

### WINCTRL ViperAce ICP

- Profile: `WINCTRL ViperAce ICP {3731E2E0-4D98-11f1-8001-444553540000}.diff.lua`
- Shared hardware: `winctrl-icp`
- Physical instance: `3731e2e0-4d98-11f1-8001-444553540000`
- Kneeboard page: `09-WINCTRL-ICP.png`

#### Base layer

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN1` | Gun SAFE | — |
| `JOY_BTN5` | Gun UPPER | — |
| `JOY_BTN6` | Guns ALL | — |
| `JOY_BTN4` | Gun LOWER | — |
| `JOY_BTN2` | Gun POD | — |
| `JOY_BTN3` | Gun MISSILES | — |
| `JOY_BTN29` | Canopy | — |
| `JOY_BTN31` | Cam- | — |
| `JOY_BTN30` | Cam+ | — |
| `JOY_BTN32` | GUN | — |
| `JOY_BTN33` | ROCKET | — |
| `JOY_BTN34` | BOMB | — |
| `JOY_BTN13` | ROCKETS | — |
| `JOY_BTN7` | BOMBS | — |
| `JOY_BTN8` | DISP | — |
| `JOY_BTN11` | NAPALM | — |
| `JOY_BTN15` | SPL STORES | — |
| `JOY_BTN14` | SHRIKE | — |
| `JOY_BTN16` | TANK JETT | — |
| `JOY_BTN9` | DISP JETT | — |
| `JOY_BTN12` | PYLON JETT | — |
| `JOY_BTN10` | OFF | — |
| `JOY_BTN22` | NOSE ONLY | — |
| `JOY_BTN25` | SAFE | — |
| `JOY_BTN24` | TAIL ONLY | — |
| `JOY_BTN21` | NOSE & TAIL | — |
| `JOY_RX` | TACAN Volume | — |
| `JOY_RY` | RHAW Audio | — |
| `JOY_Y` | ADF Radio Vol | — |
| `JOY_X` | Missile Vol | — |

#### Modifier layer: `JOY_BTN7`

| Physical input | Assignment | Axis/filter settings |
| --- | --- | --- |
| `JOY_BTN7 + JOY_BTN31` | AWRS Mode- | — |
| `JOY_BTN7 + JOY_BTN30` | AWRS Mode+ | — |
| `JOY_BTN7 + JOY_BTN24` | Sight Selector- | — |
| `JOY_BTN7 + JOY_BTN22` | Sight Selector+ | — |
| `JOY_BTN7 + JOY_BTN32` | Target Speed - HI | — |
| `JOY_BTN7 + JOY_BTN33` | Target Speed - TR | — |
| `JOY_BTN7 + JOY_BTN34` | Target Speed - LO | — |
| `JOY_BTN7 + JOY_BTN25` | Target Speed- | — |
| `JOY_BTN7 + JOY_BTN23` | Target Speed+ | — |
| `JOY_BTN7 + JOY_BTN18` | Missile Bypass | — |
| `JOY_BTN7 + JOY_BTN7` | 1 | — |
| `JOY_BTN7 + JOY_BTN8` | 2 | — |
| `JOY_BTN7 + JOY_BTN9` | 3 | — |
| `JOY_BTN7 + JOY_BTN11` | 4 | — |
| `JOY_BTN7 + JOY_BTN12` | 5 | — |
| `JOY_BTN7 + JOY_BTN13` | 6 | — |
| `JOY_BTN7 + JOY_BTN15` | 7 | — |
| `JOY_BTN7 + JOY_BTN20` | Sight Depression- | — |
| `JOY_BTN7 + JOY_BTN19` | Sight Depression+ | — |
| `JOY_BTN7 + JOY_X` | ADI Adjust | — |
| `JOY_BTN7 + JOY_RY` | Special Store Rel | — |
| `JOY_BTN7 + JOY_RX` | Rocket Depression Angle | — |
| `JOY_BTN7 + JOY_Y` | Range Sweep | — |
