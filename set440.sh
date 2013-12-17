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

declare -a arr=(build bionic frameworks/av frameworks/native hardware/qcom/audio-caf hardware/qcom/media-caf packages/apps/Settings vendor/cm)

for i in ${arr[@]}; do
	cd $HOME/android/system/$i
	git merge $STR; echo $STR: $i
done

echo Done.
exit 0

#  hardware/libhardware_legacy packages/apps/Gallery2 packages/apps/Dialer system/vold frameworks/base packages/apps/Camera2 system/core frameworks/av hardware/qcom/display-caf
#  packages/services/Telephony packages/providers/TelephonyProvider packages/apps/Mms
# hardware/qcom/media  hardware/qcom/wlan
# packages/apps/Torch
