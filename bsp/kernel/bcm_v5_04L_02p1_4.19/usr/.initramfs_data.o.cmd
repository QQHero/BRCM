cmd_usr/initramfs_data.o := /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin/arm-buildroot-linux-gnueabi-gcc -Wp,-MD,usr/.initramfs_data.o.d  -nostdinc -isystem /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/bin/../lib/gcc/arm-buildroot-linux-gnueabi/9.2.0/include -I./arch/arm/include -I./arch/arm/include/generated  -I./include -I./bcmkernel/include -I./arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -Ibcmdrivers/opensource/include/bcm963xx/ -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmkernel/include -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/shared/opensource/include/bcm963xx -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmkernel/include/uapi -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/net/bridge -D__KERNEL__ -mlittle-endian -D__ASSEMBLY__ -fno-PIE -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -msoft-float -DINITRAMFS_IMAGE="usr/initramfs_data.cpio"   -c -o usr/initramfs_data.o usr/initramfs_data.S

source_usr/initramfs_data.o := usr/initramfs_data.S

deps_usr/initramfs_data.o := \
    $(wildcard include/config/64bit.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  arch/arm/include/asm/unified.h \
    $(wildcard include/config/cpu/v7m.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/linux/stringify.h \
  include/asm-generic/vmlinux.lds.h \
    $(wildcard include/config/ld/dead/code/data/elimination.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/kprobes.h) \
    $(wildcard include/config/function/error/injection.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/syscalls.h) \
    $(wildcard include/config/bpf/events.h) \
    $(wildcard include/config/serial/earlycon.h) \
    $(wildcard include/config/timer/of.h) \
    $(wildcard include/config/irqchip.h) \
    $(wildcard include/config/common/clk.h) \
    $(wildcard include/config/of/reserved/mem.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/idle.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/unwinder/orc.h) \
    $(wildcard include/config/pm/trace.h) \
    $(wildcard include/config/blk/dev/initrd.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \

usr/initramfs_data.o: $(deps_usr/initramfs_data.o)

$(deps_usr/initramfs_data.o):
