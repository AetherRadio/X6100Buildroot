echo "--- Booting X6100 ---"
setenv bootargs console=ttyS0,115200 root=/dev/mmcblk0p2 rootwait panic=10 fbcon=rotate:3 video=VGA:480x800
fatload mmc 0:1 0x46000000 zImage
fatload mmc 0:1 0x49000000 ${fdtfile}
clrlogo
bootz 0x46000000 - 0x49000000
