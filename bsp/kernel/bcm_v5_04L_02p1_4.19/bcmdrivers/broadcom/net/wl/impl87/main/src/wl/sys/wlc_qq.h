#ifdef PKTQ_LOG
typedef struct scb_ampdu_dpdbg{
    uint32 txmpdu_succ_per_ft[AMPDU_PPDU_FT_MAX];    /**< succ mpdus tx per frame type */
    uint32 txru_succ[MAC_LOG_MU_RU_MAX];
    uint32 txmimo_succ[MAC_LOG_MU_MIMO_USER_MAX];
    uint32 time_lo;
    uint32 time_hi;
} scb_ampdu_dpdbg_t;
#endif /* PKTQ_LOG */

#ifdef AMPDU_NON_AQM
/** structure to store per-tid state for the ampdu initiator */
typedef struct scb_ampdu_tid_ini_non_aqm {
    uint8 txretry[AMPDU_BA_MAX_WSIZE];       /**< tx retry count; indexed by seq modulo */
    uint8 ackpending[AMPDU_BA_MAX_WSIZE/NBBY]; /**< bitmap: set if ack is pending */
    uint8 barpending[AMPDU_BA_MAX_WSIZE/NBBY]; /**< bitmap: set if bar is pending */
    uint16 rem_window;               /**< !AQM only: remaining ba window (in pdus)
                            *    that can be txed.
                            */
    uint16 retry_seq[AMPDU_BA_MAX_WSIZE];       /**< seq of released retried pkts */
    uint16 retry_head;               /**< head of queue ptr for retried pkts */
    uint16 retry_tail;               /**< tail of queue ptr for retried pkts */
    uint16 retry_cnt;               /**< cnt of retried pkts */
} scb_ampdu_tid_ini_non_aqm_t;
#endif /* AMPDU_NON_AQM */

struct scb_ampdu_tid_ini {
    uint8 ba_state;        /**< ampdu ba state */
    uint8 ba_wsize;        /**< negotiated ba window size (in pdu) */
    uint8 tid;        /**< initiator tid for easy lookup */
    bool alive;        /**< true if making forward progress */
    uint16 tx_in_transit;    /**< #packets have left the AMPDU module and haven't been freed */
    uint16 barpending_seq;    /**< seqnum for bar */
    uint16 acked_seq;    /**< last ack received */
    uint16 start_seq;    /**< seqnum of first unack'ed mpdu, increments when window moves */
    uint16 max_seq;        /**< max unacknowledged seqnum released towards hardware */
    uint16 tx_exp_seq;    /**< next exp seq in sendampdu */
    uint16 next_enq_seq;    /**< last pkt seq that has been sent to txfifo */
    uint16 bar_ackpending_seq; /**< seqnum of bar for which ack is pending */
    bool bar_ackpending;    /**< true if there is a bar for which ack is pending */
    uint8 retry_bar;    /**< reason code if bar to be retried at watchdog */
    uint8 bar_cnt;        /**< number of bars sent with no progress */
    uint8 dead_cnt;        /**< number of sec without the window moving */
    struct scb *scb;    /**< backptr for easy lookup */
    uint32    last_addba_ts;    /**< timestamp of last addba req sent */

    uint16 suppr_window;    /**< suppr packet count inside ba window, including reg mpdu's */

    uint8 addba_req_cnt;    /**< number of addba_req sent with no progress */
    uint8 cleanup_ini_cnt;    /**< number of sec waiting in pending off state */
    uint16 off_cnt;        /**< number of sec in off state before next try */
#ifdef AMPDU_NON_AQM
    scb_ampdu_tid_ini_non_aqm_t *non_aqm;
#endif /* AMPDU_NON_AQM */
#ifdef WLATF_BARE
    atf_state_t atf_state; /**< per-tid ATF state information */
#endif /* WLATF_BARE */
#ifdef PKTQ_LOG
    scb_ampdu_dpdbg_t * ampdu_dpdbg;
#endif
};











/* dump_flag_qqdx */
struct pkt_qq {
    uint32 tcp_seq;/* Starting sequence number */
    uint32 ampdu_seq;/* preassigned seqnum for AMPDU */
    uint32 packetid;/* 未知变量packetid */
    uint16 FrameID;//每个数据帧生命周期不变的
    uint16 pktSEQ;//也许每个数据包生命周期不变的
    uint32 into_hw_time;/*进入硬件队列的时间*/
    uint32 free_time;/*传输成功被释放的时间*/
    uint32 into_hw_txop;/*进入硬件队列的txop*/
    uint32 free_txop;/*传输成功被释放的txop*/
    uint32 drop_time;/*传输失败被丢弃的时间*/
    uint8 failed_cnt;/*发射失败次数*/
    uint32 failed_time_list_qq[10];/*发射失败时间列表*/
    struct pkt_qq *next;
    struct pkt_qq *prev;
    
}pkt_qq_t;
struct pkt_qq *pkt_qq_chain_head = (struct pkt_qq *)NULL;
struct pkt_qq *pkt_qq_chain_tail = (struct pkt_qq *)NULL;
uint16 pkt_qq_chain_len = 0;
uint16 max_pkt_qq_chain_len = 666;
uint16 pkt_qq_ddl = 1000;
DEFINE_MUTEX(pkt_qq_mutex); // 定义一个互斥锁





