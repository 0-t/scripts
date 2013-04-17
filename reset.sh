#!/bin/sh

cd ~/android/system/hardware/qcom/audio
git merge --no-commit --no-ff jelly

cd ~/android/system/system/core
git merge --no-commit --no-ff jelly

cd ~/android/system/device/common
git merge --no-commit --no-ff jelly

cd ~/android/system/external/wpa_supplicant_8
git merge --no-commit --no-ff jelly

cd ~/android/system/hardware/qcom/display
git merge --no-commit --no-ff jelly

cd ~/android/system/frameworks/base
git merge --no-commit --no-ff jelly

cd ~/android/system/frameworks/av
git merge --no-commit --no-ff jelly

cd ~/android/system/frameworks/native
git merge --no-commit --no-ff jelly

echo "done"
