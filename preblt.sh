#!/bin/sh

# cp -rfp ~/android/system/out/target/product/ancora_tmo/obj/KERNEL_OBJ/drivers/net/wireless/bcm4329/dhd.ko ~/android/system/device/samsung/ancora_tmo/prebuilt/dhd.ko

cp -vrfp ~/android/system/out/target/product/ancora_tmo/obj/KERNEL_OBJ/drivers/net/wireless/bcmdhd/dhd.ko ~/android/system/device/samsung/ancora_tmo/prebuilt/dhd.ko

cp -vrfp ~/android/system/out/target/product/ancora_tmo/obj/KERNEL_OBJ/arch/arm/boot/zImage ~/android/system/device/samsung/ancora_tmo/prebuilt/zImage

cp -vrfp ~/android/system/out/target/product/ancora_tmo/obj/KERNEL_OBJ/fs/cifs/cifs.ko ~/android/system/device/samsung/ancora_tmo/prebuilt/cifs.ko

# cp -vrfp ~/android/system/out/target/product/ancora_tmo/obj/KERNEL_OBJ/drivers/scsi/scsi_wait_scan.ko ~/android/system/device/samsung/ancora_tmo/prebuilt/scsi_wait_scan.ko

cd ~/android/system/device/samsung/ancora_tmo
git add . && git commit -m "Update prebuilts"

echo "Done!"

