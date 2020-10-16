setenv bootargs fbcon=map:10  fbcon=font:MINI4x6 console=ttyS0,115200 panic=5 rootwait root=/dev/mmcblk0p2 rw 
load mmc 0:1 0x2200000 RK3368_linux.dtb
load mmc 0:1 0x200000 Image
booti 0x200000 - 0x2200000
