#!/bin/bash

NOFF="--no-commit --no-ff sr442"
ABRT="--abort"

if [ "$1" = "noff" ]; then
STR=$NOFF
elif [ "$1" = "abrt" ]; then
STR=$ABRT
else
echo "Try again."
exit 0
fi
 
declare -a arr=(build frameworks/base frameworks/native hardware/qcom/audio-caf 
                hardware/qcom/display-caf vendor/slim packages/apps/Settings)

for i in ${arr[@]}; do
cd $HOME/android/slims/$i
git merge $STR; echo $STR: $i
done

echo Done.
exit 0
