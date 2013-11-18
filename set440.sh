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

declare -a arr=( frameworks/base frameworks/native vendor/cm hardware/qcom/audio-caf build bionic system/core hardware/libhardware_legacy)

for i in ${arr[@]}; do
	cd $HOME/android/system/$i
	git merge $STR; echo $STR: $i
done

echo Done.
exit 0

# frameworks/av hardware/qcom/media hardware/qcom/media-caf hardware/qcom/wlan packages/apps/Settings
# packages/apps/Torch
# (merged) packages/apps/Gallery2
