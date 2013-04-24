#!/bin/bash

SRC="$HOME/android/system/out/target/product/ancora_tmo/obj/KERNEL_OBJ"
DST="$HOME/android/system/device/samsung/ancora_tmo"

declare -a ard=(drivers/net/wireless/bcmdhd arch/arm/boot fs/cifs drivers/scsi)
declare -a arf=(dhd.ko zImage cifs.ko scsi_wait_scan.ko)

ct=0
for i in ${ard[@]}; do
	cp -vufp $SRC/$i/${arf[$ct]} $DST/prebuilt/${arf[$ct]}
	((ct++))
done

cd $DST
git add . && git commit -m "Update prebuilts"

echo "Done!"
