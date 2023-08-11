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




/*之前在每次用到链表时都加锁，太浪费时间。
如今将代码分为三种：
1.尾部追加
2.头部删减
3.中间读取和删改
只要保证对链表的这三个操作互斥就可以
为了使逻辑更简单，设置只会在头部删减，而且只有当链表长度大于10时才删减，从而避免出现首尾相互影响的情况。
为了避免中间读取时出现问题，可以单独针对头部和尾部加锁,根据len参数，当读取到头部和尾部时加锁，一旦确定不是头部和尾部，就去掉锁。
具体锁逻辑：
定义两个互斥锁（一个头一个尾）一个读写锁。
所有对于pkt_qq_chain_len的操作全都上锁
每次尾部追加均加pkt_qq_mutex_tail锁
每次删除操作和读写已有节点均追加pkt_qq_mutex_head锁
为了减少删除操作和读写已有节点互斥造成的等待，在删除前判断是否锁已被使用，若是就跳过删除操作。
*/






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
    uint32 airtime_self;/*该数据包所在帧的airtime*/
    uint32 airtime_all;/*该数据包进入硬件发送队列以后所有已发送帧的airtime之和*/
    uint32 failed_time_list_qq[10];/*发射失败时间列表*/
    uint32 ccastats_qq[CCASTATS_MAX];/*一些发送时间相关的变量*/
    struct pkt_qq *next;
    struct pkt_qq *prev;
    
}pkt_qq_t;
struct pkt_qq *pkt_qq_chain_head = (struct pkt_qq *)NULL;
struct pkt_qq *pkt_qq_chain_tail = (struct pkt_qq *)NULL;
uint16 pkt_qq_chain_len = 0;
uint16 max_pkt_qq_chain_len = 666;
uint16 pkt_qq_ddl = 300;
//DEFINE_MUTEX(pkt_qq_mutex); // 定义一个互斥锁
DEFINE_MUTEX(pkt_qq_mutex_tail); // 定义一个互斥锁
DEFINE_MUTEX(pkt_qq_mutex_head); // 定义一个互斥锁
DEFINE_RWLOCK(pkt_qq_mutex_len); // 定义一个读写锁

bool pkt_qq_chain_len_in_range(uint16 upper_bound,uint16 lower_bound){
    
    read_lock(&pkt_qq_mutex_len); // 加锁
    if((pkt_qq_chain_len > upper_bound)||((pkt_qq_chain_len < lower_bound))){
        read_unlock(&pkt_qq_mutex_len); // 解锁
        return FALSE;
    }
    read_unlock(&pkt_qq_mutex_len); // 解锁
    return TRUE;
}


/*
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
*/

void pkt_qq_add_at_tail(struct pkt_qq *pkt_qq_cur){
    if (pkt_qq_cur == (struct pkt_qq *)NULL){
        printk("_______________error_qq: null pointer_____________");
        return;
    }
    pkt_qq_cur->next = (struct pkt_qq *)NULL;
    pkt_qq_cur->prev = (struct pkt_qq *)NULL;

    mutex_lock(&pkt_qq_mutex_tail); // 加锁
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

    mutex_unlock(&pkt_qq_mutex_tail); // 解锁

    write_lock(&pkt_qq_mutex_len); // 加锁
    pkt_qq_chain_len++;
    write_unlock(&pkt_qq_mutex_len); // 解锁
}
void pkt_qq_delete(struct pkt_qq *pkt_qq_cur,osl_t *osh){
    //mutex_lock(&pkt_qq_mutex); // 加锁
    //printk("**************debug11*******************");
    if((pkt_qq_cur->pktSEQ == pkt_qq_chain_head->pktSEQ)&&(pkt_qq_cur->prev==(struct pkt_qq *)NULL)){
        //printk("**************debug12******************");
        if(pkt_qq_chain_head->next == (struct pkt_qq *)NULL){//防止删除节点时出错
            //printk("**************debug13*******************");
            MFREE(osh, pkt_qq_cur, sizeof(pkt_qq_t));
            pkt_qq_chain_head=(struct pkt_qq *)NULL;
            pkt_qq_chain_tail=pkt_qq_chain_head;
            read_lock(&pkt_qq_mutex_len); // 加锁
            //printk("**************debug14*******************");
            if(pkt_qq_chain_len!=1){
                printk("****************wrong pkt_qq_chain_len----------(%u)",pkt_qq_chain_len);

            }
            //printk("**************debug15*******************");
            read_unlock(&pkt_qq_mutex_len); // 解锁
            write_lock(&pkt_qq_mutex_len); // 加锁
            pkt_qq_chain_len=0;
            write_unlock(&pkt_qq_mutex_len); // 解锁

        }else{
            //printk("**************debug16*******************");
            pkt_qq_chain_head = pkt_qq_chain_head->next;
            (*pkt_qq_chain_head).prev = (struct pkt_qq *)NULL;
            if(pkt_qq_cur->next==NULL){
                pkt_qq_chain_tail=pkt_qq_chain_head;
            }
            //printk("**************debug17*******************");
            write_lock(&pkt_qq_mutex_len); // 加锁
            pkt_qq_chain_len--;
            write_unlock(&pkt_qq_mutex_len); // 解锁

            MFREE(osh, pkt_qq_cur, sizeof(pkt_qq_t));
        }
        
    }else{
        //printk("**************debug18*******************");
        if(pkt_qq_cur->prev!=(struct pkt_qq *)NULL){
            (*((*pkt_qq_cur).prev)).next = (*pkt_qq_cur).next;
        }
        if(pkt_qq_cur->next!=(struct pkt_qq *)NULL){
            (*((*pkt_qq_cur).next)).prev = (*pkt_qq_cur).prev;
        }else{
            pkt_qq_chain_tail=pkt_qq_chain_tail->prev;
            
        }
        //printk("**************debug19*******************");
        
        MFREE(osh, pkt_qq_cur, sizeof(pkt_qq_t));
        write_lock(&pkt_qq_mutex_len); // 加锁
        pkt_qq_chain_len--;
        write_unlock(&pkt_qq_mutex_len); // 解锁
        //printk("**************debug10*******************");
    }
    return;
//mutex_unlock(&pkt_qq_mutex); // 解锁
}


