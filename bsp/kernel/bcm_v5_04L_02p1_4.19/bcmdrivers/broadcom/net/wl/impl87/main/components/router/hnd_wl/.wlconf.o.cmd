cmd_bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//wlconf.o := /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin/arm-buildroot-linux-gnueabi-gcc -Wp,-MD,bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//.wlconf.o.d -nostdinc -isystem /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/bin/../lib/gcc/arm-buildroot-linux-gnueabi/9.2.0/include -I./arch/arm/include -I./arch/arm/include/generated  -I./include -I./bcmkernel/include -I./arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -Ibcmdrivers/opensource/include/bcm963xx/ -I/home/startlab/Broadcom/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmkernel/include -I/home/startlab/Broadcom/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/shared/opensource/include/bcm963xx -I/home/startlab/Broadcom/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmkernel/include/uapi -I/home/startlab/Broadcom/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/net/bridge -include ./include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Werror=return-type -Wno-format-security -std=gnu89 -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -O2 --param=allow-store-data-races=0 -Wframe-larger-than=2048 -fstack-protector-strong -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -Wno-stringop-truncation -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=./= -Wno-packed-not-aligned -DBCA_HNDROUTER -DBCA_CPEROUTER -Wno-array-bounds -Wno-maybe-uninitialized -I/home/startlab/Broadcom/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/bcmdrv/include -DBCMDRIVER -Dlinux -DBCA_HNDROUTER -Wno-error=date-time @bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//wlflags.tmp -I/home/startlab/Broadcom/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/wl/td_proc/ -DTD_PRIVATE_IE -DBCM -I/home/startlab/Broadcom/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/wl/td_privite_ie/include -DTD_STEER -DBROADCOM -I/home/startlab/Broadcom/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/wl/td_multiap_steer -DBRCM_CHIP=6756  -DMODULE  -DKBUILD_BASENAME='"wlconf"' -DKBUILD_MODNAME='"wl"' -c -o bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//wlconf.o bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//wlconf.c

source_bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//wlconf.o := bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//wlconf.c

deps_bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//wlconf.o := \
  include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl/wlconf.h \

bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//wlconf.o: $(deps_bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//wlconf.o)

$(deps_bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//wlconf.o):
