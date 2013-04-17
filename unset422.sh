#!/bin/sh

cd ~/android/system/device/common
git merge --abort
echo "Unmerged gps patch.\n"

# cd ~/android/system/external/wpa_supplicant_8
# git merge --abort
# echo "Unmerged wep fix.\n"

cd ~/android/system/frameworks/native
git merge --abort
echo "Unmerged camera fix.\n"

cd ~/android/system/frameworks/av
git merge --abort
echo "Unmerged av fix.\n"

echo "Done."
