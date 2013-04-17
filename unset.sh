#!/bin/sh

cd ~/android/system/hardware/qcom/audio
git merge --abort
echo "Unmerged audio patch.\n"

cd ~/android/system/system/core
git merge --abort
echo "Unmerged core power-patch.\n"

cd ~/android/system/device/common
git merge --abort
echo "Unmerged gps patch.\n"

cd ~/android/system/external/wpa_supplicant_8
git merge --abort
echo "Unmerged wep fix.\n"

cd ~/android/system/hardware/qcom/display
git merge --abort
echo "Unmerged display patch.\n"

cd ~/android/system/frameworks/base
git merge --abort
echo "Unmerged phone patch.\n"

cd ~/android/system/frameworks/av
git merge --abort
echo "Unmerged av patch.\n"

cd ~/android/system/frameworks/native
git merge --abort
echo "Unmerged native patch.\n"

# cd ~/android/system/prebuilts
# git merge --no-commit --no-ff jellybean

echo "done"

