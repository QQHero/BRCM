cmd_bcmdrivers/broadcom/net/wl/shared/impl1//wl_br_d3lut.o := /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin/arm-buildroot-linux-gnueabi-gcc -Wp,-MD,bcmdrivers/broadcom/net/wl/shared/impl1//.wl_br_d3lut.o.d  -nostdinc -isystem /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/bin/../lib/gcc/arm-buildroot-linux-gnueabi/9.2.0/include -I./arch/arm/include -I./arch/arm/include/generated  -I./include -I./bcmkernel/include -I./arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -Ibcmdrivers/opensource/include/bcm963xx/ -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmkernel/include -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/shared/opensource/include/bcm963xx -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmkernel/include/uapi -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/net/bridge -include ./include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Werror=return-type -Wno-format-security -std=gnu89 -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -O2 --param=allow-store-data-races=0 -Wframe-larger-than=2048 -fstack-protector-strong -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -Wno-stringop-truncation -Wno-array-bounds -Wno-stringop-overflow -Wno-restrict -Wno-maybe-uninitialized -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=./= -Wno-packed-not-aligned -DBCA_HNDROUTER -DBCA_CPEROUTER -Wno-array-bounds -Wno-maybe-uninitialized -DBCMDRIVER -DBCM_NBUFF_WLMCAST -DBCM_NBUFF_WLMCAST_IPV6 -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/opensource/include/bcm963xx -DBCM_WMF_MCAST_DBG -DWLBIN_COMPAT -DBCM_DHD_DNGL_FFRD -DBCM_DHD_DNGL_MAXIFS -DBCM_DHD_LOCK -DAWL_TX_DPC -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/shared/impl1 -DBCA_CPE_BSP_SHARED -DBCA_SROMMAP -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/shared/impl1 -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/include/linux -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/net/bridge -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include -I/Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/include/bcm963xx -DPKTC -DPKTC_TBL -DBCM_BLOG -DBCM_PKTFWD  -DMODULE  -DKBUILD_BASENAME='"wl_br_d3lut"' -DKBUILD_MODNAME='"wlshared"' -c -o bcmdrivers/broadcom/net/wl/shared/impl1//wl_br_d3lut.o bcmdrivers/broadcom/net/wl/shared/impl1//wl_br_d3lut.c

source_bcmdrivers/broadcom/net/wl/shared/impl1//wl_br_d3lut.o := bcmdrivers/broadcom/net/wl/shared/impl1//wl_br_d3lut.c

