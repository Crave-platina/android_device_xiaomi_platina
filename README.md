Recovery tree for Xiaomi MI 8 Lite
======================================

The Xiaomi MI 8 Lite (codenamed _"platina"_) is a mid-range smartphone from Xiaomi announced in March 2018.

## Device specifications

| Device                  | Xiaomi MI 8 Lite                                            |
| ----------------------- | :---------------------------------------------------------- |
| SoC                     | Qualcomm SDM660 Snapdragon 660                              |
| CPU                     | 8x Qualcomm® Kryo™ 260 CPU                                  |
| GPU                     | Adreno 512                                                  |
| Memory                  | 4GB / 6GB RAM (LPDDR4X)                                     |
| Shipped Android version | 8.1.0                                                       |
| Storage                 | 64GB / 128GB eMMC 5.1 flash storage                         |
| MicroSD                 | Up to 256 GB                                                |
| Battery                 | Non-removable Li-Po 3350 mAh                                |
| Dimensions              | 156.4 x 75.8 x 7.5 mm                                       |
| Display                 | 2280 x 1080 (19:9), 6.26 inch                               |
| Rear camera 1           | 12 MP, f/1.9, 1/2.55", 1.4µm, dual pixel PDAF               |
| Rear camera 2           | 5 MP, f/2.2, 1.12µm, depth sensor                           |
| Front camera 1          | 24 MP, f/2.0, 1.8µm                                         |

## Device picture

![Xiaomi Mi 8 Lite ](https://i.imgur.com/0ffufJ1.png "Xiaomi MI 8 Lite")

## How to build

This device tree was tested and is fully compatible with [minimal-manifest-twrp](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp).

1. Set up the build environment following the instructions [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/blob/twrp-12.1/README.md#getting-started)

2. In the root folder of the fetched repo, clone the device tree:

```bash
git clone https://github.com/hanifardhani/recovery_device_xiaomi_platina -b twrp-12.1 device/xiaomi/platina
```

3. To build:

```bash
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true # Only if you use minimal twrp tree.
lunch twrp_platina-eng
mka recoveryimage
```

## Copyright

```
#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```
