/*
   Copyright (c) 2015 Broadcom Corporation
   All Rights Reserved

    <:label-BRCM:2015:DUAL/GPL:standard

    Unless you and Broadcom execute a separate written software license
    agreement governing use of this software, this software is licensed
    to you under the terms of the GNU General Public License version 2
    (the "GPL"), available at http://www.broadcom.com/licenses/GPLv2.php,
    with the following added to such license:

       As a special exception, the copyright holders of this software give
       you permission to link this software with independent modules, and
       to copy and distribute the resulting executable under terms of your
       choice, provided that you also meet, for each linked independent
       module, the terms and conditions of the license of that module.
       An independent module is a module which is not derived from this
       software.  The special exception does not apply to any modifications
       of the software.

    Not withstanding the above, under no circumstances may you combine
    this software in any way with any other Broadcom software provided
    under a license other than the GPL, without Broadcom's express prior
    written consent.

:>
*/
/** @file merlin16_api_uc_vars_rdwr_defns.h
 * Read/Write macros to Merlin16 IP's uC RAM's User variables
 */

/* THIS FILE IS GENERATED USING AN AUTOMATED SCRIPT... PLEASE DO NOT EDIT THIS FILE DIRECTLY !!! */


#ifndef MERLIN16_API_UC_VARS_RDWR_DEFNS_H
#define MERLIN16_API_UC_VARS_RDWR_DEFNS_H

/************************************/
/*  Serdes IP RAM access functions  */
/************************************/

/* RAM access functions for lane_var_struct variables */
#define rdv_config_word()                                            merlin16_shortfin_rdwl_uc_var(sa__,__ERR,0x0)
#define wrv_config_word(wr_val)                                      merlin16_shortfin_wrwl_uc_var(sa__,0x0,wr_val)
#define rdv_usr_ctrl_retune_after_restart()                          merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x2)
#define wrv_usr_ctrl_retune_after_restart(wr_val)                    merlin16_shortfin_wrbl_uc_var(sa__,0x2,wr_val)
#define rdv_usr_ctrl_clk90_offset_adjust()                           merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x3)
#define wrv_usr_ctrl_clk90_offset_adjust(wr_val)                     merlin16_shortfin_wrbl_uc_var(sa__,0x3,wr_val)
#define rdv_usr_ctrl_clk90_offset_override()                         merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x4)
#define wrv_usr_ctrl_clk90_offset_override(wr_val)                   merlin16_shortfin_wrbl_uc_var(sa__,0x4,wr_val)
#define rdv_usr_ctrl_lane_event_log_level()                          merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x5)
#define wrv_usr_ctrl_lane_event_log_level(wr_val)                    merlin16_shortfin_wrbl_uc_var(sa__,0x5,wr_val)
#define rdv_usr_ctrl_disable_startup_functions_byte()                merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x6)
#define wrv_usr_ctrl_disable_startup_functions_byte(wr_val)          merlin16_shortfin_wrbl_uc_var(sa__,0x6,wr_val)
#define rdv_usr_ctrl_disable_startup_dfe_functions_byte()            merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x7)
#define wrv_usr_ctrl_disable_startup_dfe_functions_byte(wr_val)      merlin16_shortfin_wrbl_uc_var(sa__,0x7,wr_val)
#define rdv_usr_ctrl_disable_steady_state_functions_byte()           merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x8)
#define wrv_usr_ctrl_disable_steady_state_functions_byte(wr_val)     merlin16_shortfin_wrbl_uc_var(sa__,0x8,wr_val)
#define rdv_usr_ctrl_disable_steady_state_dfe_functions_byte()       merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x9)
#define wrv_usr_ctrl_disable_steady_state_dfe_functions_byte(wr_val) merlin16_shortfin_wrbl_uc_var(sa__,0x9,wr_val)
#define rdv_usr_sts_restart_counter()                                merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0xa)
#define wrv_usr_sts_restart_counter(wr_val)                          merlin16_shortfin_wrbl_uc_var(sa__,0xa,wr_val)
#define rdv_usr_sts_reset_counter()                                  merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0xb)
#define wrv_usr_sts_reset_counter(wr_val)                            merlin16_shortfin_wrbl_uc_var(sa__,0xb,wr_val)
#define rdv_usr_sts_pmd_lock_counter()                               merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0xc)
#define wrv_usr_sts_pmd_lock_counter(wr_val)                         merlin16_shortfin_wrbl_uc_var(sa__,0xc,wr_val)
#define rdv_usr_sts_heye_left()                                      merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0xd)
#define wrv_usr_sts_heye_left(wr_val)                                merlin16_shortfin_wrbl_uc_var(sa__,0xd,wr_val)
#define rdv_usr_sts_heye_right()                                     merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0xe)
#define wrv_usr_sts_heye_right(wr_val)                               merlin16_shortfin_wrbl_uc_var(sa__,0xe,wr_val)
#define rdv_usr_sts_veye_upper()                                     merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0xf)
#define wrv_usr_sts_veye_upper(wr_val)                               merlin16_shortfin_wrbl_uc_var(sa__,0xf,wr_val)
#define rdv_usr_sts_veye_lower()                                     merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x10)
#define wrv_usr_sts_veye_lower(wr_val)                               merlin16_shortfin_wrbl_uc_var(sa__,0x10,wr_val)
#define rdv_usr_sts_micro_stopped()                                  merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x11)
#define wrv_usr_sts_micro_stopped(wr_val)                            merlin16_shortfin_wrbl_uc_var(sa__,0x11,wr_val)
#define rdv_usr_sts_link_time()                                      merlin16_shortfin_rdwl_uc_var(sa__,__ERR,0x12)
#define wrv_usr_sts_link_time(wr_val)                                merlin16_shortfin_wrwl_uc_var(sa__,0x12,wr_val)
#define rdv_usr_diag_status()                                        merlin16_shortfin_rdwl_uc_var(sa__,__ERR,0x14)
#define wrv_usr_diag_status(wr_val)                                  merlin16_shortfin_wrwl_uc_var(sa__,0x14,wr_val)
#define rdv_usr_diag_rd_ptr()                                        merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x16)
#define wrv_usr_diag_rd_ptr(wr_val)                                  merlin16_shortfin_wrbl_uc_var(sa__,0x16,wr_val)
#define rdv_usr_diag_mode()                                          merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x17)
#define wrv_usr_diag_mode(wr_val)                                    merlin16_shortfin_wrbl_uc_var(sa__,0x17,wr_val)
#define rdv_usr_var_msb()                                            merlin16_shortfin_rdwl_uc_var(sa__,__ERR,0x18)
#define wrv_usr_var_msb(wr_val)                                      merlin16_shortfin_wrwl_uc_var(sa__,0x18,wr_val)
#define rdv_usr_var_lsb()                                            merlin16_shortfin_rdwl_uc_var(sa__,__ERR,0x1a)
#define wrv_usr_var_lsb(wr_val)                                      merlin16_shortfin_wrwl_uc_var(sa__,0x1a,wr_val)
#define rdv_usr_diag_wr_ptr()                                        merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x1c)
#define wrv_usr_diag_wr_ptr(wr_val)                                  merlin16_shortfin_wrbl_uc_var(sa__,0x1c,wr_val)
#define rdv_usr_ctrl_cl72_frc_byte()                                 merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x1d)
#define wrv_usr_ctrl_cl72_frc_byte(wr_val)                           merlin16_shortfin_wrbl_uc_var(sa__,0x1d,wr_val)
#define rdv_status_byte()                                            merlin16_shortfin_rdbl_uc_var(sa__,__ERR,0x47)
#define wrv_status_byte(wr_val)                                      merlin16_shortfin_wrbl_uc_var(sa__,0x47,wr_val)