deps_bcmdrivers/broadcom/net/wl/shared/impl1//wl_br_d3lut.o := \
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
  include/generated/uapi/linux/version.h \
  include/linux/netdevice.h \
    $(wildcard include/config/dcb.h) \
    $(wildcard include/config/bcm/kf/netdev/ext.h) \
    $(wildcard include/config/hyperv/net.h) \
    $(wildcard include/config/wlan.h) \
    $(wildcard include/config/ax25.h) \
    $(wildcard include/config/mac80211/mesh.h) \
    $(wildcard include/config/net/ipip.h) \
    $(wildcard include/config/net/ipgre.h) \
    $(wildcard include/config/ipv6/sit.h) \
    $(wildcard include/config/ipv6/tunnel.h) \
    $(wildcard include/config/bcm/kf/extstats.h) \
    $(wildcard include/config/rps.h) \
    $(wildcard include/config/netpoll.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/xps.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/bql.h) \
    $(wildcard include/config/sysctl.h) \
    $(wildcard include/config/rfs/accel.h) \
    $(wildcard include/config/fcoe.h) \
    $(wildcard include/config/xfrm/offload.h) \
    $(wildcard include/config/tls/device.h) \
    $(wildcard include/config/net/poll/controller.h) \
    $(wildcard include/config/libfcoe.h) \
    $(wildcard include/config/wireless/ext.h) \
    $(wildcard include/config/net/switchdev.h) \
    $(wildcard include/config/net/l3/master/dev.h) \
    $(wildcard include/config/ipv6.h) \
    $(wildcard include/config/vlan/8021q.h) \
    $(wildcard include/config/net/dsa.h) \
    $(wildcard include/config/tipc.h) \
    $(wildcard include/config/irda.h) \
    $(wildcard include/config/atalk.h) \
    $(wildcard include/config/decnet.h) \
    $(wildcard include/config/mpls/routing.h) \
    $(wildcard include/config/net/cls/act.h) \
    $(wildcard include/config/netfilter/ingress.h) \
    $(wildcard include/config/net/sched.h) \
    $(wildcard include/config/garp.h) \
    $(wildcard include/config/mrp.h) \
    $(wildcard include/config/cgroup/net/prio.h) \
    $(wildcard include/config/net/flow/limit.h) \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/timer.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
    $(wildcard include/config/hotplug/cpu.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
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
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  include/linux/const.h \
  include/uapi/linux/const.h \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/lib/gcc/arm-buildroot-linux-gnueabi/9.2.0/include/stdarg.h \
  include/linux/linkage.h \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  arch/arm/include/asm/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/debug/entry.h) \
    $(wildcard include/config/kasan.h) \
  arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arm/heavy/mb.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/cpu/spectre.h) \
  include/asm-generic/barrier.h \
  include/linux/kasan-checks.h \
  include/linux/bitops.h \
  include/linux/bits.h \
  arch/arm/include/asm/bitops.h \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  include/linux/typecheck.h \
  arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/cpu/v7m.h) \
  arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  arch/arm/include/asm/hwcap.h \
  arch/arm/include/uapi/asm/hwcap.h \
  include/asm-generic/irqflags.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/builtin-__fls.h \
  include/asm-generic/bitops/builtin-__ffs.h \
  include/asm-generic/bitops/builtin-fls.h \
  include/asm-generic/bitops/builtin-ffs.h \
  include/asm-generic/bitops/ffz.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/lock.h \
  include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  arch/arm/include/asm/atomic.h \
    $(wildcard include/config/arm/lpae.h) \
  include/linux/prefetch.h \
  arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/binfmt/elf/fdpic.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  arch/arm/include/asm/hw_breakpoint.h \
  arch/arm/include/asm/unified.h \
  arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/atomic-long.h \
  include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  include/asm-generic/bitops/le.h \
  arch/arm/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  arch/arm/include/asm/swab.h \
  arch/arm/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/quiet.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
  include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  include/linux/kern_levels.h \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  include/uapi/linux/kernel.h \
  include/uapi/linux/sysinfo.h \
  include/linux/build_bug.h \
  include/linux/ktime.h \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/seqlock.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/preempt.h) \
  include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/trace/preempt/toggle.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  arch/arm/include/generated/asm/preempt.h \
  include/asm-generic/preempt.h \
  include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  arch/arm/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  include/linux/restart_block.h \
  include/linux/time64.h \
    $(wildcard include/config/64bit/time.h) \
  include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  arch/arm/include/asm/div64.h \
  arch/arm/include/asm/compiler.h \
  include/asm-generic/div64.h \
  include/uapi/linux/time.h \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  arch/arm/include/generated/uapi/asm/errno.h \
  include/uapi/asm-generic/errno.h \
  include/uapi/asm-generic/errno-base.h \
  arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/bcm/kf/arm/kasan.h) \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  arch/arm/include/asm/glue.h \
  arch/arm/include/asm/pgtable-2level-types.h \
  arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/xip/kernel.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/xip/phys/addr.h) \
    $(wildcard include/config/debug/virtual.h) \
  include/linux/sizes.h \
  arch/arm/include/asm/kasan_def.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/linux/pfn.h \
  include/asm-generic/getorder.h \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  arch/arm/include/asm/spinlock_types.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lock/stat.h) \
  include/linux/rwlock_types.h \
  arch/arm/include/asm/spinlock.h \
    $(wildcard include/config/bcm/kf/arm/bcm963xx.h) \
    $(wildcard include/config/bcm/b15/mega/barrier.h) \
  include/linux/rwlock.h \
  include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
    $(wildcard include/config/generic/lockbreak.h) \
  include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  include/linux/time32.h \
  include/linux/jiffies.h \
  include/linux/timex.h \
  include/uapi/linux/timex.h \
  include/uapi/linux/param.h \
  arch/arm/include/generated/uapi/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/uapi/asm-generic/param.h \
  arch/arm/include/asm/timex.h \
  include/generated/timeconst.h \
  include/linux/timekeeping.h \
  include/linux/timekeeping32.h \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/delay.h \
  arch/arm/include/asm/delay.h \
  include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/bitmap.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  include/uapi/linux/string.h \
  arch/arm/include/asm/string.h \
  include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  arch/arm/include/asm/smp.h \
  arch/arm/include/asm/percpu.h \
  include/asm-generic/percpu.h \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  include/linux/rculist.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/arch/weak/release/acquire.h) \
  include/linux/rcutree.h \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/wq/watchdog.h) \
  include/linux/dynamic_queue_limits.h \
  include/linux/ethtool.h \
    $(wildcard include/config/compat.h) \
  include/linux/compat.h \
    $(wildcard include/config/arch/has/syscall/wrapper.h) \
    $(wildcard include/config/x86/x32/abi.h) \
    $(wildcard include/config/compat/old/sigaction.h) \
    $(wildcard include/config/odd/rt/sigaction.h) \
  include/linux/compat_time.h \
  include/linux/stat.h \
  arch/arm/include/uapi/asm/stat.h \
  include/uapi/linux/stat.h \
  include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  include/linux/highuid.h \
  include/linux/sem.h \
    $(wildcard include/config/sysvipc.h) \
  include/uapi/linux/sem.h \
  include/linux/ipc.h \
  include/linux/rhashtable-types.h \
  include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/mutexes.h) \
  arch/arm/include/generated/asm/current.h \
  include/asm-generic/current.h \
  include/linux/osq_lock.h \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/uapi/linux/ipc.h \
  arch/arm/include/generated/uapi/asm/ipcbuf.h \
  include/uapi/asm-generic/ipcbuf.h \
  include/linux/refcount.h \
    $(wildcard include/config/refcount/full.h) \
  arch/arm/include/generated/uapi/asm/sembuf.h \
  include/uapi/asm-generic/sembuf.h \
  include/linux/socket.h \
  arch/arm/include/generated/uapi/asm/socket.h \
  include/uapi/asm-generic/socket.h \
  arch/arm/include/generated/uapi/asm/sockios.h \
  include/uapi/asm-generic/sockios.h \
  include/uapi/linux/sockios.h \
    $(wildcard include/config/tenda/private/bsp.h) \
    $(wildcard include/config/switch/bcm.h) \
  include/linux/uio.h \
    $(wildcard include/config/arch/has/uaccess/flushcache.h) \
    $(wildcard include/config/arch/has/uaccess/mcsafe.h) \
  include/uapi/linux/uio.h \
  include/uapi/linux/socket.h \
  include/uapi/linux/if.h \
    $(wildcard include/config/bcm/kf/mptcp.h) \
    $(wildcard include/config/bcm/mptcp.h) \
    $(wildcard include/config/bcm/in/kernel.h) \
  include/uapi/linux/libc-compat.h \
  include/uapi/linux/hdlc/ioctl.h \
  include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/cgroup/writeback.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/fs/encryption.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fs/dax.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/mandatory/file/locking.h) \
    $(wildcard include/config/migration.h) \
  include/linux/wait_bit.h \
  include/linux/wait.h \
  include/uapi/linux/wait.h \
  include/linux/kdev_t.h \
  include/uapi/linux/kdev_t.h \
  include/linux/dcache.h \
  include/linux/rculist_bl.h \
  include/linux/list_bl.h \
  include/linux/bit_spinlock.h \
  include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  include/generated/bounds.h \
  include/linux/stringhash.h \
    $(wildcard include/config/dcache/word/access.h) \
  include/linux/hash.h \
    $(wildcard include/config/have/arch/hash.h) \
  include/linux/path.h \
  include/linux/list_lru.h \
    $(wildcard include/config/memcg/kmem.h) \
  include/linux/nodemask.h \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/shrinker.h \
  include/linux/radix-tree.h \
    $(wildcard include/config/radix/tree/multiorder.h) \
  include/linux/xarray.h \
  include/linux/rbtree.h \
  include/linux/pid.h \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/linux/err.h \
  arch/arm/include/generated/asm/rwsem.h \
  include/asm-generic/rwsem.h \
  include/linux/mm_types.h \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/have/arch/compat/mmap/bases.h) \
    $(wildcard include/config/membarrier.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hmm.h) \
  include/linux/mm_types_task.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
  include/linux/auxvec.h \
  include/uapi/linux/auxvec.h \
  arch/arm/include/asm/auxvec.h \
  arch/arm/include/uapi/asm/auxvec.h \
  include/linux/completion.h \
  include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  include/linux/page-flags-layout.h \
  arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
    $(wildcard include/config/vdso.h) \
  include/linux/capability.h \
  include/uapi/linux/capability.h \
  include/linux/semaphore.h \
  include/linux/fcntl.h \
  include/uapi/linux/fcntl.h \
  arch/arm/include/uapi/asm/fcntl.h \
  include/uapi/asm-generic/fcntl.h \
  include/uapi/linux/fiemap.h \
  include/linux/migrate_mode.h \
  include/linux/percpu-rwsem.h \
  include/linux/rcuwait.h \
  include/linux/rcu_sync.h \
  include/linux/delayed_call.h \
  include/linux/uuid.h \
  include/uapi/linux/uuid.h \
  include/linux/errseq.h \
  include/linux/ioprio.h \
  include/linux/sched.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/sched/info.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/bcm/kf/cpu/affinity/hint.h) \
    $(wildcard include/config/bcm/proc/cpu/affinity/hint.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/stackprotector.h) \
    $(wildcard include/config/arch/has/scaled/cputime.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/posix/timers.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/ubsan.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/intel/rdt.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/rseq.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/kcov.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/arch/task/struct/on/stack.h) \
    $(wildcard include/config/debug/rseq.h) \
  include/uapi/linux/sched.h \
  include/linux/shm.h \
  include/uapi/linux/shm.h \
  include/uapi/asm-generic/hugetlb_encode.h \
  arch/arm/include/generated/uapi/asm/shmbuf.h \
  include/uapi/asm-generic/shmbuf.h \
  arch/arm/include/asm/shmparam.h \
  include/linux/kcov.h \
  include/uapi/linux/kcov.h \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  include/linux/timerqueue.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  include/uapi/linux/seccomp.h \
  include/linux/resource.h \
  include/uapi/linux/resource.h \
  arch/arm/include/generated/uapi/asm/resource.h \
  include/asm-generic/resource.h \
  include/uapi/asm-generic/resource.h \
  include/linux/latencytop.h \
  include/linux/sched/prio.h \
  include/linux/signal_types.h \
    $(wildcard include/config/old/sigaction.h) \
  include/uapi/linux/signal.h \
  arch/arm/include/asm/signal.h \
  arch/arm/include/uapi/asm/signal.h \
  include/uapi/asm-generic/signal-defs.h \
  arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/uapi/asm/siginfo.h \
  include/uapi/asm-generic/siginfo.h \
  include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  include/uapi/linux/rseq.h \
  include/linux/sched/rt.h \
  include/linux/iocontext.h \
  include/uapi/linux/fs.h \
  include/uapi/linux/limits.h \
  include/uapi/linux/ioctl.h \
  arch/arm/include/generated/uapi/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/uapi/asm-generic/ioctl.h \
  include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  include/linux/percpu_counter.h \
  include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/cma.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/arch/has/add/pages.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  include/linux/notifier.h \
    $(wildcard include/config/tree/srcu.h) \
  include/linux/srcu.h \
    $(wildcard include/config/tiny/srcu.h) \
    $(wildcard include/config/srcu.h) \
  include/linux/rcu_segcblist.h \
  include/linux/srcutree.h \
  include/linux/rcu_node_tree.h \
    $(wildcard include/config/rcu/fanout.h) \
    $(wildcard include/config/rcu/fanout/leaf.h) \
  include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  include/asm-generic/topology.h \
  include/uapi/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/dqblk_qtree.h \
  include/linux/projid.h \
  include/uapi/linux/quota.h \
  include/linux/nfs_fs_i.h \
  include/uapi/linux/aio_abi.h \
  include/linux/uaccess.h \
  arch/arm/include/asm/uaccess.h \
    $(wildcard include/config/cpu/sw/domain/pan.h) \
    $(wildcard include/config/cpu/use/domains.h) \
    $(wildcard include/config/uaccess/with/memcpy.h) \
  arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/cp15/mmu.h) \
  arch/arm/include/generated/asm/extable.h \
  include/asm-generic/extable.h \
  include/uapi/linux/unistd.h \
  arch/arm/include/asm/unistd.h \
    $(wildcard include/config/oabi/compat.h) \
  arch/arm/include/uapi/asm/unistd.h \
  arch/arm/include/generated/uapi/asm/unistd-eabi.h \
  arch/arm/include/generated/uapi/asm/unistd-common.h \
  arch/arm/include/generated/asm/unistd-nr.h \
  arch/arm/include/generated/asm/compat.h \
  include/asm-generic/compat.h \
  include/uapi/linux/ethtool.h \
  include/linux/if_ether.h \
  include/linux/skbuff.h \
    $(wildcard include/config/nf/conntrack.h) \
    $(wildcard include/config/bridge/netfilter.h) \
    $(wildcard include/config/bcm/kf/skb/ext.h) \
    $(wildcard include/config/bcm/kf/nbuff.h) \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/ipv6/ndisc/nodetype.h) \
    $(wildcard include/config/net/rx/busy/poll.h) \
    $(wildcard include/config/network/secmark.h) \
    $(wildcard include/config/have/efficient/unaligned/access.h) \
    $(wildcard include/config/network/phy/timestamping.h) \
    $(wildcard include/config/netfilter/xt/target/trace.h) \
    $(wildcard include/config/nf/tables.h) \
    $(wildcard include/config/ip/vs.h) \
  include/linux/net.h \
  include/linux/random.h \
    $(wildcard include/config/gcc/plugin/latent/entropy.h) \
    $(wildcard include/config/arch/random.h) \
  include/linux/once.h \
  include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  include/uapi/linux/random.h \
  include/linux/irqnr.h \
  include/uapi/linux/irqnr.h \
  include/linux/prandom.h \
  include/uapi/linux/net.h \
  include/linux/textsearch.h \
  include/linux/slab.h \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/have/hardened/usercopy/allocator.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/slob.h) \
  include/linux/overflow.h \
  include/linux/kasan.h \
  include/net/checksum.h \
  arch/arm/include/asm/checksum.h \
  include/linux/in6.h \
  include/uapi/linux/in6.h \
  include/linux/dma-mapping.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/arch/has/dma/set/coherent/mask.h) \
    $(wildcard include/config/need/dma/map/state.h) \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  include/linux/ioport.h \
  include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  include/linux/sysfs.h \
  include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  include/linux/idr.h \
  include/linux/kobject_ns.h \
  include/linux/kref.h \
  include/linux/klist.h \
  include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  include/linux/ratelimit.h \
  arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/arch/omap.h) \
  include/linux/pm_wakeup.h \
  include/linux/dma-debug.h \
    $(wildcard include/config/dma/api/debug.h) \
  include/linux/dma-direction.h \
  include/linux/scatterlist.h \
    $(wildcard include/config/need/sg/dma/length.h) \
    $(wildcard include/config/debug/sg.h) \
    $(wildcard include/config/sgl/alloc.h) \
    $(wildcard include/config/arch/has/sg/chain.h) \
    $(wildcard include/config/sg/pool.h) \
  include/linux/mm.h \
    $(wildcard include/config/have/arch/mmap/rnd/bits.h) \
    $(wildcard include/config/have/arch/mmap/rnd/compat/bits.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/arch/uses/high/vma/flags.h) \
    $(wildcard include/config/arch/has/pkeys.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/sparc64.h) \
    $(wildcard include/config/x86/intel/mpx.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/dev/pagemap/ops.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/have/memblock.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  include/linux/range.h \
  include/linux/percpu-refcount.h \
  include/linux/page_ext.h \
    $(wildcard include/config/idle/page/tracking.h) \
  include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
    $(wildcard include/config/user/stacktrace/support.h) \
  include/linux/stackdepot.h \
  include/linux/page_ref.h \
    $(wildcard include/config/debug/page/ref.h) \
  include/linux/page-flags.h \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/thp/swap.h) \
    $(wildcard include/config/ksm.h) \
  include/linux/tracepoint-defs.h \
  include/linux/static_key.h \
  include/linux/memremap.h \
  arch/arm/include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  arch/arm/include/asm/proc-fns.h \
    $(wildcard include/config/big/little.h) \
    $(wildcard include/config/harden/branch/predictor.h) \
  arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/pj4b.h) \
    $(wildcard include/config/cpu/v7.h) \
  include/asm-generic/pgtable-nopud.h \
  include/asm-generic/pgtable-nop4d-hack.h \
  include/asm-generic/5level-fixup.h \
  arch/arm/include/asm/pgtable-hwdef.h \
  arch/arm/include/asm/pgtable-2level-hwdef.h \
  arch/arm/include/asm/tlbflush.h \
    $(wildcard include/config/smp/on/up.h) \
    $(wildcard include/config/cpu/tlb/v4wt.h) \
    $(wildcard include/config/cpu/tlb/fa.h) \
    $(wildcard include/config/cpu/tlb/v4wbi.h) \
    $(wildcard include/config/cpu/tlb/feroceon.h) \
    $(wildcard include/config/cpu/tlb/v4wb.h) \
    $(wildcard include/config/cpu/tlb/v6.h) \
    $(wildcard include/config/cpu/tlb/v7.h) \
    $(wildcard include/config/arm/errata/720789.h) \
    $(wildcard include/config/arm/errata/798181.h) \
  arch/arm/include/asm/pgtable-2level.h \
  include/asm-generic/pgtable.h \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/have/arch/transparent/hugepage/pud.h) \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/arch/enable/thp/migration.h) \
    $(wildcard include/config/have/arch/huge/vmap.h) \
    $(wildcard include/config/x86/espfix64.h) \
  include/linux/huge_mm.h \
  include/linux/sched/coredump.h \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
    $(wildcard include/config/debug/vm/vmacache.h) \
  include/linux/vm_event_item.h \
    $(wildcard include/config/memory/balloon.h) \
    $(wildcard include/config/balloon/compaction.h) \
  arch/arm/include/asm/io.h \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  include/xen/xen.h \
    $(wildcard include/config/xen/pvh.h) \
    $(wildcard include/config/xen/dom0.h) \
  include/asm-generic/io.h \
    $(wildcard include/config/generic/iomap.h) \
    $(wildcard include/config/has/ioport/map.h) \
    $(wildcard include/config/virt/to/bus.h) \
  include/linux/logic_pio.h \
    $(wildcard include/config/indirect/pio.h) \
  include/linux/fwnode.h \
  include/linux/vmalloc.h \
  include/linux/mem_encrypt.h \
    $(wildcard include/config/arch/has/mem/encrypt.h) \
  arch/arm/include/asm/dma-mapping.h \
  arch/arm/include/asm/xen/hypervisor.h \
  include/xen/arm/hypervisor.h \
  include/linux/netdev_features.h \
  include/linux/sched/clock.h \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  include/net/flow_dissector.h \
  include/linux/siphash.h \
  include/uapi/linux/if_ether.h \
  include/linux/splice.h \
  include/linux/pipe_fs_i.h \
  include/uapi/linux/if_packet.h \
  include/net/flow.h \
  bcmkernel/include/linux/bcm_skbuff.h \
    $(wildcard include/config/skbshinfo/has/dirtyp.h) \
    $(wildcard include/config/blog.h) \
    $(wildcard include/config/bcm/wlan.h) \
    $(wildcard include/config/bcm/usbnet/acceleration.h) \
    $(wildcard include/config/tenda/private/km.h) \
    $(wildcard include/config/km/cb/size.h) \
    $(wildcard include/config/sa/fastpath.h) \
    $(wildcard include/config/trace/skb/running/time.h) \
  include/net/net_namespace.h \
    $(wildcard include/config/mptcp.h) \
    $(wildcard include/config/ieee802154/6lowpan.h) \
    $(wildcard include/config/ip/sctp.h) \
    $(wildcard include/config/ip/dccp.h) \
    $(wildcard include/config/netfilter.h) \
    $(wildcard include/config/nf/defrag/ipv6.h) \
    $(wildcard include/config/netfilter/netlink/acct.h) \
    $(wildcard include/config/nf/ct/netlink/timeout.h) \
    $(wildcard include/config/wext/core.h) \
    $(wildcard include/config/mpls.h) \
    $(wildcard include/config/can.h) \
    $(wildcard include/config/net/ns.h) \
  include/linux/sysctl.h \
  include/uapi/linux/sysctl.h \
  include/net/netns/core.h \
  include/net/netns/mib.h \
    $(wildcard include/config/xfrm/statistics.h) \
  include/net/snmp.h \
  include/uapi/linux/snmp.h \
  include/linux/u64_stats_sync.h \
  include/net/netns/unix.h \
  include/net/netns/packet.h \
  include/net/netns/ipv4.h \
    $(wildcard include/config/ip/multiple/tables.h) \
    $(wildcard include/config/ip/route/classid.h) \
    $(wildcard include/config/ip/mroute.h) \
    $(wildcard include/config/ip/mroute/multiple/tables.h) \
    $(wildcard include/config/ip/route/multipath.h) \
  include/net/inet_frag.h \
  include/net/netns/ipv6.h \
    $(wildcard include/config/ipv6/multiple/tables.h) \
    $(wildcard include/config/ipv6/mroute.h) \
    $(wildcard include/config/ipv6/mroute/multiple/tables.h) \
  include/net/dst_ops.h \
  include/net/netns/mptcp.h \
  include/net/netns/ieee802154_6lowpan.h \
  include/net/netns/sctp.h \
  include/net/netns/dccp.h \
  include/net/netns/netfilter.h \
    $(wildcard include/config/netfilter/family/arp.h) \
    $(wildcard include/config/netfilter/family/bridge.h) \
    $(wildcard include/config/nf/defrag/ipv4.h) \
  include/linux/netfilter_defs.h \
  include/uapi/linux/netfilter.h \
  include/linux/in.h \
  include/uapi/linux/in.h \
  include/net/netns/x_tables.h \
    $(wildcard include/config/bridge/nf/ebtables.h) \
  include/net/netns/conntrack.h \
    $(wildcard include/config/nf/ct/proto/dccp.h) \
    $(wildcard include/config/nf/ct/proto/sctp.h) \
    $(wildcard include/config/nf/conntrack/events.h) \
    $(wildcard include/config/nf/conntrack/labels.h) \
  include/linux/list_nulls.h \
  include/linux/netfilter/nf_conntrack_tcp.h \
    $(wildcard include/config/behavior/manager.h) \
  include/uapi/linux/netfilter/nf_conntrack_tcp.h \
  include/linux/netfilter/nf_conntrack_sctp.h \
  include/uapi/linux/netfilter/nf_conntrack_sctp.h \
  include/uapi/linux/netfilter/nf_conntrack_tuple_common.h \
    $(wildcard include/config/bcm/kf/proto/esp.h) \
    $(wildcard include/config/nf/ct/proto/esp.h) \
  include/linux/netfilter/nf_conntrack_common.h \
  include/uapi/linux/netfilter/nf_conntrack_common.h \
    $(wildcard include/config/bcm/kf/netfilter.h) \
    $(wildcard include/config/bcm/kf/dpi.h) \
  include/net/netns/nftables.h \
  include/net/netns/xfrm.h \
  include/uapi/linux/xfrm.h \
  include/net/netns/mpls.h \
  include/net/netns/can.h \
  include/linux/ns_common.h \
  include/linux/seq_file_net.h \
  include/linux/seq_file.h \
  include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/keys.h) \
  include/linux/key.h \
  include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  include/linux/sched/user.h \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/bpf/syscall.h) \
    $(wildcard include/config/net.h) \
  include/linux/nsproxy.h \
  include/net/netprio_cgroup.h \
  include/linux/cgroup.h \
    $(wildcard include/config/cgroup/cpuacct.h) \
    $(wildcard include/config/sock/cgroup/data.h) \
    $(wildcard include/config/cgroup/net/classid.h) \
    $(wildcard include/config/cgroup/data.h) \
  include/uapi/linux/cgroupstats.h \
  include/uapi/linux/taskstats.h \
  include/linux/user_namespace.h \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/persistent/keyrings.h) \
  include/linux/kernel_stat.h \
  include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/irq/timings.h) \
  include/linux/irqreturn.h \
  include/linux/hardirq.h \
  include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
    $(wildcard include/config/hwlat/tracer.h) \
  include/linux/vtime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  include/linux/context_tracking_state.h \
    $(wildcard include/config/context/tracking.h) \
  arch/arm/include/asm/hardirq.h \
  arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
  include/linux/irq_cpustat.h \
  arch/arm/include/asm/sections.h \
  include/asm-generic/sections.h \
  include/linux/cgroup-defs.h \
  include/linux/bpf-cgroup.h \
    $(wildcard include/config/cgroup/bpf.h) \
  include/uapi/linux/bpf.h \
    $(wildcard include/config/efficient/unaligned/access.h) \
    $(wildcard include/config/bpf/kprobe/override.h) \
    $(wildcard include/config/function/error/injection.h) \
    $(wildcard include/config/bpf/lirc/mode2.h) \
  include/uapi/linux/bpf_common.h \
  include/net/xdp.h \
  include/uapi/linux/neighbour.h \
  include/linux/netlink.h \
  include/net/scm.h \
    $(wildcard include/config/security/network.h) \
  include/linux/security.h \
    $(wildcard include/config/security/infiniband.h) \
    $(wildcard include/config/security/network/xfrm.h) \
    $(wildcard include/config/security/path.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/securityfs.h) \
  include/linux/sched/signal.h \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
  include/linux/signal.h \
  include/linux/sched/jobctl.h \
  include/linux/sched/task.h \
    $(wildcard include/config/have/copy/thread/tls.h) \
    $(wildcard include/config/have/exit/thread.h) \
    $(wildcard include/config/arch/wants/dynamic/task/struct.h) \
    $(wildcard include/config/have/arch/thread/struct/whitelist.h) \
  include/uapi/linux/netlink.h \
    $(wildcard include/config/ipv6/ra/netlink.h) \
  include/uapi/linux/netdevice.h \
  include/linux/if_link.h \
  include/uapi/linux/if_link.h \
  include/uapi/linux/if_bonding.h \
  include/uapi/linux/pkt_cls.h \
    $(wildcard include/config/net/cls/ind.h) \
  include/uapi/linux/pkt_sched.h \
  include/linux/hashtable.h \
  bcmkernel/include/linux/bcm_netdevice.h \
    $(wildcard include/config/bcm/rdpa/bridge.h) \
    $(wildcard include/config/bcm/nat46.h) \
  bcmkernel/include/linux/blog.h \
    $(wildcard include/config/bcm/ovs.h) \
    $(wildcard include/config/change.h) \
    $(wildcard include/config/blog/mcast.h) \
    $(wildcard include/config/blog/ipv6.h) \
    $(wildcard include/config/blog/gre.h) \
    $(wildcard include/config/blog/l2tp.h) \
    $(wildcard include/config/blog/esp.h) \
    $(wildcard include/config/bcm/max/mcast/clients/per/group.h) \
    $(wildcard include/config/bcm/max/mcast/groups.h) \
    $(wildcard include/config/bcm/max/mcast/clients.h) \
    $(wildcard include/config/bcm/max/ucast/flows.h) \
    $(wildcard include/config/accel/pptp.h) \
    $(wildcard include/config/bcm/kf/blog.h) \
  bcmkernel/include/linux/blog_net.h \
    $(wildcard include/config/cpu/little/endian.h) \
    $(wildcard include/config/arm.h) \
  bcmkernel/include/linux/nbuff_types.h \
  bcmkernel/include/linux/brcm_dll.h \
  bcmkernel/include/linux/bcm_dslcpe_wlan_info.h \
  bcmkernel/include/linux/bcm_netdev_path.h \
    $(wildcard include/config/bcm/max/gem/ports.h) \
  bcmkernel/include/uapi/linux/bcm_maclimit.h \
  include/linux/etherdevice.h \
  arch/arm/include/asm/unaligned.h \
  include/linux/unaligned/le_struct.h \
  include/linux/unaligned/packed_struct.h \
  include/linux/unaligned/be_byteshift.h \
  include/linux/unaligned/generic.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/bcmutils.h \
    $(wildcard include/config/tenda/game/speedup.h) \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/bcmtlv.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/typedefs.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/bcmdefs.h \
    $(wildcard include/config/bcm963178.h) \
    $(wildcard include/config/bcm947622.h) \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/osl.h \
    $(wildcard include/config/ugw/bcm/dongle.h) \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/osl_decl.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/linux_osl.h \
    $(wildcard include/config/bcm/glb/coherency.h) \
    $(wildcard include/config/mmc/msm7x00a.h) \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/shared/impl1/dhd_nic_common.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/linuxver.h \
    $(wildcard include/config/net/radio.h) \
    $(wildcard include/config/pcmcia.h) \
    $(wildcard include/config/rfkill.h) \
  include/linux/kconfig.h \
  include/linux/module.h \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
  include/linux/kmod.h \
  include/linux/umh.h \
  include/linux/elf.h \
  arch/arm/include/asm/elf.h \
  arch/arm/include/asm/vdso_datapage.h \
  arch/arm/include/asm/user.h \
  include/uapi/linux/elf.h \
  include/uapi/linux/elf-em.h \
  include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ppc64.h) \
  include/linux/rbtree_latch.h \
  include/linux/error-injection.h \
  include/asm-generic/error-injection.h \
  arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
    $(wildcard include/config/arm/module/plts.h) \
  include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  include/linux/pci.h \
    $(wildcard include/config/pci/iov.h) \
    $(wildcard include/config/pcieaer.h) \
    $(wildcard include/config/pcieaspm.h) \
    $(wildcard include/config/hotplug/pci/pcie.h) \
    $(wildcard include/config/pcie/ptm.h) \
    $(wildcard include/config/pci/msi.h) \
    $(wildcard include/config/pci/ats.h) \
    $(wildcard include/config/pci/pri.h) \
    $(wildcard include/config/pci/pasid.h) \
    $(wildcard include/config/pci/domains/generic.h) \
    $(wildcard include/config/pcieportbus.h) \
    $(wildcard include/config/pcie/ecrc.h) \
    $(wildcard include/config/pci/domains.h) \
    $(wildcard include/config/bcm/kf/pci/reset/domain/nr.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pci/quirks.h) \
    $(wildcard include/config/hibernate/callbacks.h) \
    $(wildcard include/config/pci/mmconfig.h) \
    $(wildcard include/config/acpi/mcfg.h) \
    $(wildcard include/config/hotplug/pci.h) \
    $(wildcard include/config/eeh.h) \
  include/linux/mod_devicetable.h \
  include/linux/io.h \
  include/linux/resource_ext.h \
  include/uapi/linux/pci.h \
  include/uapi/linux/pci_regs.h \
  include/linux/pci_ids.h \
  include/linux/pci-dma.h \
  include/linux/dmapool.h \
  arch/arm/include/asm/pci.h \
  arch/arm/include/asm/mach/pci.h \
  include/linux/pci-dma-compat.h \
  include/linux/kthread.h \
  include/uapi/linux/sched/types.h \
  include/net/lib80211.h \
  include/linux/ieee80211.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/linux_pkt.h \
    $(wildcard include/config/bcm/bpm.h) \
    $(wildcard include/config/dhd/use/static/buf.h) \
    $(wildcard include/config/nf/conntrack/mark.h) \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/hnd_pktq.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/osl_ext.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/bcm96756/main/src/include/hnd_pktpool.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/shared/impl1/wl_pktc.h \
    $(wildcard include/config/bcm/wlan/16bit/station/chain/idx/support.h) \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/shared/impl1/wl_pktfwd.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/include/bcm963xx/bcm_pktfwd.h \
    $(wildcard include/config/bcm/hnd/eap.h) \
    $(wildcard include/config/bcm/wlan/impl.h) \
  bcmkernel/include/linux/nbuff.h \
    $(wildcard include/config/cpu/cache/v7.h) \
    $(wildcard include/config/outer/cache.h) \
    $(wildcard include/config/cache/l2x0.h) \
    $(wildcard include/config/optimized/cache/flush.h) \
    $(wildcard include/config/bcm/fpm/coherency/exclude.h) \
    $(wildcard include/config/bcm/nbuff/fkb/pool.h) \
    $(wildcard include/config/bcm/skb/free/thread.h) \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/shared/opensource/include/bcm963xx/bcm_pkt_lengths.h \
    $(wildcard include/config/bcm963138.h) \
    $(wildcard include/config/bcm963158.h) \
    $(wildcard include/config/bcm94912.h) \
    $(wildcard include/config/bcm96813.h) \
    $(wildcard include/config/bcm94908.h) \
    $(wildcard include/config/bcm963148.h) \
    $(wildcard include/config/bcm963146.h) \
    $(wildcard include/config/bcm96756.h) \
    $(wildcard include/config/bcm/jumbo/frame.h) \
    $(wildcard include/config/bcm/max/mtu/size.h) \
    $(wildcard include/config/bcm/user/defined/default/mtu.h) \
    $(wildcard include/config/bcm/user/defined/default/mtu/size.h) \
    $(wildcard include/config/bcm96858.h) \
    $(wildcard include/config/bcm947189.h) \
    $(wildcard include/config/bcm/enet/sysport.h) \
  arch/arm/include/asm/cacheflush.h \
    $(wildcard include/config/arm/errata/411920.h) \
    $(wildcard include/config/cpu/cache/vipt.h) \
    $(wildcard include/config/frame/pointer.h) \
  arch/arm/include/asm/glue-cache.h \
    $(wildcard include/config/cpu/cache/v4.h) \
    $(wildcard include/config/cpu/cache/v4wb.h) \
    $(wildcard include/config/cache/b15/rac.h) \
  arch/arm/include/asm/cachetype.h \
    $(wildcard include/config/cpu/cache/vivt.h) \
  arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/bcm/kf/l2cache/optimization.h) \
  bcmdrivers/opensource/include/bcm963xx/bcm_prefetch.h \
    $(wildcard include/config/bcm96846.h) \
    $(wildcard include/config/bcm96878.h) \
    $(wildcard include/config/bcm96855.h) \
    $(wildcard include/config/bcm96856.h) \
    $(wildcard include/config/mips/bcm963xx.h) \
  bcmdrivers/opensource/include/bcm963xx/bcm_assert.h \
    $(wildcard include/config/bcm/asserts.h) \
    $(wildcard include/config/bcm/fatal/asserts.h) \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmkernel/include/uapi/linux/bcm_colors.h \
    $(wildcard include/config/bcm/colorize/prints.h) \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/bcmdrivers/broadcom/net/wl/shared/impl1/wl_br_d3lut.h \
  /Mline/waiyong/UGW6.0_HomeCoverage/bsp/kernel/bcm_v5_04L_02p1_4.19/net/bridge/br_private.h \
    $(wildcard include/config/bridge/igmp/snooping.h) \
    $(wildcard include/config/bridge/vlan/filtering.h) \
    $(wildcard include/config/atm/lane.h) \
  include/linux/if_bridge.h \
    $(wildcard include/config/bridge.h) \
  include/uapi/linux/if_bridge.h \
  include/linux/netpoll.h \
  include/net/route.h \
  include/net/dst.h \
  include/linux/rtnetlink.h \
    $(wildcard include/config/net/ingress.h) \
    $(wildcard include/config/net/egress.h) \
  include/uapi/linux/rtnetlink.h \
  include/uapi/linux/if_addr.h \
  include/net/neighbour.h \
  include/net/rtnetlink.h \
  include/net/netlink.h \
  include/net/inetpeer.h \
  include/net/ipv6.h \
  include/linux/ipv6.h \
    $(wildcard include/config/ipv6/router/pref.h) \
    $(wildcard include/config/ipv6/route/info.h) \
    $(wildcard include/config/ipv6/optimistic/dad.h) \
    $(wildcard include/config/ipv6/seg6/hmac.h) \
    $(wildcard include/config/ipv6/mip6.h) \
    $(wildcard include/config/ipv6/subtrees.h) \
  include/uapi/linux/ipv6.h \
  include/uapi/linux/icmpv6.h \
  include/linux/tcp.h \
    $(wildcard include/config/smc.h) \
    $(wildcard include/config/bpf.h) \
    $(wildcard include/config/tcp/md5sig.h) \
  include/linux/win_minmax.h \
  include/net/sock.h \
    $(wildcard include/config/sock/validate/xmit.h) \
    $(wildcard include/config/inet.h) \
  include/linux/page_counter.h \
  include/linux/memcontrol.h \
    $(wildcard include/config/memcg/swap.h) \
  include/linux/vmpressure.h \
  include/linux/eventfd.h \
    $(wildcard include/config/eventfd.h) \
  include/linux/writeback.h \
  include/linux/flex_proportions.h \
  include/linux/backing-dev-defs.h \
    $(wildcard include/config/debug/fs.h) \
  include/linux/blk_types.h \
    $(wildcard include/config/blk/dev/integrity.h) \
  include/linux/bvec.h \
  include/linux/filter.h \
    $(wildcard include/config/bpf/jit.h) \
    $(wildcard include/config/have/ebpf/jit.h) \
  include/linux/cryptohash.h \
  include/linux/set_memory.h \
    $(wildcard include/config/arch/has/set/memory.h) \
  arch/arm/include/asm/set_memory.h \
  include/linux/kallsyms.h \
    $(wildcard include/config/kallsyms/all.h) \
    $(wildcard include/config/bcm/kf/extra/debug.h) \
  include/linux/if_vlan.h \
    $(wildcard include/config/bcm/kf/vlan/dei.h) \
    $(wildcard include/config/bcm/vlan.h) \
  include/uapi/linux/if_vlan.h \
  include/net/sch_generic.h \
  include/uapi/linux/pkt_cls.h \
  include/net/gen_stats.h \
  include/uapi/linux/gen_stats.h \
  include/uapi/linux/filter.h \
  include/linux/rculist_nulls.h \
  include/linux/poll.h \
  include/uapi/linux/poll.h \
  arch/arm/include/generated/uapi/asm/poll.h \
  include/uapi/asm-generic/poll.h \
  include/uapi/linux/eventpoll.h \
  include/net/tcp_states.h \
  include/uapi/linux/net_tstamp.h \
  include/net/smc.h \
  include/net/l3mdev.h \
  include/net/fib_rules.h \
  include/uapi/linux/fib_rules.h \
  include/net/fib_notifier.h \
  include/net/inet_connection_sock.h \
  include/net/inet_sock.h \
  include/linux/jhash.h \
  include/net/request_sock.h \
  include/net/netns/hash.h \
  include/net/inet_timewait_sock.h \
  include/net/timewait_sock.h \
  include/uapi/linux/tcp.h \
  include/linux/udp.h \
  include/uapi/linux/udp.h \
  include/net/if_inet6.h \
  include/net/ndisc.h \
  include/linux/icmpv6.h \
    $(wildcard include/config/nf/nat.h) \
  include/linux/if_arp.h \
    $(wildcard include/config/firewire/net.h) \
  include/uapi/linux/if_arp.h \
  include/net/ip_fib.h \
  include/uapi/linux/in_route.h \
  include/uapi/linux/route.h \
  include/linux/ip.h \
  include/uapi/linux/ip.h \
  include/net/ip6_fib.h \
  include/linux/ipv6_route.h \
  include/uapi/linux/ipv6_route.h \
  include/linux/rhashtable.h \

bcmdrivers/broadcom/net/wl/shared/impl1//wl_br_d3lut.o: $(deps_bcmdrivers/broadcom/net/wl/shared/impl1//wl_br_d3lut.o)

$(deps_bcmdrivers/broadcom/net/wl/shared/impl1//wl_br_d3lut.o):