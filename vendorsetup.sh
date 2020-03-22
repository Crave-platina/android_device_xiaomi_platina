#
# Copyright (C) 2018-2020 OrangeFox Recovery Project
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# See <http://www.gnu.org/licenses/>.
#
# Please maintain this if you use this script or any part of it
#
FDEVICE="platina"
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
        export PLATFORM_VERSION="16.1.0"
    	export PLATFORM_SECURITY_PATCH="2099-12-31"
	export TW_DEFAULT_LANGUAGE="en"
        export OF_SCREEN_H=2280
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_OTA_RES_DECRYPT=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export FOX_USE_LZMA_COMPRESSION=1
	export OF_CLASSIC_LEDS_FUNCTION=1
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_ZIP_BINARY=1
	export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI="1"

	export FOX_REPLACE_BUSYBOX_PS=1
	export OF_USE_NEW_MAGISKBOOT=1

        export OF_KEEP_DM_VERITY="1"; # enabled for R10.1
	export OF_DISABLE_FORCED_ENCRYPTION="1";  # enabled for R10.1

	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR="1";  # enabled for R10.1
	export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES="1";  # enabled for R10.1
	export OF_CHECK_OVERWRITE_ATTEMPTS="1";  # enabled for R10.1

	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	fi
	add_lunch_combo omni_"$FDEVICE"-eng
	#add_lunch_combo omni_"$FDEVICE"-userdebug
fi
#
