cmd_bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm.o := /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin/arm-buildroot-linux-gnueabi-gcc -Wp,-MD,bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/.d11shm.o.d  -nostdinc -isystem /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/bin/../lib/gcc/arm-buildroot-linux-gnueabi/9.2.0/include -I./arch/arm/include -I./arch/arm/include/generated  -I./include -I./bcmkernel/include -I./arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -Ibcmdrivers/opensource/include/bcm963xx/ -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmkernel/include -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/shared/opensource/include/bcm963xx -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmkernel/include/uapi -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/net/bridge -include ./include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Werror=return-type -Wno-format-security -std=gnu89 -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -O2 --param=allow-store-data-races=0 -Wframe-larger-than=2048 -fstack-protector-strong -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -Wno-stringop-truncation -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=./= -Wno-packed-not-aligned -DBCA_HNDROUTER -DBCA_CPEROUTER -Wno-array-bounds -Wno-maybe-uninitialized -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/bcmdrv/include -DBCMDRIVER -Dlinux -DBCA_HNDROUTER -Wno-error=date-time @bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//wlflags.tmp -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/wl/td_proc/ -DTD_PRIVATE_IE -DBCM -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/wl/td_privite_ie/include -DTD_STEER -DBROADCOM -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/wl/td_multiap_steer -DBRCM_CHIP=6756  -DMODULE  -DKBUILD_BASENAME='"d11shm"' -DKBUILD_MODNAME='"wl"' -c -o bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm.o bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm.c

source_bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm.o := bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm.c

deps_bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm.o := \
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
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/impl87/main/src/include/typedefs.h \
  include/generated/uapi/linux/version.h \
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
  include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  include/linux/compiler_types.h \
  arch/arm/include/uapi/asm/posix_types.h \
  include/uapi/asm-generic/posix_types.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/impl87/main/src/include/bcmdefs.h \
    $(wildcard include/config/bcm963178.h) \
    $(wildcard include/config/bcm947622.h) \
  bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm_declarations.h \
  bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm_structs_decl.h \
  bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm_func_decl.h \

bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm.o: $(deps_bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm.o)

$(deps_bcmdrivers/broadcom/net/wl/bcm96756/main/components/router/hnd_wl//../../../../main/src/wl/d11shm.o):
