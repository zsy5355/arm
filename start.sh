qemu-system-arm -M vexpress-a9 -m 512M -dtb vexpress-v2p-ca9.dtb -kernel zImage -nographic -append "root=/dev/mmcblk0 rw console=ttyAMA0 init =/linuxrc" -sd rootfs.ext3
