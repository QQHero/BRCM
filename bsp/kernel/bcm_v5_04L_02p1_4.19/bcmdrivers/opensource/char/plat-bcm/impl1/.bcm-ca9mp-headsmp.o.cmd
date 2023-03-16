cmd_bcmdrivers/opensource/char/plat-bcm/bcm96756/bcm-ca9mp-headsmp.o := /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin/arm-buildroot-linux-gnueabi-gcc -Wp,-MD,bcmdrivers/opensource/char/plat-bcm/bcm96756/.bcm-ca9mp-headsmp.o.d  -nostdinc -isystem /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/bin/../lib/gcc/arm-buildroot-linux-gnueabi/9.2.0/include -I./arch/arm/include -I./arch/arm/include/generated  -I./include -I./bcmkernel/include -I./arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -Ibcmdrivers/opensource/include/bcm963xx/ -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmkernel/include -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/shared/opensource/include/bcm963xx -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmkernel/include/uapi -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/net/bridge -D__KERNEL__ -mlittle-endian -D__ASSEMBLY__ -fno-PIE -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -msoft-float   -c -o bcmdrivers/opensource/char/plat-bcm/bcm96756/bcm-ca9mp-headsmp.o bcmdrivers/opensource/char/plat-bcm/bcm96756/bcm-ca9mp-headsmp.S

source_bcmdrivers/opensource/char/plat-bcm/bcm96756/bcm-ca9mp-headsmp.o := bcmdrivers/opensource/char/plat-bcm/bcm96756/bcm-ca9mp-headsmp.S

deps_bcmdrivers/opensource/char/plat-bcm/bcm96756/bcm-ca9mp-headsmp.o := \
    $(wildcard include/config/bcm/kf/arm/bcm963xx.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  arch/arm/include/asm/unified.h \
    $(wildcard include/config/cpu/v7m.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/linux/linkage.h \
  include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  arch/arm/include/asm/linkage.h \
  include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/debug/entry.h) \
    $(wildcard include/config/kasan.h) \
  include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  arch/arm/include/uapi/asm/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/uapi/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  include/generated/uapi/linux/version.h \

bcmdrivers/opensource/char/plat-bcm/bcm96756/bcm-ca9mp-headsmp.o: $(deps_bcmdrivers/opensource/char/plat-bcm/bcm96756/bcm-ca9mp-headsmp.o)

$(deps_bcmdrivers/opensource/char/plat-bcm/bcm96756/bcm-ca9mp-headsmp.o):
