cmd_certs/built-in.a := rm -f certs/built-in.a; /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin/arm-buildroot-linux-gnueabi-ar rcSTPD certs/built-in.a certs/system_keyring.o certs/system_certificates.o