void pkt_qq_del_timeout_ergodic(osl_t *osh){
    uint32 cur_time = OSL_SYSUPTIME();
    if(!mutex_trylock(&pkt_qq_mutex_head)){
        //mutex_unlock(&pkt_qq_mutex_head); // 解锁
        return;
    }
    mutex_unlock(&pkt_qq_mutex_head); // 解锁
    read_lock(&pkt_qq_mutex_len); // 加锁
    //uint16 cur_pkt_qq_chain_len = pkt_qq_chain_len;
    read_unlock(&pkt_qq_mutex_len); // 解锁
    uint16 index = 0;
    if(!pkt_qq_chain_len_in_range(max_pkt_qq_chain_len,0)){
            
        //bool sniffer_flag = FALSE;
        //sniffer_flag = pkt_qq_len_error_sniffer(osh, 41);
        mutex_lock(&pkt_qq_mutex_head); // 加锁
        pkt_qq_delete(pkt_qq_chain_head,osh);
        mutex_unlock(&pkt_qq_mutex_head); // 解锁
        /*
        if(pkt_qq_len_error_sniffer(osh, 4)&& !sniffer_flag){
            printk("_______error here4");
        }*/
    }
    if(!pkt_qq_chain_len_in_range(max_pkt_qq_chain_len-66,0)){
        //uint16 index = 0;
        mutex_lock(&pkt_qq_mutex_head); // 加锁
        struct pkt_qq *pkt_qq_cur = pkt_qq_chain_head;
        //printk(KERN_ALERT"###########pkt_qq_chain_len before delete(%d)",pkt_qq_chain_len);
        while(pkt_qq_cur != (struct pkt_qq *)NULL){                    
            //printk("###****************index----------(%u)",index);
            //if(cur_pkt_qq_chain_len<index + 10){//如果发现已经接近尾部就停止
            if(!pkt_qq_chain_len_in_range((index + 10),0)){//如果发现已经接近尾部就停止
                mutex_unlock(&pkt_qq_mutex_head); // 解锁
                return;
            }
            if(!pkt_qq_chain_len_in_range(max_pkt_qq_chain_len,0)){        
                printk("****************wrong pkt_qq_chain_len2----------(%u)",pkt_qq_chain_len);
            }
            //uint32 cur_time = OSL_SYSUPTIME();
            uint32 pkt_qq_cur_PHYdelay = cur_time - pkt_qq_cur->into_hw_time;
            struct pkt_qq *pkt_qq_cur_next = pkt_qq_cur->next;
            if((pkt_qq_cur_PHYdelay>pkt_qq_ddl)||(pkt_qq_cur->free_time > 0)){/*每隔一段时间删除超时的数据包节点以及已经ACK的数据包*/
                pkt_qq_delete(pkt_qq_cur,osh);

            }
            pkt_qq_cur = pkt_qq_cur_next;
            //printk("###****************[fyl] pkt_qq_cur_PHYdelay----------(%u)",pkt_qq_cur_PHYdelay);
            //printk("###****************[fyl] FrameID@@@@@@@@@@@@@@@(%u)",pkt_qq_cur->FrameID);
            index++;
        }
        mutex_unlock(&pkt_qq_mutex_head); // 解锁
        //printk("###****************index----------(%u)",index);
        //printk(KERN_ALERT"###########pkt_qq_chain_len after delete(%u)",pkt_qq_chain_len);
    }
}


