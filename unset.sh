#!/bin/sh

cd ~/android/system/hardware/qcom/audio
git merge --abort
echo "Unmerged audio-patch.\n"

cd ~/android/system/frameworks/base
git merge --abort
echo "Unmerged phone-patch.\n"

cd ~/android/system/frameworks/av
git merge --abort
echo "Unmerged pix-patch.\n"

cd ~/android/system/frameworks/native
git merge --abort
echo "Unmerged t-patch.\n"

# cd ~/android/system/frameworks/native
# git merge --abort
# echo "Unmerged foto-patch.\n"

echo "done"

