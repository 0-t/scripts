#!/bin/bash

NOFF="--no-commit --no-ff cm440"
ABRT="--abort"

if [ "$1" = "noff" ]; then
	STR=$NOFF
elif [ "$1" = "abrt" ]; then
	STR=$ABRT
else
	echo "Try again."
	exit 0
fi

declare -a arr=(build development frameworks/av frameworks/base frameworks/native frameworks/rs frameworks/webview 
                hardware/qcom/audio-caf hardware/qcom/display-caf packages/apps/Settings system/vold vendor/cm
                external/openssl external/clang packages/services/Telephony packages/inputmethods/LatinIME)

for i in ${arr[@]}; do
	cd $HOME/android/system/$i
	git merge $STR; echo $STR: $i
done

echo Done.
exit 0

# hardware/libhardware_legacy packages/apps/Gallery2 system/core 
# packages/providers/TelephonyProvider packages/apps/Mms 
# hardware/qcom/media  hardware/qcom/wlan hardware/qcom/media-caf packages/apps/Torch
# packages/apps/Camera2 bionic dalvik external/chromium_org
# packages/apps/Contacts packages/apps/Dialer packages/apps/InCallUI packages/apps/ContactsCommon packages/providers/MediaProvider 