void ack_update_qq(wlc_info_t *wlc, scb_ampdu_tid_ini_t* ini,ampdu_tx_info_t *ampdu_tx, tx_status_t *txs, wlc_pkttag_t* pkttag, wlc_txh_info_t *txh_info,bool was_acked,osl_t *osh){
    //mutex_lock(&pkt_qq_mutex); // 加锁
    //printk("**************debug1*******************");
    uint slottime_qq = APHY_SLOT_TIME;
    if (wlc->band->gmode && !wlc->shortslot)
        slottime_qq = BPHY_SLOT_TIME;
    uint16 curTxFrameID = txh_info->TxFrameID;
    uint8 tid = ini->tid;
    uint16 index = 0;
    //uint16 deleteNUM_delay = 0;
    uint32 cur_airtime = TX_STATUS128_TXDUR(TX_STATUS_MACTXS_S2(txs));
    mutex_lock(&pkt_qq_mutex_head); // 加锁
    read_lock(&pkt_qq_mutex_len); // 加锁
    uint16 cur_pkt_qq_chain_len = pkt_qq_chain_len;
    read_unlock(&pkt_qq_mutex_len); // 解锁
    struct pkt_qq *pkt_qq_cur = pkt_qq_chain_head;
    while((pkt_qq_cur != (struct pkt_qq *)NULL)&&(index<cur_pkt_qq_chain_len)){
        struct pkt_qq *pkt_qq_cur_next = pkt_qq_cur->next;
        //printk("**************debug5*******************");
        index++;
        if(cur_pkt_qq_chain_len<=index+2){//代表很有可能是末尾的节点，此时需要加上尾端锁。
        //但是要注意，一定要避免循环中未解锁，以及多次循环导致的重复加锁。
            mutex_lock(&pkt_qq_mutex_tail); // 加锁
            //printk("**************debug7*******************");
        }
        pkt_qq_cur->airtime_all += cur_airtime;
        uint32 cur_time = OSL_SYSUPTIME();
        uint32 pkt_qq_cur_PHYdelay = cur_time - pkt_qq_cur->into_hw_time;
        //if(pkt_qq_cur->pktSEQ == cur_pktSEQ ){//如果找到了这个数据包
        if(pkt_qq_cur->FrameID == htol16(curTxFrameID) ){//如果找到了这个数据包

            pkt_qq_cur->airtime_self += cur_airtime;
            pkt_qq_cur->pktSEQ = pkttag->seq;
            if(was_acked){//如果成功ACK 
                pkt_qq_cur->free_time = cur_time;
                pkt_qq_cur->free_txop = wlc_bmac_cca_read_counter(wlc->hw, M_CCA_TXOP_L_OFFSET(wlc), M_CCA_TXOP_H_OFFSET(wlc));

                uint32 ccastats_qq_cur[CCASTATS_MAX];
                uint32 ccastats_qq_differ[CCASTATS_MAX];
                for (int i = 0; i < CCASTATS_MAX; i++) {
                    ccastats_qq_cur[i] = wlc_bmac_cca_read_counter(wlc->hw, 4 * i, (4 * i + 2));
                    ccastats_qq_differ[i] = ccastats_qq_cur[i] - pkt_qq_cur->ccastats_qq[i];
                }
                uint32 busy_qq = ccastats_qq_differ[CCASTATS_TXDUR] +
                    ccastats_qq_differ[CCASTATS_INBSS] +
                    ccastats_qq_differ[CCASTATS_OBSS] +
                    ccastats_qq_differ[CCASTATS_NOCTG] +
                    ccastats_qq_differ[CCASTATS_NOPKT];
                uint32 txop_in_fly = pkt_qq_cur->free_txop - pkt_qq_cur->into_hw_txop;
                if(pkt_qq_cur_PHYdelay >= 17 || pkt_qq_cur->failed_cnt>1){//如果时延较高就打印出来
                    printk("----------[fyl] FrameID----------(%u)1",pkt_qq_cur->FrameID);
                    printk("----------[fyl] pktSEQ----------(%u)1",pkt_qq_cur->pktSEQ);
                    printk("----------[fyl] pkt_qq_cur->failed_cnt----------(%u)",pkt_qq_cur->failed_cnt);
                    printk("----------[fyl] pkt_qq_cur_PHYdelay----------(%u)",pkt_qq_cur_PHYdelay);
                    printk("----------[fyl] pkt_qq_cur->free_time----------(%u)",pkt_qq_cur->free_time);
                    printk("----------[fyl] pkt_qq_cur->into_hw_time----------(%u)",pkt_qq_cur->into_hw_time);
                    printk("----------[fyl] pkt_qq_cur->airtime_self----------(%u)",pkt_qq_cur->airtime_self);
                    printk("----------[fyl] pkt_qq_cur->airtime_all----------(%u)",pkt_qq_cur->airtime_all);
                    printk("----------[fyl] ini->tid----------(%u)",tid);
                    printk("----------[fyl] busy_qq----------(%u)",busy_qq);
                    printk("----------[fyl] free_txop:::into_hw_txop:::txop_in_fly:::txop*9----------(%u:%u:%u:%u)",pkt_qq_cur->free_txop, pkt_qq_cur->into_hw_txop,txop_in_fly,txop_in_fly*slottime_qq);
                    printk("--[fyl] txs->status.rts_tx_cnt:txs->status.cts_tx_cnt---(%u:%u)",txs->status.rts_tx_cnt,txs->status.cts_rx_cnt);
                    printk("ccastats_qq_differ:0(%u)1(%u)2(%u)3(%u)4(%u)5(%u)6(%u)7(%u)8(%u)",ccastats_qq_differ[0]\
                        ,ccastats_qq_differ[1],ccastats_qq_differ[2],ccastats_qq_differ[3]\
                        ,ccastats_qq_differ[4],ccastats_qq_differ[5],ccastats_qq_differ[6]\
                        ,ccastats_qq_differ[7],ccastats_qq_differ[8]);
                    if(pkt_qq_cur->failed_cnt>0){
                        printk("failed_time_list_qq:0(%u)1(%u)2(%u)3(%u)4(%u)5(%u)6(%u)7(%u)8(%u)9(%u)",pkt_qq_cur->failed_time_list_qq[0]\
                        ,pkt_qq_cur->failed_time_list_qq[1],pkt_qq_cur->failed_time_list_qq[2],pkt_qq_cur->failed_time_list_qq[3]\
                        ,pkt_qq_cur->failed_time_list_qq[4],pkt_qq_cur->failed_time_list_qq[5],pkt_qq_cur->failed_time_list_qq[6]\
                        ,pkt_qq_cur->failed_time_list_qq[7],pkt_qq_cur->failed_time_list_qq[8],pkt_qq_cur->failed_time_list_qq[9]);
                    }
                }
                /*删除已经ACK的数据包节点*/
                //struct pkt_qq *pkt_qq_cur_next = pkt_qq_cur->next;
                pkt_qq_delete(pkt_qq_cur,osh);
                //pkt_qq_cur = pkt_qq_cur_next;

                //break;                   
                //pkt_qq_cur = pkt_qq_cur->next;
                //continue; 
            }else{//未收到ACK则增加计数
                if((pkt_qq_cur->failed_cnt>0)&&(pkt_qq_cur->failed_time_list_qq[pkt_qq_cur->failed_cnt-1]==cur_time)){/*如果同时到达的，就不认为是重传*/
                    
                }else{
                    if(pkt_qq_cur->failed_cnt<10){
                        pkt_qq_cur->failed_time_list_qq[pkt_qq_cur->failed_cnt] = cur_time;
                    }
                    
                    pkt_qq_cur->failed_cnt++;
                    //break;
                }
                //pkt_qq_cur = pkt_qq_cur->next;continue;
            }
        }else{

            if(pkt_qq_cur_PHYdelay > pkt_qq_ddl){//如果该节点并非所要找的节点，并且该数据包时延大于ddl，就删除该节点
                //deleteNUM_delay++;
                //struct pkt_qq *pkt_qq_cur_next = pkt_qq_cur->next;
                pkt_qq_delete(pkt_qq_cur,osh);
            
                //pkt_qq_cur = pkt_qq_cur_next;
                //index++;
                
                //continue;
            }
        }
        
        pkt_qq_cur = pkt_qq_cur_next;     
        //printk("**************debug4*******************");

        if(cur_pkt_qq_chain_len<=index+2){//代表很有可能是末尾的节点，此时需要加上尾端锁
            mutex_unlock(&pkt_qq_mutex_tail); // 解锁
            //printk("**************debug6*******************");
        }
        //printk("**************debug3*******************");


        
    }

    mutex_unlock(&pkt_qq_mutex_head); // 解锁
    //printk("****************[fyl] index:deleteNUM_delay----------(%u:%u)",index,deleteNUM_delay);

    //printk("**************debug2*******************");
    pkt_qq_del_timeout_ergodic(osh);
    //mutex_unlock(&pkt_qq_mutex); // 解锁
    //printk("**************debug8*******************");
}


