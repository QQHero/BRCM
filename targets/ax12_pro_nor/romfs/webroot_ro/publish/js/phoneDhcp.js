(window.webpackJsonp=window.webpackJsonp||[]).push([["phoneDhcp"],{"6cff":function(t,n,e){},e004:function(t,n,e){"use strict";e("6cff")},fb9b:function(t,n,e){"use strict";e.r(n);var a=e("7736"),i=e("4040"),o=e("6b4c"),s=e("05af"),c={components:{VlanSet:o.a},mixins:[i.a],computed:{...Object(a.e)(["wanCfg"])},data:()=>({WAN_ISP:s.n,WAN_TYPE_LABEL:s.v})},r=(e("e004"),e("0b56")),f=Object(r.a)(c,(function render(){var t=this,n=t._self._c;return n("v-form",{attrs:{"is-loading":t.isLoading,"submit-text":t.isLoading?t._("p#kJJ#Connecting…"):t._("Next")},on:{submit:t.submit},scopedSlots:t._u([{key:"title",fn:function(){return[n("v-title",{attrs:{title:t._("Dynamic IP")}})]},proxy:!0}])},[n("v-form-item",{attrs:{label:t._("Internet Connection Type")}},[t._v(" "+t._s(t.WAN_TYPE_LABEL[t.wanCfg.wanType])+" ")]),t.wanCfg.ispType===t.WAN_ISP.MANUAL?[n("v-line"),n("vlan-set",{attrs:{formData:t.formData}})]:t._e()],2)}),[],!1,null,null,null);n.default=f.exports}}]);