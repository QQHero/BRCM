(window.webpackJsonp=window.webpackJsonp||[]).push([["phonePppoe"],{"3dc9":function(a,e,t){"use strict";t.r(e);var r=t("05af"),s={props:{isVpn:Boolean,formData:Object,propName:Object},data:()=>({PPPOE_VALID:r.h,userLabel:"",userPlaceholder:"",pwdLabel:"",pwdPlaceholder:""}),watch:{isVpn:{handler(a){a?(this.userLabel=_("User Name"),this.userPlaceholder=_("User Name"),this.pwdLabel=_("Password"),this.pwdPlaceholder=_("Password")):(this.userLabel=_("PPPoE Username"),this.userPlaceholder=_("Enter the user name from your ISP"),this.pwdLabel=_("PPPoE Password"),this.pwdPlaceholder=_("Password from your ISP"))},immediate:!0}}},n=t("0b56"),o=Object(n.a)(s,(function render(){var a=this,e=a._self._c;return e("div",[e("v-form-item",{attrs:{label:a.userLabel,prop:a.propName.username}},[e("v-input",{attrs:{placeholder:a.userPlaceholder,valid:a.PPPOE_VALID,maxlength:128,"is-clear":""},model:{value:a.formData[a.propName.username],callback:function(e){a.$set(a.formData,a.propName.username,e)},expression:"formData[propName.username]"}})],1),e("v-form-item",{attrs:{label:a.pwdLabel,prop:a.propName.password}},[e("v-input",{attrs:{placeholder:a.pwdPlaceholder,valid:a.PPPOE_VALID,type:"password","show-password":"",maxlength:128,"is-clear":""},model:{value:a.formData[a.propName.password],callback:function(e){a.$set(a.formData,a.propName.password,e)},expression:"formData[propName.password]"}})],1)],1)}),[],!1,null,null,null).exports,p=t("7736"),i=t("ffe9"),l=t("6b4c"),P=t("4040"),m=t("710d"),d={components:{PppoeSet:o,StaticSet:i.a,VlanSet:l.a},mixins:[P.a],computed:{...Object(p.e)(["wanCfg","lanCfg"]),isVpn(){return this.wanCfg.ispType===r.n.RUSSIA&&(this.wanCfg.wanType===r.u.L2TP||this.wanCfg.wanType===r.u.PPTP)}},data(){return{WAN_TYPE:r.u,WAN_ISP:r.n,WAN_TYPE_LABEL:r.v,vpnServer:[r.j,this.checkVpnServer],propName:{},[r.u.PPPOE]:{username:"wanPPPoEUser",password:"wanPPPoEPwd"},[r.u.L2TP]:{username:"vpnL2tpUser",password:"vpnL2tpPwd"},[r.u.PPTP]:{username:"vpnPptpUser",password:"vpnPptpPwd"},[r.u.PPPOE2]:{username:"vpnPPPoEUser",password:"vpnPPPoEPwd"}}},created(){this.propName=Object(m.e)(this[this.wanCfg.wanType||r.u.PPPOE])},methods:{checkVpnServer(){let a=this.formData.vpnServer,e="";return this.$valid.ip.all(a)||(e=Object(m.b)(a,this.lanCfg.lanMask,this.lanCfg.lanIP,this.lanCfg.lanMask)),e?_("%s and %s (%s) must not be on the same network segment",[_("Server IP Address/Domain Name"),_("LAN IP Address"),this.lanCfg.lanIP]):""},submitForm(){"static"!==this.formData.vpnWanType&&(this.formData.wanIP=this.wanCfg.wanIP,this.formData.wanMask=this.wanCfg.wanMask,this.formData.wanGateway=this.wanCfg.wanGateway,this.formData.wanDns1=this.wanCfg.wanDns1,this.formData.wanDns2=this.wanCfg.wanDns2),this.submit()}}},f=Object(n.a)(d,(function render(){var a=this,e=a._self._c;return e("v-form",{attrs:{"is-loading":a.isLoading,"submit-text":a.isLoading?a._("p#kJJ#Connecting…"):a._("Next")},on:{submit:a.submitForm},scopedSlots:a._u([{key:"title",fn:function(){return[e("v-title",{attrs:{title:a.isVpn?a.wanCfg.wanType===a.WAN_TYPE.PPTP?"PPTP":"L2TP":a._("PPPoE")}})]},proxy:!0}])},[e("v-form-item",{attrs:{label:a._("Internet Connection Type")}},[a._v(" "+a._s(a.WAN_TYPE_LABEL[a.wanCfg.wanType])+" ")]),a.isVpn?e("v-form-item",{attrs:{label:a._("Server IP Address/Domain Name"),prop:"vpnServer"}},[e("v-input",{attrs:{valid:a.vpnServer,maxlength:63,"is-clear":""},model:{value:a.formData.vpnServer,callback:function(e){a.$set(a.formData,"vpnServer",e)},expression:"formData.vpnServer"}})],1):a._e(),e("pppoe-set",{attrs:{"is-vpn":a.isVpn,"form-data":a.formData,propName:a.propName}}),a.wanCfg.ispType===a.WAN_ISP.MANUAL?[e("v-line"),e("vlan-set",{attrs:{formData:a.formData}})]:a.isVpn||a.wanCfg.wanType===a.WAN_TYPE.PPPOE2?[e("v-line"),e("v-form-item",{attrs:{label:a._("Address Type")}},[e("v-checkbox",{attrs:{"on-value":"dhcp","off-value":"static"},model:{value:a.formData.vpnWanType,callback:function(e){a.$set(a.formData,"vpnWanType",e)},expression:"formData.vpnWanType"}})],1),"static"===a.formData.vpnWanType?e("static-set",{attrs:{formData:a.formData}}):a._e()]:a._e()],2)}),[],!1,null,null,null);e.default=f.exports}}]);