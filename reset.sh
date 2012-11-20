#!/bin/sh

cd ~/android/system/hardware/qcom/audio
git merge --no-commit --no-ff audio-patch

cd ~/android/system/frameworks/base
git merge --no-commit --no-ff phone-patch

cd ~/android/system/frameworks/av
git merge --no-commit --no-ff pix-patch

cd ~/android/system/frameworks/native
git merge --no-commit --no-ff t-foto

# cd ~/android/system/frameworks/native
# git merge --no-commit --no-ff foto-patch

echo "done"
