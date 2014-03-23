#!/bin/bash

NOFF="--no-commit --no-ff cm442"
ABRT="--abort"

if [ "$1" = "noff" ]; then
STR=$NOFF
elif [ "$1" = "abrt" ]; then
STR=$ABRT
else
echo "Try again."
exit 0
fi

declare -a arr=(build external/clang external/openssl
                frameworks/base frameworks/native frameworks/rs
                hardware/qcom/audio-caf hardware/qcom/display-caf hardware/qcom/media-caf
                packages/apps/Settings vendor/cm system/vold
                packages/providers/DownloadProvider)

for i in ${arr[@]}; do
cd $HOME/android/system/$i
git merge $STR; echo $STR: $i
done

echo Done.
exit 0

# packages/services/Telephony development frameworks/webview packages/inputmethods/LatinIME
# hardware/libhardware_legacy packages/apps/Gallery2 system/core
# packages/providers/TelephonyProvider packages/apps/Mms
# hardware/qcom/media hardware/qcom/wlan hardware/qcom/media-caf packages/apps/Torch
# packages/apps/Camera2 bionic dalvik external/chromium_org frameworks/av
# packages/apps/Contacts packages/apps/Dialer packages/apps/InCallUI packages/apps/ContactsCommon packages/providers/MediaProvider
