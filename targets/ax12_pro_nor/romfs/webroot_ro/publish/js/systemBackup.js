(window.webpackJsonp=window.webpackJsonp||[]).push([["systemBackup"],{2478:function(e,s,t){"use strict";t("61e5")},5537:function(e,s,t){"use strict";t("6b5d")},6144:function(e,s,t){"use strict";t("61a2")},"61a2":function(e,s,t){},"61e5":function(e,s,t){},"6b5d":function(e,s,t){},a2dc:function(e,s,t){"use strict";t.r(s);var i={data:()=>({showDialog:!1,isConfirmLoading:!1}),methods:{backupClick(){window.location="cgi-bin/DownloadCfg/RouterCfm.cfg"},restoreClick(){this.showDialog=!0},confirmUpload(){this.$refs.upload.submit()},cancelUpload(){this.$refs.upload.clearFile()},beforeUpload(e){return e?/.cfg$/.test(e)?(this.isConfirmLoading=!0,!0):(this.$message.error(_("Please choose a CFG file")),!1):(this.$message.error(_("Please choose the configuration file")),!1)},onSuccess(e){this.showDialog=!1,this.$emit("showProgressDialog",0==e.error)}}},o=(t("5537"),t("0b56")),a=Object(o.a)(i,(function render(){var e=this,s=e._self._c;return s("div",[s("div",{staticClass:"backup-set-warp backup-set-backup"},[s("div",{staticClass:"backup-set-warp__title"},[e._v(e._s(e._("Backup")))]),s("div",{staticClass:"backup-set-warp__tips"},[e._v(" "+e._s(e._("Save the current configuration to local host"))+" ")]),s("div",{staticClass:"backup-set-warp__btn"},[s("v-button",{on:{click:e.backupClick}},[e._v(e._s(e._("Backup")))])],1)]),s("div",{staticClass:"backup-set-warp"},[s("div",{staticClass:"backup-set-warp__title"},[e._v(e._s(e._("Restore")))]),s("div",{staticClass:"backup-set-warp__tips"},[e._v(" "+e._s(e._("Restore to the previous configurations you backed up (the backup file is a CFG file)."))+" ")]),s("div",{staticClass:"backup-set-warp__btn"},[s("v-button",{on:{click:e.restoreClick}},[e._v(e._s(e._("Restore")))])],1)]),s("v-dialog",{attrs:{width:560,title:e._("Restore"),confirmButtonText:e._("W#UEj#Restore"),isLoading:e.isConfirmLoading},on:{confirm:e.confirmUpload},model:{value:e.showDialog,callback:function(s){e.showDialog=s},expression:"showDialog"}},[s("div",{staticClass:"resore"},[s("div",{staticClass:"resore__title"},[e._v(e._s(e._("Choose configuration file")))]),s("div",{staticClass:"resore__tips"},[e._v(" "+e._s(e._("Locate and upload the backup file (the backup file is a CFG file)."))+" ")]),s("v-upload",{ref:"upload",attrs:{action:"/cgi-bin/UploadCfg",accept:".cfg",showFileList:!0,noFileText:e._("No file chosen"),beforeUpload:e.beforeUpload,onSuccess:e.onSuccess}})],1)])],1)}),[],!1,null,null,null).exports,r={props:{data:{type:Array,default:()=>[]}},data:()=>({showDialog:!1,sn:"",isMainRouter:!0,mainTip:{title:_("Do you want to reset the primary node?"),tip:_("After the primary node is reset, the whole network loses internet availability and needs to be reconfigured. You are recommended to back up the configurations first.")},childTip:{title:_("Do you want to reset the secondary node?"),tip:_("After the secondary node is reset, if it is a secondary node in a package, it can automatically join in the network. Otherwise, you need to manually add it to the network.")}}),methods:{confirmReset(){this.$emit("reset",this.sn),this.showDialog=!1},resetClick(e){this.sn=e.sn,this.isMainRouter="controller"==e.nodeType,this.showDialog=!0}}},l=(t("2478"),Object(o.a)(r,(function render(){var e=this,s=e._self._c;return s("div",{staticClass:"backup-set-warp reset-set"},[s("div",{staticClass:"backup-set-warp__title"},[e._v(e._s(e._("Reset")))]),s("div",{staticClass:"backup-set-warp__tips"},[e._v(" "+e._s(e._("Resetting clears all configurations and restores the device to factory settings. Please operation with caution."))+" ")]),s("v-table",{attrs:{data:e.data,border:""}},[s("v-table-col",{attrs:{prop:"nodeName",label:e._("Device Name"),align:"center"}}),s("v-table-col",{attrs:{label:e._("Operation"),align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return[s("v-button",{on:{click:function(s){return e.resetClick(t)}}},[s("div",{staticClass:"min-width"},[e._v(e._s(e._("Reset")))])])]}}])})],1),s("v-dialog",{attrs:{width:560,title:e._("Reset"),confirmButtonText:e._("Reset")},on:{confirm:e.confirmReset},model:{value:e.showDialog,callback:function(s){e.showDialog=s},expression:"showDialog"}},[s("div",{staticClass:"reset-dialog"},[s("span",{staticClass:"v-icon-remind-line"}),s("div",{staticClass:"reset-dialog__title"},[e._v(" "+e._s(e.isMainRouter?e.mainTip.title:e.childTip.title)+" ")]),s("div",{staticClass:"reset-dialog__tips"},[s("div",[e._v(" "+e._s(e.isMainRouter?e.mainTip.tip:e.childTip.tip)+" ")]),s("div",[e._v(" "+e._s(e._("Do not cut off the power supply of the device during the reset. Otherwise, the device may be damaged."))+" ")])])])])],1)}),[],!1,null,null,null).exports),n=t("710d"),c={components:{backup:a,restoreList:l,ProgressBar:t("e117").a},data(){return this.CONFIG_MESH_SUPPORT="y"==window.CONFIG_MESH_SUPPORT,{pageTitle:_("Backup & Restore"),pageTips:"",deviceVersionList:[],isReset:!1,showProgress:!1,progressRestore:{title:_("Restoring… Please wait"),tips:""},progressReset:{title:_("Resetting… Please wait."),tips:_("After the router is reset, its login IP address is changed to 192.168.0.1")},resultDialog:!0,showDialog:!1,isSuccess:!0,resultSuccess:{title:_("Restored successfully"),tips:_("Back to the login page in 3s")},resultFail:{title:_("Failed to restore"),tips:_("Back to the login page in 3s")},showResetDialog:!1}},created(){this.updateData()},computed:{progress(){return this.isReset?this.progressReset:this.progressRestore},result(){return this.isSuccess?this.resultSuccess:this.resultFail},toDomain(){return!this.isReset},toIp(){return this.isReset?"192.168.0.1":""}},methods:{init(){this.updateData()},updateData(){this.$getData({modules:"deviceVersionList"}).then(e=>{this.deviceVersionList=Object(n.e)(e.deviceVersionList),this.isloading=!1})},showProgressDialog(e){this.isReset=!1,this.showProgress=!0,this.isSuccess=!!e},reset(e){let s={systemReset:{sn:e}};this.$postModule(s,!1).then(()=>{this.isReset=!0})},restoreSuceess(e){this.showDialog=!0,setTimeout(()=>{window.location.href=e},3e3)},confirmReset(){this.reset(""),this.showResetDialog=!1}}},u=(t("6144"),Object(o.a)(c,(function render(){var e=this,s=e._self._c;return s("div",{staticClass:"backup-set"},[s("v-page-title",{attrs:{title:e.pageTitle,tips:e.pageTips}}),s("backup",{on:{showProgressDialog:e.showProgressDialog}}),s("restore-list",{attrs:{data:e.deviceVersionList},on:{reset:e.reset}}),e.CONFIG_MESH_SUPPORT?s("div",{staticClass:"backup-set__btn"},[s("v-button",{attrs:{type:"primary"},on:{click:function(s){e.showResetDialog=!0}}},[e._v(" "+e._s(e._("Restore to Factory Settings"))+" ")])],1):e._e(),e.showProgress?s("progress-bar",{attrs:{title:e.progress.title,tips:e.progress.tips,customSuccess:!e.isReset,toDomain:e.toDomain,ip:e.toIp},on:{success:e.restoreSuceess}}):e._e(),s("v-dialog",{directives:[{name:"show",rawName:"v-show",value:e.showDialog,expression:"showDialog"}],attrs:{width:560,title:e._("Restore"),"show-cancel":!1,"show-confirm":!1},model:{value:e.resultDialog,callback:function(s){e.resultDialog=s},expression:"resultDialog"}},[s("div",{staticClass:"resore-result"},[s("img",{directives:[{name:"show",rawName:"v-show",value:e.isSuccess,expression:"isSuccess"}],staticClass:"resore-result__img",attrs:{src:t("ab4d")}}),s("img",{directives:[{name:"show",rawName:"v-show",value:!e.isSuccess,expression:"!isSuccess"}],staticClass:"resore-result__img",attrs:{src:t("94c2")}}),s("div",{staticClass:"resore-result__title"},[e._v(e._s(e.result.title))]),s("div",{staticClass:"resore-result__tips"},[e._v(e._s(e.result.tips))])])]),s("v-dialog",{attrs:{width:560,title:e._("Reset"),confirmButtonText:e._("Reset")},on:{confirm:e.confirmReset},model:{value:e.showResetDialog,callback:function(s){e.showResetDialog=s},expression:"showResetDialog"}},[s("div",{staticClass:"reset-dialog"},[s("span",{staticClass:"v-icon-remind-line"}),s("div",{staticClass:"reset-dialog__title"},[e._v(" "+e._s(e._("Are you sure you want to reset the whole network?"))+" ")]),s("div",{staticClass:"reset-dialog__tips"},[s("div",[e._v(" "+e._s(e._("After the whole network is reset, devices cannot access the internet and you need to configure the network again. It is recommended that the configurations be backed up first."))+" ")]),s("div",[e._v(" "+e._s(e._("Do not cut off the power supply of the device during the reset. Otherwise, the device may be damaged."))+" ")])])])])],1)}),[],!1,null,null,null));s.default=u.exports}}]);