/* RAM access functions for core_var_struct variables */
#define rdcv_config_word()                                           merlin16_shortfin_rdwc_uc_var(sa__,__ERR,0x0)
#define wrcv_config_word(wr_val)                                     merlin16_shortfin_wrwc_uc_var(sa__,0x0,wr_val)
#define rdcv_dummy()                                                 merlin16_shortfin_rdwc_uc_var(sa__,__ERR,0x2)
#define wrcv_dummy(wr_val)                                           merlin16_shortfin_wrwc_uc_var(sa__,0x2,wr_val)
#define rdcv_common_ucode_version()                                  merlin16_shortfin_rdwc_uc_var(sa__,__ERR,0x4)
#define wrcv_common_ucode_version(wr_val)                            merlin16_shortfin_wrwc_uc_var(sa__,0x4,wr_val)
#define rdcv_avg_tmon_reg13bit()                                     merlin16_shortfin_rdwc_uc_var(sa__,__ERR,0x6)
#define wrcv_avg_tmon_reg13bit(wr_val)                               merlin16_shortfin_wrwc_uc_var(sa__,0x6,wr_val)
#define rdcv_trace_mem_rd_idx()                                      merlin16_shortfin_rdwc_uc_var(sa__,__ERR,0x8)
#define wrcv_trace_mem_rd_idx(wr_val)                                merlin16_shortfin_wrwc_uc_var(sa__,0x8,wr_val)
#define rdcv_trace_mem_wr_idx()                                      merlin16_shortfin_rdwc_uc_var(sa__,__ERR,0xa)
#define wrcv_trace_mem_wr_idx(wr_val)                                merlin16_shortfin_wrwc_uc_var(sa__,0xa,wr_val)
#define rdcv_temp_idx()                                              merlin16_shortfin_rdbc_uc_var(sa__,__ERR,0xc)
#define wrcv_temp_idx(wr_val)                                        merlin16_shortfin_wrbc_uc_var(sa__,0xc,wr_val)
#define rdcv_usr_ctrl_core_event_log_level()                         merlin16_shortfin_rdbc_uc_var(sa__,__ERR,0xd)
#define wrcv_usr_ctrl_core_event_log_level(wr_val)                   merlin16_shortfin_wrbc_uc_var(sa__,0xd,wr_val)
#define rdcv_common_ucode_minor_version()                            merlin16_shortfin_rdbc_uc_var(sa__,__ERR,0xe)
#define wrcv_common_ucode_minor_version(wr_val)                      merlin16_shortfin_wrbc_uc_var(sa__,0xe,wr_val)
#define rdcv_afe_hardware_version()                                  merlin16_shortfin_rdbc_uc_var(sa__,__ERR,0xf)
#define wrcv_afe_hardware_version(wr_val)                            merlin16_shortfin_wrbc_uc_var(sa__,0xf,wr_val)
#define rdcv_status_byte()                                           merlin16_shortfin_rdbc_uc_var(sa__,__ERR,0x10)
#define wrcv_status_byte(wr_val)                                     merlin16_shortfin_wrbc_uc_var(sa__,0x10,wr_val)
#define rdcv_diag_max_time_control()                                 merlin16_shortfin_rdbc_uc_var(sa__,__ERR,0x11)
#define wrcv_diag_max_time_control(wr_val)                           merlin16_shortfin_wrbc_uc_var(sa__,0x11,wr_val)
#define rdcv_diag_max_err_control()                                  merlin16_shortfin_rdbc_uc_var(sa__,__ERR,0x12)
#define wrcv_diag_max_err_control(wr_val)                            merlin16_shortfin_wrbc_uc_var(sa__,0x12,wr_val)

#endif
