cmd_vmlinux := /bin/sh scripts/link-vmlinux.sh /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin/arm-buildroot-linux-gnueabi-ld  -EL -p --no-undefined -X --pic-veneer  --build-id -z max-page-size=0x8000 -Map vmlinux.map ;  true