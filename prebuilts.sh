#!/bin/bash

SRC="$HOME/android/system/out/target/product/ancora_tmo"
DST="$HOME/android/system/device/samsung/ancora_tmo/prebuilt/"

cp -vfp $SRC/system/lib/modules/* $DST
cp -vfp $SRC/obj/KERNEL_OBJ/arch/arm/boot/zImage $DST

cd $DST
git add . && git commit -m "Update prebuilts"

echo "Done!"
