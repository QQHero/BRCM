cmd_kernel/locking/built-in.a := rm -f kernel/locking/built-in.a; /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin/arm-buildroot-linux-gnueabi-ar rcSTPD kernel/locking/built-in.a kernel/locking/mutex.o kernel/locking/semaphore.o kernel/locking/rwsem.o kernel/locking/percpu-rwsem.o kernel/locking/spinlock.o kernel/locking/osq_lock.o kernel/locking/rtmutex.o kernel/locking/rwsem-xadd.o
