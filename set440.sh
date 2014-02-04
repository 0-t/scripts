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

declare -a arr=(build frameworks/base frameworks/native frameworks/webview hardware/qcom/audio-caf hardware/qcom/display-caf packages/apps/Settings system/vold vendor/cm)

for i in ${arr[@]}; do
	cd $HOME/android/system/$i
	git merge $STR; echo $STR: $i
done

echo Done.
exit 0

# hardware/libhardware_legacy packages/apps/Gallery2 packages/apps/Dialer system/core 
# packages/services/Telephony packages/providers/TelephonyProvider packages/apps/Mms 
# hardware/qcom/media  hardware/qcom/wlan packages/apps/Torch
# packages/apps/Camera2 bionic dalvik frameworks/av external/chromium_org hardware/qcom/media-caf
