(window.webpackJsonp=window.webpackJsonp||[]).push([["wifiGuest"],{8309:function(e,t,s){"use strict";s.r(t);var i=s("d2db"),u=s("539b"),a=s("710d"),r={mixins:[i.a],data:()=>({rules:{guestSSID:Object(a.e)(u.p),guestSSID_5g:Object(a.e)(u.p),guestSSID_6g:Object(a.e)(u.p),guestPwd:Object(a.e)(u.m),guestDownSpeed:Object(a.e)(u.o),guestUpSpeed:Object(a.e)(u.o)},ruleForm:{guestEn:!1,guestSSID:"",guestSSID_5g:"",guestSSID_6g:"",guestSecurityMode:!1,guestPwd:"",guestValidTime:"4",guestUpSpeed:"0",guestDownSpeed:"0"},speedOptions:Object(a.e)(u.n),timeOptions:[{label:_("4 hours"),value:"4"},{label:_("8 hours"),value:"8"},{label:_("Always"),value:"0"}],CONFIG_WIFI_SUPPORT_6G:CONFIG_WIFI_SUPPORT_6G}),methods:{changeGuestEn(e){this.$emit("submit",e)},beforeSubmit(e){if(e.guestEn){let t=this.relativeData;if("y"===CONFIG_WIFI_SUPPORT_6G){if(e.guestSSID==t.wifiSSID||e.guestSSID==t.wifiSSID_5g||e.guestSSID==t.wifiSSID_6g||e.guestSSID_5g==t.wifiSSID||e.guestSSID_5g==t.wifiSSID_5g||e.guestSSID_5g==t.wifiSSID_6g||e.guestSSID_6g==t.wifiSSID||e.guestSSID_6g==t.wifiSSID_5g||e.guestSSID_6g==t.wifiSSID_6g)return _("The WiFi name of Guest Network and the WiFi name of the main network cannot be the same")}else if(e.guestSSID==t.wifiSSID||e.guestSSID==t.wifiSSID_5g||e.guestSSID_5g==t.wifiSSID||e.guestSSID_5g==t.wifiSSID_5g)return _("The WiFi name of Guest Network and the WiFi name of the main network cannot be the same");if(e.guestSSID==e.guestSSID_5g||e.guestSSID==e.guestSSID_6g||e.guestSSID_5g==e.guestSSID_6g)return _("The WiFi name cannot be repeated. Please reset.");e.guestDownSpeed=e.guestUpSpeed}else e.guestPwd=this.formData.guestPwd;return e}}},o=s("0b56"),g={components:{WifiGuest:Object(o.a)(r,(function render(){var e=this,t=e._self._c;return t("v-form",{ref:e.name,attrs:{rules:e.rules,"before-submit":e.beforeSubmit}},[t("v-form-item",{attrs:{label:e._("Guest WiFi"),prop:"guestEn"}},[t("v-switch",{on:{change:e.changeGuestEn},model:{value:e.ruleForm.guestEn,callback:function(t){e.$set(e.ruleForm,"guestEn",t)},expression:"ruleForm.guestEn"}})],1),t("collapse-transition",[e.ruleForm.guestEn?t("div",[t("v-form-item",{attrs:{label:e._("2.4 GHz WiFi Name"),prop:"guestSSID"}},[t("v-input",{attrs:{maxlength:32},model:{value:e.ruleForm.guestSSID,callback:function(t){e.$set(e.ruleForm,"guestSSID",t)},expression:"ruleForm.guestSSID"}})],1),t("v-form-item",{attrs:{label:e._("5 GHz WiFi Name"),prop:"guestSSID_5g"}},[t("v-input",{attrs:{maxlength:32},model:{value:e.ruleForm.guestSSID_5g,callback:function(t){e.$set(e.ruleForm,"guestSSID_5g",t)},expression:"ruleForm.guestSSID_5g"}})],1),"y"===e.CONFIG_WIFI_SUPPORT_6G?t("v-form-item",{attrs:{label:e._("6 GHz WiFi Name"),prop:"guestSSID_6g"}},[t("v-input",{attrs:{maxlength:32},model:{value:e.ruleForm.guestSSID_6g,callback:function(t){e.$set(e.ruleForm,"guestSSID_6g",t)},expression:"ruleForm.guestSSID_6g"}})],1):e._e(),t("v-form-item",{attrs:{label:e._("WiFi Password"),prop:"guestPwd",required:!1}},[t("v-input",{attrs:{type:"password","show-password":"",placeholder:e._("No password yet"),maxlength:63},model:{value:e.ruleForm.guestPwd,callback:function(t){e.$set(e.ruleForm,"guestPwd",t)},expression:"ruleForm.guestPwd"}})],1),t("v-form-item",{attrs:{label:e._("Validity"),prop:"guestValidTime"}},[t("v-select",{attrs:{options:e.timeOptions},model:{value:e.ruleForm.guestValidTime,callback:function(t){e.$set(e.ruleForm,"guestValidTime",t)},expression:"ruleForm.guestValidTime"}})],1),t("v-form-item",{attrs:{label:e._("Shared Bandwidth"),prop:"guestUpSpeed"}},[t("v-select",{attrs:{maxlength:4,"is-manual":"",options:e.speedOptions,allow:/\d/g,"manual-text":e._("Custom (Mbps)"),placeholder:e._("1-1000"),unit:"Mbps"},model:{value:e.ruleForm.guestUpSpeed,callback:function(t){e.$set(e.ruleForm,"guestUpSpeed",t)},expression:"ruleForm.guestUpSpeed"}})],1)],1):e._e()])],1)}),[],!1,null,null,null).exports},data:()=>({pageTips:_("Clients connecting to the guest network can only access the internet and communicate with other clients under the guest network."),wifiGuest:{},isShowSubmit:!1,isLoading:!0,wifiBasicCfg:{}}),created(){this.isLoading=!0,this.getData()},methods:{getData(){this.$getData({modules:"wifiGuest,wifiBasicCfg"}).then(e=>{this.isLoading=!1,this.wifiGuest=Object(a.e)(e.wifiGuest),this.wifiBasicCfg=e.wifiBasicCfg,this.isShowSubmit=this.wifiGuest.guestEn})},submit(e){e||this.$nextTick((function(){this.$refs.page.submitForm()})),this.isShowSubmit=e}}},n=Object(o.a)(g,(function render(){var e=this,t=e._self._c;return t("div",[t("v-loading",{attrs:{visible:e.isLoading}}),e.isLoading?e._e():t("v-page",{ref:"page",attrs:{"show-footer":e.isShowSubmit},on:{init:e.getData}},[t("v-page-title",{attrs:{title:e._("Guest WiFi"),tips:e.pageTips}}),t("wifi-guest",{attrs:{name:"wifiGuest",formData:e.wifiGuest,"relative-data":e.wifiBasicCfg},on:{submit:e.submit}})],1)],1)}),[],!1,null,null,null);t.default=n.exports}}]);