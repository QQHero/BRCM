cmd_ipc/built-in.a := rm -f ipc/built-in.a; /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin/arm-buildroot-linux-gnueabi-ar rcSTPD ipc/built-in.a ipc/util.o ipc/msgutil.o ipc/msg.o ipc/sem.o ipc/shm.o ipc/syscall.o ipc/ipc_sysctl.o ipc/mqueue.o ipc/mq_sysctl.o