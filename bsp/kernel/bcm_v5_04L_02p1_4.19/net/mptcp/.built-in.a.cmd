cmd_net/mptcp/built-in.a := rm -f net/mptcp/built-in.a; /projects/hnd/tools/bcm/crosstools-arm-gcc-9.2-linux-4.19-glibc-2.30-binutils-2.32/usr/bin/arm-buildroot-linux-gnueabi-ar rcSTPD net/mptcp/built-in.a net/mptcp/mptcp_ctrl.o net/mptcp/mptcp_ipv4.o net/mptcp/mptcp_pm.o net/mptcp/mptcp_output.o net/mptcp/mptcp_input.o net/mptcp/mptcp_sched.o net/mptcp/mptcp_ipv6.o net/mptcp/mptcp_coupled.o net/mptcp/mptcp_olia.o net/mptcp/mptcp_fullmesh.o