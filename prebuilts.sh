#!/bin/bash

SRC="$HOME/android/system/out/target/product/ancora_tmo/"
MOD="system/lib/modules/*"
DST="$HOME/android/system/device/samsung/ancora_tmo/prebuilt/"

IMG="$SRC/obj/KERNEL_OBJ/arch/arm/boot/zImage"

cp -vfp $SRC/$MOD $DST
cp -vfp $IMG $DST

echo "Done!"
