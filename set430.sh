#!/bin/bash

NOFF="--no-commit --no-ff cm430"
ABRT="--abort"

function copy_prebuilts {
	. prebuilts.sh
	exit 0
}

if [ "$1" = "noff" ]; then
	STR=$NOFF
elif [ "$1" = "abrt" ]; then
	STR=$ABRT
elif [ "$1" = "preblt" ]; then
	copy_prebuilts
else
	echo "Try again."
	exit 0
fi

declare -a arr=(frameworks/base frameworks/native hardware/qcom/audio-caf vendor/cm)

for i in ${arr[@]}; do
	cd $HOME/android/system/$i
	git merge $STR; echo $STR: $i
done

echo Done.
exit 0

# frameworks/opt/telephony hardware/qcom/media hardware/qcom/media-caf hardware/qcom/wlan packages/apps/Settings
# (merged) packages/apps/Gallery2 frameworks/av
