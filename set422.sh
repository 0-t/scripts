#!/bin/bash

NOFF="--no-commit --no-ff cm422"
ABRT="--abort"

if [ "$1" = "noff" ]; then
	STR=$NOFF
elif [ "$1" = "abrt" ]; then
	STR=$ABRT
else
	echo "Try again."
	exit 0
fi

declare -a arr=(device/common frameworks/native frameworks/av hardware/qcom/audio-caf hardware/qcom/gps)

for i in ${arr[@]}; do
	cd $HOME/android/system/$i
	git merge $STR; echo $STR: $i
done

echo Done.
exit 0
