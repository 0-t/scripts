#!/bin/sh

cd ~/android/system/device/common
git merge --no-commit --no-ff cm422

cd ~/android/system/frameworks/native
git merge --no-commit --no-ff cm422

cd ~/android/system/frameworks/av
git merge --no-commit --no-ff cm422

echo "done"
