cmd_arch/arm/boot/Image := /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin/arm-buildroot-linux-gnueabi-objcopy -O binary -R .comment -S  vmlinux arch/arm/boot/Image