bool pkt_qq_len_error_sniffer(osl_t *osh, uint8 num){
    struct pkt_qq *pkt_qq_cur = pkt_qq_chain_head;

    uint16 index = 0;
    while(pkt_qq_cur != (struct pkt_qq *)NULL){

        index ++;
        pkt_qq_cur = pkt_qq_cur->next;
    }
        printk("__index:::pkt_qq_chain_len:::pkt_qq_len_error_sniffer___(%u,%u,%u)",index,pkt_qq_chain_len,num);
        
    if(index!=pkt_qq_chain_len){
        return TRUE;
    }
        return FALSE;
}


void pkt_qq_add_at_tail(struct pkt_qq *pkt_qq_cur){
    //mutex_lock(&pkt_qq_mutex); // 加锁
    if (pkt_qq_cur == (struct pkt_qq *)NULL){
        printk("_______________error_qq: null pointer_____________");
        return;
    }
    pkt_qq_cur->next = (struct pkt_qq *)NULL;
    pkt_qq_cur->prev = (struct pkt_qq *)NULL;

    if (pkt_qq_chain_head == NULL){
        pkt_qq_chain_head = (struct pkt_qq *)pkt_qq_cur;
        pkt_qq_chain_tail = (struct pkt_qq *)pkt_qq_cur;

    }else if(pkt_qq_chain_head->next == NULL){
        pkt_qq_chain_head->next = (struct pkt_qq *)pkt_qq_cur;
        pkt_qq_cur->prev = (struct pkt_qq *)pkt_qq_chain_head;
        pkt_qq_chain_tail = (struct pkt_qq *)pkt_qq_cur;
    }else{        
        pkt_qq_chain_tail->next = (struct pkt_qq *)pkt_qq_cur;
        pkt_qq_cur->prev= (struct pkt_qq *)pkt_qq_chain_tail;
        pkt_qq_chain_tail = (struct pkt_qq *)pkt_qq_cur;
    }

    pkt_qq_chain_len++;
    //mutex_unlock(&pkt_qq_mutex); // 解锁
}
void pkt_qq_delete(struct pkt_qq *pkt_qq_cur,osl_t *osh){
    //mutex_lock(&pkt_qq_mutex); // 加锁
    if((pkt_qq_cur->pktSEQ == pkt_qq_chain_head->pktSEQ)&&(pkt_qq_cur->prev==(struct pkt_qq *)NULL)){

        if(pkt_qq_chain_head->next == (struct pkt_qq *)NULL){//防止删除节点时出错
            MFREE(osh, pkt_qq_cur, sizeof(pkt_qq_t));
            pkt_qq_chain_head=(struct pkt_qq *)NULL;
            pkt_qq_chain_tail=pkt_qq_chain_head;
            if(pkt_qq_chain_len!=1){
                printk("****************wrong pkt_qq_chain_len----------(%u)",pkt_qq_chain_len);

            }
            pkt_qq_chain_len=0;    
            return;

        }
        pkt_qq_chain_head = pkt_qq_chain_head->next;
        (*pkt_qq_chain_head).prev = (struct pkt_qq *)NULL;
        if(pkt_qq_cur->next==NULL){
            pkt_qq_chain_tail=pkt_qq_chain_head;
        }
        pkt_qq_chain_len--;
        MFREE(osh, pkt_qq_cur, sizeof(pkt_qq_t));
    }else{
        if(pkt_qq_cur->prev!=(struct pkt_qq *)NULL){
            (*((*pkt_qq_cur).prev)).next = (*pkt_qq_cur).next;
        }
        if(pkt_qq_cur->next!=(struct pkt_qq *)NULL){
            (*((*pkt_qq_cur).next)).prev = (*pkt_qq_cur).prev;
        }else{
            pkt_qq_chain_tail=pkt_qq_chain_tail->prev;
            
        }
        
        MFREE(osh, pkt_qq_cur, sizeof(pkt_qq_t));
        pkt_qq_chain_len--;
    }
//mutex_unlock(&pkt_qq_mutex); // 解锁
}




void ack_update_qq(wlc_info_t *wlc, scb_ampdu_tid_ini_t* ini,ampdu_tx_info_t *ampdu_tx, tx_status_t *txs, wlc_pkttag_t* pkttag, wlc_txh_info_t *txh_info,bool was_acked,osl_t *osh){
    mutex_lock(&pkt_qq_mutex); // 加锁
    uint16 curTxFrameID = txh_info->TxFrameID;
    uint8 tid = ini->tid;
    struct pkt_qq *pkt_qq_cur = pkt_qq_chain_head;
    uint16 index = 0;
    uint16 deleteNUM_delay = 0;
    while(pkt_qq_cur != (struct pkt_qq *)NULL){

        uint32 cur_time = OSL_SYSUPTIME();
        uint32 pkt_qq_cur_PHYdelay = cur_time - pkt_qq_cur->into_hw_time;
        //if(pkt_qq_cur->pktSEQ == cur_pktSEQ ){//如果找到了这个数据包
        if(pkt_qq_cur->FrameID == htol16(curTxFrameID) ){//如果找到了这个数据包

            pkt_qq_cur->pktSEQ = pkttag->seq;
            if(was_acked){//如果成功ACK 
                pkt_qq_cur->free_time = cur_time;
                pkt_qq_cur->free_txop = wlc_bmac_cca_read_counter(wlc->hw, M_CCA_TXOP_L_OFFSET(wlc), M_CCA_TXOP_H_OFFSET(wlc));
                uint32 txop_in_fly = pkt_qq_cur->free_txop - pkt_qq_cur->into_hw_txop;
                if(pkt_qq_cur_PHYdelay >= 17 || pkt_qq_cur->failed_cnt>1){//如果时延较高就打印出来
                    printk("----------[fyl] FrameID----------(%u)1",pkt_qq_cur->FrameID);
                    printk("----------[fyl] pktSEQ----------(%u)1",pkt_qq_cur->pktSEQ);
                    printk("----------[fyl] pkt_qq_cur->failed_cnt----------(%u)",pkt_qq_cur->failed_cnt);
                    printk("----------[fyl] pkt_qq_cur_PHYdelay----------(%u)",pkt_qq_cur_PHYdelay);
                    printk("----------[fyl] pkt_qq_cur->free_time----------(%u)",pkt_qq_cur->free_time);
                    printk("----------[fyl] pkt_qq_cur->into_hw_time----------(%u)",pkt_qq_cur->into_hw_time);
                    printk("----------[fyl] ini->tid----------(%u)",tid);
                    printk("----------[fyl] free_txop:::into_hw_txop:::txop_in_fly----------(%u:%u:%u)",pkt_qq_cur->free_txop, pkt_qq_cur->into_hw_txop,txop_in_fly);
                    printk("--[fyl] txs->status.rts_tx_cnt:txs->status.cts_tx_cnt---(%u:%u)",txs->status.rts_tx_cnt,txs->status.cts_rx_cnt);
                    if(pkt_qq_cur->failed_cnt>0){
                        printk("failed_time_list_qq:0(%u)1(%u)2(%u)3(%u)4(%u)5(%u)6(%u)7(%u)8(%u)9(%u)",pkt_qq_cur->failed_time_list_qq[0]\
                        ,pkt_qq_cur->failed_time_list_qq[1],pkt_qq_cur->failed_time_list_qq[2],pkt_qq_cur->failed_time_list_qq[3]\
                        ,pkt_qq_cur->failed_time_list_qq[4],pkt_qq_cur->failed_time_list_qq[5],pkt_qq_cur->failed_time_list_qq[6]\
                        ,pkt_qq_cur->failed_time_list_qq[7],pkt_qq_cur->failed_time_list_qq[8],pkt_qq_cur->failed_time_list_qq[9]);
                    }
                }
                /*删除已经ACK的数据包节点*/
                pkt_qq_delete(pkt_qq_cur,osh);
                break;                    
            }else{//未收到ACK则增加计数
                index++;
                if(pkt_qq_cur->failed_cnt>0){/*如果同时到达的，就不认为是重传*/
                    if(pkt_qq_cur->failed_time_list_qq[pkt_qq_cur->failed_cnt-1]==cur_time){
                        break;
                    }
                }
                if(pkt_qq_cur->failed_cnt<10){
                    pkt_qq_cur->failed_time_list_qq[pkt_qq_cur->failed_cnt] = cur_time;
                }
                
                pkt_qq_cur->failed_cnt++;
                break;
            }
        }

        if(pkt_qq_cur_PHYdelay > pkt_qq_ddl){//如果该节点并非所要找的节点，并且该数据包时延大于ddl，就删除该节点
            deleteNUM_delay++;
            struct pkt_qq *pkt_qq_cur_next = pkt_qq_cur->next;
                pkt_qq_delete(pkt_qq_cur,osh);
        
            pkt_qq_cur = pkt_qq_cur_next;
            index++;
            
            continue;
        }
        index++;                 


        pkt_qq_cur = pkt_qq_cur->next;

        
    }
    //printk("****************[fyl] index:deleteNUM_delay----------(%u:%u)",index,deleteNUM_delay);

    mutex_unlock(&pkt_qq_mutex); // 解锁
}


