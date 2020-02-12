/**
 * common.js 公用JS函数库
 */

window.onerror = function(msg,url,l){
	var txt = "";
	txt="There was an error on this page:";
	txt+="Error: " + msg + "|";
	txt+="URL: " + url + "|";
	txt+="Line: " + l + "|";
	txt+="CURRENT: "+window.location.href;
	txt+="|UserAgent:"+navigator.userAgent;
	$.ajax({
        type: "post",
        async: false,
        url: "http://",
        data: {exception: txt},
        dataType: "jsonp",
        jsonp: "callback",
        jsonpCallback:"hdsHandler",
        success: function(json){
        },
        error: function(){
        }
    });
}


/** 公用变量声明处 */

//var js_huodongshu_domain = 'http://m.huodongshu.com';//domain  // 此处声明已经提到abstract.js 中
//var js_huodongshu_domain = 'http://test.huodongshu.com';

var NETWORK_INTERRUPTED = false; // Is network interrupted?
var huodongshu_cd_version = '4.2.0';//软件版本
var  busi_id = '';
var global_pagename = getCurrentUrlname();
var global_is_company = false;
var needDownloadPage = ['event_special.html','event_list_com.html','index.html'];
var moblieOsFlag = 1;//1:andriod  2:ios


document.addEventListener("backbutton",onBackKeyDown,false);

//BackButton按钮
function onBackKeyDown(){
	if($(".global_header .fanhui").attr("href")){
		var fanhui_url=$(".global_header .fanhui").attr("href");
		if(fanhui_url.indexOf("javascript:")==-1){
			window.location.href = fanhui_url;
		}else{
			fanhui_url=fanhui_url.replace("javascript:","");  
			eval(fanhui_url);
		}
	}else if($(".global_header .fanhui").attr("onclick")){
		var fanhui_fun = $(".global_header .fanhui").attr("onclick");
		eval(fanhui_fun);
	}else{
		navigator.app.exitApp();
	}
}

/** 获取url参数  @author lidong 此方法已经移到abstract 中 
function getQueryString(name) 
{
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null){
        var tempstr = decodeURI(r[2]);
        return unescape(tempstr); 
    } 
    return null;
}*/

/** 获取domain值  提入abstract.js 这里暂不维护 
function getCompanyDomain () 
{
    var url = window.location.host;
    var url_arr = url.split('.');
    if (url_arr[0] == 'm' || url_arr[0] == 'www' || url_arr[0] == 'test' || url_arr[0] == 'huodongshu') {
        return '';
    }
    
    return url_arr[0];
}*/

/** 获取字符长度 */
function fontNum(content)
{
    if (typeof content == "undefined") {
        return 0;
      }
      var a = content.match(/[^\x00-\x80]/g);
      return Math.ceil((content.length + (!a ? 0 : a.length)) / 2);
}
function convertToChinese(num){  
    var N = [  
             "零", "一", "二", "三", "四", "五", "六", "七", "八", "九"  
     ]; 
var str = num.toString();  
var len = num.toString().length;  
var C_Num = [];  
for(var i = 0; i < len; i++){  
    C_Num.push(N[str.charAt(i)]);  
}  
return C_Num.join('');  
}

function toMoeny(num){
    if(num == 0){
        return '0';
    }
    num = num.toString().replace(/\$|\,/g,'');
    if(isNaN(num)){
        num="0";
    }
    sign=(num==(num=Math.abs(num)));
    num=Math.floor(num*100+0.50000000001);
    cents=num%100;
    num=Math.floor(num/100).toString();
    if(cents<10){
        cents="0"+cents;
    }
    for(var i=0;i<Math.floor((num.length-(1+i))/3);i++){
        num=num.substring(0,num.length-(4*i+3))+''+num.substring(num.length-(4*i+3));
    }
    var result_value =(((sign)?'':'-')+num+'.'+cents);
    if(result_value == 0){
        return '0';
    }else{
        return result_value;
    }
}
/** 判断是否是企业版 */
/*function isCompany () {
     if("undefined" != typeof cordova){
            return global_is_company;
     }else{
    	 console.log(1);
            var domain = getCompanyDomain();
            if (!!domain) { return true;}
            return false;
     }
    
}*/
function isCompany () {
     if("undefined" != typeof cordova){
    	 var domain = getCompanyDomain();
         if (!!domain) { return true;}
         return global_is_company;
     }else{
            var domain = getCompanyDomain();
            if (!!domain) { return true;}
            return false;
     }
    
}
function isNull(str){
    return str == null || str == "null" || str === "" || str == "undefined" || typeof(str) == "undefined";
}
/** 邮箱验证 ps: 将之前的 hdsIsEmail 改为 isEmail */
function isEmail(email){
    var reg=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
  return reg.test($.trim(email));
}
/** 手机验证 ps: 将之前的 hdsIsmobile 改为 isMobile */
function isMobile(mobile){
     var reg=/^(0|86|17951)?(13|15|18|14|17)\d{9}$/;
     return  reg.test($.trim(mobile));
}
function isPC() {
    var userAgentInfo = navigator.userAgent;
    var Agents = new Array("Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod");
    var flag = true;  
    for (var v = 0; v < Agents.length; v++) {
        if (userAgentInfo.indexOf(Agents[v]) > 0) { flag = false; break; }
    }  
    return flag;
 }
function isApp() {
    var userAgent = navigator.userAgent.toLowerCase();
    if (userAgent.indexOf('huo dong shu') != -1){return true;}
    return false;
}

/** 判断是否是苹果移动设备  将之前的 is_iphone改为 isIphone */
function isIphone() {
    var userAgentInfo = navigator.userAgent;
    var Agents = new Array( "iPhone", "iPad", "iPod");
    var flag = false;  
    for (var v = 0; v < Agents.length; v++) {
        if (userAgentInfo.indexOf(Agents[v]) > 0) { flag = true; break; }
    }  
    return flag;
}

/** 判断是否是Android移动设备  将之前的 is_android改为 isAndroid */
function isAndroid () {
    var userAgentInfo = navigator.userAgent;
    var Agents = new Array("Android");
    var flag = false;  
    for (var v = 0; v < Agents.length; v++) {
        if (userAgentInfo.indexOf(Agents[v]) > 0) { flag = true; break; }
    }  
    return flag;
}
/** 判断是否在微信打开 将之前的 is_weixin改为 isWeixin */
function isWeixin () {
    var userAgent = navigator.userAgent.toLowerCase();
    if (userAgent.indexOf('micromessenger') != -1) {
        return true;
    }
    return false;
}
/** 判断cordova是走Android还是Ios  ajax请求时判断**/
function isCordovaHttp () {
	//if ("undefined" != typeof cordova && moblieOsFlag == 2) {   
	//	 return true;     //Ios
	//}
	return false;   //Android
}
/** 追加js @param url @param callback @param charset */
function loadJS(url,callback,charset) {
  var script = document.createElement('script');
  script.onload = script.onreadystatechange = function ()
  {
    if (script && script.readyState && /^(?!(?:loaded|complete)$)/.test(script.readyState)) {
      return;
    }
    script.onload = script.onreadystatechange = null;
    script.src = '';
    script.parentNode.removeChild(script);
    script = null;
    if(callback){ callback(); }
  };
  script.charset=charset || document.charset || document.characterSet;
  script.src = url;
  try {document.getElementsByTagName("head")[0].appendChild(script);} catch (e) {}
}

/** 从客户端获取信息 */
function getRedisInfo(key){
    key = $.trim(key);
    if("undefined" != typeof cordova){
        return window.localStorage.getItem(key);
    }else{
        return huodongshuGetcookie(key);
    }
    
}
/** 向客户端存储信息 */
function setRedisInfo(key,val){
     key = $.trim(key);
     val = $.trim(val);
     if("undefined" != typeof cordova){
         window.localStorage.setItem(key, val);
     }else{
         huodongshuSetcookie(key,val,9000000000);
     }
}

/** 此方法为中间方法，不建议直接调用 */
function huodongshuAddcookie(objName,objValue,ms){ 
    var str = objName + "=" + escape(objValue);
    if(ms > 0){
        var date = new Date();
        date.setTime(date.getTime() + ms);
        str += ";path=/; expires=" + date.toGMTString();
   }
   document.cookie = str;
}
/** 此方法为中间方法，不建议直接调用 */
function huodongshuSetcookie(name,value,ms){//ms= Days*24*60*60*1000
    name = $.trim(name);
    var tempval = huodongshuGetcookie(name);
    if(tempval){
        var exp = new Date();    //new Date("December 31, 9998");
        exp.setTime(exp.getTime() + ms);
        document.cookie = name + "="+ escape (value) + ";path=/;expires=" + exp.toGMTString();
    }else{
        huodongshuAddcookie(name,value,ms);
    }
    
}
/** 此方法为中间方法，不建议直接调用 */
function huodongshuGetcookie(name){
    var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
    if(arr != null) return unescape(arr[2]); return null;
}
 
function huodongshuDelcookie(name){
    var exp = new Date();
    exp.setTime(exp.getTime() - 1);
    var cval=huodongshuGetcookie(name);
    if(cval!=null) document.cookie= name + "="+cval+";expires="+exp.toGMTString();
}
function inArray(search,array){
    search = $.trim(search);
    for(var i in array){
        if(array[i]==search){
            return true;
        }
    }
    return false;
}
/** 获取当前页面 */
function getCurrentUrlname(){
    var current_url = window.location.href;
    var searchurl = window.location.search;
    current_url = current_url.replace(searchurl,'');
    current_url = current_url.substr(current_url.lastIndexOf("/")+1);
    current_url = current_url.replace(/#.*$/, "");
    current_url = $.trim(current_url);
    return current_url;
}
/**
 * 依赖于登陆的动作，登陆了执行funone,无登陆执行funtwo
 * @param funone fun|String
 * @param funtwo fun|String
 * @return
 */
function toThePageOrAction(funone,funtwo,callurl){

    if(window.userLoginStatus == '1'){
         var fun =  funone;
    }else{
        var current_url = window.location.href;
        if(callurl){
            window.storage.set("wx_last_url",callurl);
            var _last_url = window.storage.get("wx_last_url");
            window.storage.set("wx_goto_url",callurl);
        }else{
//        	console.log(current_url);
            window.storage.set("wx_last_url",current_url);
            if ('function' != typeof funone) {
                window.storage.set("wx_goto_url",funone);
            }
        }
        var fun =  funtwo;
    }
    if ('function' == typeof fun) {
            fun();
    } else {
            eval(''+fun+'');
    }
}

/*********************** 企业级 方法 start  ***************************/
// TODO
function getCompanyTheme () {
    var domain = getCompanyDomain(),event_id = getQueryString('event_id'),
    htmlName = getCurrentUrlname(),url = js_huodongshu_domain+'/h5_template/index/getnewstyle.do';
    $.post(url,{domain:domain,event_id:event_id,html_name:htmlName}, function (json) {
        if (json.status == 1) {
            if ('undefined' != typeof json.data.domain) {
                $("header div").eq(0).css('background-color', json.data.domain);
                if ("undefined" != typeof cordova) {
                    $("head").append("<style>.compGlobal_footerNav ul li.choose a {color: "+json.data.domain+"; }\
.compGlobal_footerNav ul li.choose a:before {background-color: "+json.data.domain+"; }</style>");
                }
                window.storage.set("top_header_css",json.data.domain);
                return false;
            } else if ('undefined' != typeof json.data.event && json.data.event.style.length > 0) {
                var data = json.data.event;
                $("link").each(function (i,m) {
                    var hrefName = $(this).attr('href');
                    if (hrefName.indexOf('global.css') != -1 || hrefName.indexOf('activity.css') != -1 || hrefName.indexOf('buy.css') != -1) {
                        //$(this).remove();
                    }
                });
                //$("header div").eq(0).removeAttr('style');
                var cssNew ='';
                for (var i=0;data.style.length > i;i++) {
                    window.storage.set("top_link_cssurl"+i,data.style[i]);
                    var cssNew = '<link type="text/css" id="top_link_cssurl'+i+'" rel="stylesheet" href="'+data.style[i]+'">';
                    if($("#top_link_cssurl"+i).length < 1){
                        $("head").append(cssNew);
                    }else{
                        $("#top_link_cssurl"+i).attr("href",data.style[i]);
                    }
                }
                //$("head").append(cssNew);
                $("body").attr('id','globalMobile').addClass('skinRoot').prepend('<style>'+json.data.css_text_userd+'</style>');
                window.storage.set("top_header_css",'');
            } else {
                $("header div").eq(0).css('background-color','#50d15b');
                window.storage.set("top_header_css",'#50d15b');
            }
        } else {
            $("header div").eq(0).css('background-color','#50d15b');
            window.storage.set("top_header_css",'#50d15b');
        }
    },'json');
};
/*********************** 企业级 方法 end ***************************/
/*********************** 改写 alert 和 confirm 方法 start ***************************/
/** 替换alert  @param msg 提示信息 | @param cb 确定后回调函数 string||function */
function alert(msg, cb) 
{
    // don't show alert popup dialog when network is interrupted
    if (NETWORK_INTERRUPTED) return;

    if ('function' == typeof cb) {
        window.alertCallBack = cb;
    } else {
        window.alertCallBack = function (){
            eval(''+cb+'');
        };
    }
    $("#global_alert_div, .global_dialog").remove();
    var html = '<div id="global_alert_div" class=" hide" dialog="" dialogSize="80% auto">\
        <div>'+msg+'</div>\
        <div class="boxFooter"><a href="javascript:void(0);" class="dialogOk">确定</a></div>\
    </div>';
    $("body").prepend(html);
    dialog($("#global_alert_div"),".dialogOk");
    $(".boxFooter .dialogOk").unbind("click").click(function(){
        dialogClose();
        $("#global_alert_div, .global_dialog").remove();
        window.alertCallBack();
    });
};
/** 替换confirm @param msg 提示信息 | @param cb 成功回调函数 string||function */
function confirm (msg, cb) {
    if ('function' == typeof cb) {
        window.confirmCallBack = cb;
    } else {
        window.confirmCallBack = function (){
            eval(''+cb+'');
        };
    }
    $("#global_alert_div, .global_dialog").remove();
    var html = '<div id="global_alert_div" class=" hide" dialog="" dialogSize="80% auto">\
        <div>'+msg+'</div>\
        <div class="boxFooter"><a href="javascript:void(0);" class="dialogCancel">取消</a><a href="javascript:void(0);" class="dialogOk">确定</a></div>\
    </div>';
    $("body").append(html);
    dialog($("#global_alert_div"),".ok");
    $(".boxFooter .dialogOk").unbind("click").click(function(){
//        console.log(window.confirmCallBack);
        window.confirmCallBack();
        dialogClose();
        $("#global_alert_div, .global_dialog").remove();
    });
    $(".boxFooter .dialogCancel").unbind("click").click(function(){
        dialogClose();
        $("#global_alert_div, .global_dialog").remove();
    });
};

function callconfirm (msg, cb) {
    if ('function' == typeof cb) {
        window.confirmCallBack = cb;
    } else {
        window.confirmCallBack = function (){
            eval(''+cb+'');
        };
    }
    $("#global_alert_div, .global_dialog").remove();
    var html = '<div id="global_alert_div" class=" hide" dialog="" dialogSize="80% auto">\
        <div>'+msg+'</div>\
        <div class="boxFooter"><a href="javascript:void(0);" class="dialogCancel">取消</a><a href="javascript:void(0);" class="dialogOk">呼叫</a></div>\
    </div>';
    $("body").append(html);
    dialog($("#global_alert_div"),".ok");
    $(".boxFooter .dialogOk").unbind("click").click(function(){
        window.confirmCallBack();
        dialogClose();
        $("#global_alert_div, .global_dialog").remove();
    });
    $(".boxFooter .dialogCancel").unbind("click").click(function(){
        dialogClose();
        $("#global_alert_div, .global_dialog").remove();
    });
};

/*********************** 改写 alert 和 confirm 方法 end ***************************/
/*********************** js原生 扩展 start ***************************/
String.prototype.replaceAll = function(s1,s2) { 
    return this.replace(new RegExp(s1,"gm"),s2); 
};
Date.prototype.format = function(format){  
    var o = {  
    "M+" : this.getMonth()+1, //month  
    "d+" : this.getDate(), //day  
    "h+" : this.getHours(), //hour  
    "m+" : this.getMinutes(), //minute  
    "s+" : this.getSeconds(), //second  
    "q+" : Math.floor((this.getMonth()+3)/3), //quarter  
    "S" : this.getMilliseconds() //millisecond  
    };  
      
    if(/(y+)/.test(format)) {  
    format = format.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));  
    }  
      
    for(var k in o) {  
    if(new RegExp("("+ k +")").test(format)) {  
    format = format.replace(RegExp.$1, RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length));  
    }  
    }  
    return format;  
    }; 
/*********************** js原生 扩展 end ***************************/

/*********************** 封装localStorage 和 cookie  start  ***************************/
;(function (g) {
    if ('undefined' != typeof g.storage) return false;
    var s = g.storage = {};
    try{
	    s.set = function (key, val,time) 
	    {
	        time = !!time?time:9000000000;
	        key = $.trim(key);
	        val = $.trim(val);
	        if("undefined" != typeof cordova){
	        	g.localStorage.setItem(key, val);
	        }else{
	            setCookie(key,val,time);
	        }
	    };
    }catch(e){
    }
    s.get = function (key) 
    {
        key = $.trim(key);
        if("undefined" != typeof cordova){
            return g.localStorage.getItem(key);
        }else{
            return getCookie(key);
        }
    };
    function getCookie(name)
    {
        var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
        if(arr != null) return unescape(arr[2]); return null;
    };
    function setCookie(name,value,ms)
    {//ms= Days*24*60*60*1000
        name = $.trim(name);
        var tempval = getCookie(name);
        if(tempval){
            var exp = new Date();    //new Date("December 31, 9998");
            exp.setTime(exp.getTime() + ms);
            document.cookie = name + "="+ escape (value) + ";path=/;expires=" + exp.toGMTString();
        }else{
            addCookie(name,value,ms);
        }
        
    };
    function addCookie(objName,objValue,ms)
    { 
        var str = objName + "=" + escape(objValue);
        if(ms > 0){
            var date = new Date();
            date.setTime(date.getTime() + ms);
            str += ";path=/; expires=" + date.toGMTString();
       }
       document.cookie = str;
    };
    function delCookie(name)
    {
        var exp = new Date();
        exp.setTime(exp.getTime() - 1);
        var cval=getCookie(name);
        if(cval!=null) document.cookie= name + "="+cval+";expires="+exp.toGMTString();
    };
    
    /** 修改history方法 TODO 之后需要扩展 实现页面多级 跳转 和缓存处理 */
    var h = g.historyLog = {};
    h.go = function (parem) {
        var html_name = getCurrentUrlname();
        if (html_name == 'find_index.html' || html_name == 'my_account.html') {
            g.location.href = g.location.origin;
            return false;
        }

        /**微信登录跳转页后退地址处理**/
        //if(isWeixin ()){
        	var url = pop_history();
        	if(url){
        		location.href=url;
        	}else{
        		isBusi();
        		if(busi_id>0){
        			location.href='index.html';
        		}else{
        			location.href='comp/100/index.html';
        		}
        		
        	}
        	return false;
        //}
        /**H5登录跳转页面后退地址处理**/
        /*var gotoType = getQueryString('goback');
        if (gotoType =='login' && parem == -1) {
            g.history.go(-2);
        } else {
            g.history.go(parem);
        }*/
    };
})(window);
/*********************** 封装localStorage 和 cookie  end ***************************/


var historyBlackList = ['login.html','login_bound.html','shortcut_login.html','event_survey_back.html','event_survey_check.html','event_survey_list.html',
                        'event_survey_Multiplechoice.html','event_survey_Titlelist.html','activity_video.html','register.html','findpassword.html','my_protocol.html',
                        'my_detail.html','my_tickets.html','activity_reward_list.html','activity_reward_jionl.html','activity_reward_jiond.html',
                        'activity_reward_jionh.html','activity_reward_jionr.html','activity_reward_result_new.html','activity_reward_result.html','activity_reward_resultd.html','activity_reward_success.html',
                        'activity_reward_successd.html','activity_reward_successds.html','edit_participant.html','buy_invoice.html','activity_comment.html','activity_commentPublic.html','event_note_publish.html',
                        'brand_sponsor.html','goods_commentPost.html','brand_search.html','event_password.html','my_create.html','first.html'
                        ];

//if(isWeixin()){

	var href = location.href;
	var recordFlag = true;
	for(var i=0;i<historyBlackList.length;i++){
		if(global_pagename==historyBlackList[i]){
			recordFlag = false;
			break;
		}
	}
	href = href.replace('&goback=login','');
//	var _host = window.location.host;
//    var hostName =  _host.substr(0,_host.indexOf('.'));
//	href = href.replace('&bindphone='+hostName,'');
	if(recordFlag){
		push_history(href);
	}
//}
function push_history(url){
	if(window.sessionStorage){

		//console.log(href);
		
		var list = window.sessionStorage.getItem('history');
		if(!list){
			list = new Array();
		}else{
			list = list.split(',');
		}
		var length = list.length;
		//for(var i=5;i<length;i++){
		//	list.shift();
		//}
		var length = list.length;
		if(length > 0){
			var lastUrl = list[length-1];
			if(lastUrl == url){
				return false;
			}
		}
		list.push(url);
		var temp = list.join(',');
		try{
			sessionStorage.setItem('history',temp);
		}catch(e){
			console.log(e);
		}
	}
}
function pop_history(){
	if(window.sessionStorage){
		//console.log(href);
		
		var list = window.sessionStorage.getItem('history');
		if(!list){
			list = new Array();
		}else{
			list = list.split(',');
		}
		var recordFlag = false;
		for(var i=0;i<historyBlackList.length;i++){
			if(global_pagename==historyBlackList[i]){
				recordFlag = true;
				break;
			}
		}
		if(recordFlag){
			var url = list.pop();
		}else{
			list.pop();
			var url = list.pop();
		}
		var temp = list.join(',');
		try{
			sessionStorage.setItem('history',temp);
		}catch(e){
			window.history.go(-1);
		}
		return url;
	}else{
		window.history.go(-1);
	}
}


// 添加右侧导航
function rightNav () {
    var rightNav =$(".rightNav");
    if (rightNav.lenth <= 0 ) { return false;}
    if ('undefined' != typeof cordova && (global_pagename== 'index.html' || global_pagename== 'find_index.html' || global_pagename== 'my_account.html' || global_pagename== 'find_search_busi.html')) {
    	if(getQueryString("fromtype")=='brand'){
        	var firstname = getQueryString("firstname");
         	 if(!!firstname){
         		 var url_canshu ="&firstname="+firstname;
         	 }else{
         		url_canshu="";
         	 }
        	rightNav.next("a").attr("href","find_search_busi.html?fromtype=brand"+url_canshu);
        }
    	rightNav.remove();
        
        return false;
    }
    var html = '',relPath='',indexPath='index.html';
    var indexUrl = (!!getCompanyDomain()) ?('http://'+getCompanyDomain()+'.huodongshu.com'):js_huodongshu_domain+'/h5/enterprise/comp/100/index.html';
    //if (global_pagename== 'index.html' || global_pagename== 'event_category.html' || global_pagename== 'event_category_list.html' || global_pagename== 'sponsor_host.html') {
    if (window.location.pathname.indexOf('/comp/')!=-1 ) {
        relPath = '../../';
        indexPath = 'index.html';
    }
    if (isCompany()) {
        indexPath = indexUrl;
    }
    if(getQueryString("fromtype")=='brand'){
    	rightNav.hide();
    	var firstname = getQueryString("firstname");
     	 if(!!firstname){
     		 var url_canshu ="&firstname="+firstname;
     	 }else{
     		url_canshu="";
     	 }
    	rightNav.next("a").attr("href","find_search_busi.html?fromtype=brand"+url_canshu);
    }
    html += '<ul class="nav" id="rightNavBox">';
    html += '<li><a href="'+indexPath+'" class="shouye">精选</a></li>';
    //企业版显示老页面，非企业版显示新页面 add by mj 2016-04-20
    if (isCompany()) {
        html += '<li><a href="'+relPath+'find_index.html" class="faxian">发现</a></li>';
    }else{
    	html += '<li><a href="'+relPath+'find_index_new.html" class="faxian">发现</a></li>';
    }
    if(isCompany()){
    	html += '<li><a href="'+relPath+'my_account.html" class="wode">我的</a></li></ul>';
    }else{
    	html += '<li><a href="'+relPath+'my_account_new.html" class="wode">我的</a></li></ul>';
    }
    rightNav.parent('.hBtn').after(html);
    rightNav.attr({'href':'javascript:void(0);'}).click(function (e) {
        var rightNavBox = $("#rightNavBox"),navH = rightNavBox.height();
        if ('undefined' == typeof rightNavBox.attr('style')) {
            e.stopPropagation();
            $("header").css('zIndex',100);
            rightNavBox.css({"height":0, "marginRight":"auto","marginLeft":"auto"}).animate({'height':navH},200,function () {$(this).css("height","");});
        } 
    });
    $("body").click(function () {
        var rightNavBox = $("#rightNavBox");
        if ('undefined' != typeof rightNavBox.attr('style')) {
            rightNavBox.animate({"height":0},200,function(){ $(this).removeAttr("style");$("header").css("z-index",2);});
        }
    });
    //$("body").attr('onclick',"$('#rightNavBox').slideUp();");
    
};


function RndNum(n){

	 var chars = ['0','1','2','3','4','5','6','7','8','9',
	              'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
	              'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
     var res = "";
     for(var i = 0; i < n ; i ++) {
         var id = Math.ceil(Math.random()*61);
         res += chars[id];
     }
     return res;
}

/****微信登录请求和H5登录****/
function gotoLogin(param_url){

	  var tempurl = getCurrentUrlname();
      var ranno = RndNum(12);
      var url = '';
      var lastUrl = document.referrer;
      var event_id = getQueryString("event_id");
      var h5flag = getQueryString("h5flag");
      var channelid =  getQueryString("channelid");
	    var eventUrl = window.storage.get('wx_last_url');  //活动详情的跳转页
	    eventUrl = $.trim(eventUrl);
	    var gotoUrl = window.storage.get("wx_goto_url");
	    gotoUrl = $.trim(gotoUrl);
	    if(gotoUrl && gotoUrl !=''){
	    	if(gotoUrl.indexOf("window.location.href")!=-1){
	    	var beforePo = gotoUrl.indexOf("'")+1;
        	var endPo = gotoUrl.lastIndexOf("'")-beforePo;	
        	url = gotoUrl.substr(beforePo,endPo);
		    }else{
			    url = gotoUrl;
		    }
	    }else if(event_id && h5flag == 'buyorder1'){
  		    url = "buy_order.html?event_id="+event_id+"&flag=fromlogin&channelid="+channelid;
  	    }else if(eventUrl){
	    	url = eventUrl;
	    }else if(lastUrl){
	    	url = lastUrl;
	    }else{
	    	url = tempurl + window.location.search;;
	    }
	    if(url.indexOf("event_detail.html")!=-1 && url.indexOf("&from=find")==-1){
	    	url = url+'&from=find';
	    }
	    if(param_url){
	    	url = param_url;
	    }

	    if(url.indexOf('event_id=') != -1){
	    	var event_id = url.substr(url.indexOf('event_id=')+9,8);
	    } else if(url.indexOf('eventid=') != -1){
	    	var eventid = url.substr(url.indexOf('eventid=')+8,8);
	    }
    	if (event_id) {
    		var event_id = event_id;
    	} else if (eventid) {
    		var event_id = eventid;
    	}
    	
    	var source = 0;
    	if (event_id) {
	    	//判断是否为meepark活动
	    	$.ajax({
	    		url: js_huodongshu_domain +"/business/getIsMeepark.do",
	    		async: false,
	    		dataType: "json",
	    		data:{event_id:event_id},
	    		success: function(info){
	    			if (info.status == 1) { 
	    				source = info.msg;
	    			}
	    		}
	        });
    	}
    	
	    if(url.indexOf("?") != -1) {
	    	url = url + '&no=' + ranno + '&source=' + source;
	    } else {
	    	url = url + '?no=' + ranno + '&source=' + source;
	    }
	 
	    var newstr = url.replace(/&/g,'|');
	    var _host = window.location.host;
	    var hostName =  _host.substr(0,_host.indexOf('.'));
    	if(newstr.indexOf('.huodongshu.com')!=-1){
    		newstr = newstr.replace('m.huodongshu.com',hostName+'.huodongshu.com');
    	}else{
    		 if(newstr.indexOf('/h5/enterprise/')!=-1){
    			 newstr = 'http://'+_host+'/'+newstr;
    		 }else{
    			 newstr = 'http://'+_host+'/h5/enterprise/'+newstr;
    		 }
    	}
    	newstr = base64_encode(encodeURI(newstr));
    	setRedisInfo("mobile_location_url",newstr);
    	
		if(isWeixin ()) {  
			if(hostName == 'volkswagen') { //大众企业定制
				var backurl = 'http://volkswagen.huodongshu.com/account/wxcallback.do?refer='+newstr;
	    		backurl = base64_encode(backurl);
	    		return 'http://m.vwmedia.com.cn/index.php?m=interactive&c=index&a=auth&snsapi_type=snsapi_userinfo&callback_url='+backurl;
			} else {
				var backurl = 'http://m.huodongshu.com/account/wxbangding.do?refer='+newstr;
				if (source == 1) { //meepark
					return 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxf1b18ecf16ce9f14&redirect_uri='+backurl+'&response_type=code&scope=snsapi_userinfo&state='+ranno+'#wechat_redirect';
				} else {  //hds
			        return 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx075a91b6a93d7c6f&redirect_uri='+backurl+'&response_type=code&scope=snsapi_userinfo&state='+ranno+'#wechat_redirect';
		    	}
			}
    	} else {
	    	var returnStr = toCustomLogin();
   	     	return returnStr;
    	}
}

	
//自定义的登录页配置
function toCustomLogin(){
	
	//非企业域名模块登录跳转隐藏手机快捷登录页的【帐号登录】文本链接
	var param = window.storage.get('register_type'); 
	if(param == 1) {
		return 'shortcut_login.html?is_show=2&';
	}
	
	var url = js_huodongshu_domain +"/account/loginpageshow.do";
    var returnUrl = '';
    $.ajax({
		url: url,
		async: false,
		dataType: "json",
		data:{},
		success: function(info){
			 if(info.status == 1){ 
		           if(info.msg.login_style == 1){ //手机验证登录
		        	   if(info.msg.is_account_login == 2){ //不显示 
		        		   returnUrl =  'shortcut_login.html?is_show=2&';
		      		   }else{
		      			   returnUrl = 'shortcut_login.html?is_show=1&';
		      		   }
		           }else{
		        	   returnUrl = 'login.html';
		        	   //returnUrl = 'shortcut_login.html?is_show=1&';
		  		   }
		     }else{
		    	 //returnUrl = 'login.html';
		    	  returnUrl = 'shortcut_login.html?is_show=1&';
		     }
		}
   });
   return returnUrl;
}


function base64_encode(str){
    var c1, c2, c3;
    var base64EncodeChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";                
    var i = 0, len= str.length, string = '';

    while (i < len){
            c1 = str.charCodeAt(i++) & 0xff;
            if (i == len){
                    string += base64EncodeChars.charAt(c1 >> 2);
                    string += base64EncodeChars.charAt((c1 & 0x3) << 4);
                    string += "==";
                    break;
            }
            c2 = str.charCodeAt(i++);
            if (i == len){
                    string += base64EncodeChars.charAt(c1 >> 2);
                    string += base64EncodeChars.charAt(((c1 & 0x3) << 4) | ((c2 & 0xF0) >> 4));
                    string += base64EncodeChars.charAt((c2 & 0xF) << 2);
                    string += "=";
                    break;
            }
            c3 = str.charCodeAt(i++);
            string += base64EncodeChars.charAt(c1 >> 2);
            string += base64EncodeChars.charAt(((c1 & 0x3) << 4) | ((c2 & 0xF0) >> 4));
            string += base64EncodeChars.charAt(((c2 & 0xF) << 2) | ((c3 & 0xC0) >> 6));
            string += base64EncodeChars.charAt(c3 & 0x3F)
    }
            return string
}


function base64_decode(str){
    var c1, c2, c3, c4;
    var base64DecodeChars = new Array(
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
            -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
            -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57,
            58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0,  1,  2,  3,  4,  5,  6,
            7,  8,  9,  10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
            25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36,
            37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1,
            -1, -1
    );
    var i=0, len = str.length, string = '';

    while (i < len){
            do{
                    c1 = base64DecodeChars[str.charCodeAt(i++) & 0xff]
            } while (
                    i < len && c1 == -1
            );

            if (c1 == -1) break;

            do{
                    c2 = base64DecodeChars[str.charCodeAt(i++) & 0xff]
            } while (
                    i < len && c2 == -1
            );

            if (c2 == -1) break;

            string += String.fromCharCode((c1 << 2) | ((c2 & 0x30) >> 4));

            do{
                    c3 = str.charCodeAt(i++) & 0xff;
                    if (c3 == 61)
                            return string;

                    c3 = base64DecodeChars[c3]
            } while (
                    i < len && c3 == -1
            );

            if (c3 == -1) break;

            string += String.fromCharCode(((c2 & 0XF) << 4) | ((c3 & 0x3C) >> 2));

            do{
                    c4 = str.charCodeAt(i++) & 0xff;
                    if (c4 == 61) return string;
                    c4 = base64DecodeChars[c4]
            } while (
                    i < len && c4 == -1
            );

            if (c4 == -1) break;

            string += String.fromCharCode(((c3 & 0x03) << 6) | c4)
    }
    return string;
}



/*********************** 需要发起请求的方法区域 start  ***************************/

/*********************** 需要发起请求的方法区域 end  ***************************/


/*********************** iphonegap 环境下的方法 start  ***************************/

/*********************** iphonegap 环境下的方法 end  ***************************/

//DOM完成以后调用

/**
 * 校验特殊字符
 * @param str
 * @return
 */
function huodongshu_word_check(str){
    str = $.trim(str);
    if(str.indexOf("\"") == -1 && str.indexOf("'") == -1 && str.indexOf("<") == -1 && str.indexOf(">") == -1  && str.indexOf("*") == -1  && str.indexOf("%") == -1 && str.indexOf("&") == -1 && str.indexOf("$") == -1    && str.indexOf("!") == -1){
      return true;
    }    
    return false;
}



function getCurrentUrlname(){
    var current_url = window.location.href;
    var searchurl = window.location.search;
    current_url = current_url.replace(searchurl,'');
    current_url = current_url.substr(current_url.lastIndexOf("/")+1);
    current_url = current_url.replace(/#.*$/, "");
    return current_url;
}
function getLastUrlname(){
	var strUrl=document.referrer;
	var strPage="";
	if(strUrl){
		var arrUrl=strUrl.split("/");
		var strPage=arrUrl[arrUrl.length-1];
		var strPage=strPage.split("?");
		var strPage=strPage[0];
	}
	return strPage;
}

function backLastVideo(){
	var lastUrlname=getLastUrlname();
	if(lastUrlname=='activity_video.html'){
		window.history.go(-1);
	}else{
		window.historyLog.go(-1);
	}
}

//cordova内手机号码不能点击
function open_outer_url(url){
	if(url.indexOf("tel:")!=-1){
		var newurl = url.replace("tel:","");
		callconfirm(newurl,function () {
			if(window.cordova && window.cordova.InAppBrowser){
		        window.cordova.InAppBrowser.open(url, "_system", 'location=no');
		    }else{
		        window.open(url,'_system');
		    }
	    });
	}else{
		if(window.cordova && window.cordova.InAppBrowser){
	        window.cordova.InAppBrowser.open(url, "_system", 'location=no');
	    }else{
	        window.open(url,'_system');
	    }
	}
}

//表单快捷报名活动验证用户权限
function auth_event() {
	
    var event_id = getQueryString("event_id");
    var openid = getQueryString("openid");
    var sinside = getRedisInfo('insideSuccess');
    var html_name = getCurrentUrlname();


    $.ajax({
        url: js_huodongshu_domain + '/event/geteventauth.do',
        data: {event_id:event_id,openid:openid},
        type: 'post',
        async: false,
        success:function(json) {
           if (json.status == 1) {
               if (html_name == 'event_detail.html') {
                   eventDetail.init();
               }
           } else if(json.status == 0){ //openid为空
               var jugeUrl = getCurrentUrlname()+window.location.search;
               var _host = window.location.host;
     	       var hostName =  _host.substr(0,_host.indexOf('.'));
               if(hostName == 'volkswagen' && !isWeixin()) {
            	       setTimeout(innerWeixinTips,1000);
               } else {
            	       window.location.href = gotoLogin(jugeUrl);
               }
           } else if(json.status == '401') { //用户未报名活动（包括主活动和附属活动）
               window.location.href = js_huodongshu_domain + '/h5/enterprise/buy_auth.html?event_id='+event_id+'&type=auth&page=wx';
           } else if(json.status == '402') { //用户报名了主活动或附属活动中的其中一个活动，无论访问那个连接都跳转到已报名的活动详情页
               window.location.href = js_huodongshu_domain + '/h5/enterprise/event_detail.html?event_id='+json.data;
           }
           
        }
    });

}

function innerWeixinTips(){
	document.head.innerHTML = '<title>抱歉，出错了</title><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0"><link rel="stylesheet" type="text/css" href="https://res.wx.qq.com/connect/zh_CN/htmledition/style/wap_err1a9853.css">';
    document.body.innerHTML = '<div class="page_msg"><div class="inner"><span class="msg_icon_wrp"><i class="icon80_smile"></i></span><div class="msg_content">请在微信客户端打开链接</div></div></div>';
}

function mySetCookie(name,value)//两个参数，一个是cookie的名字，一个是值
{
    setRedisInfo(name,value);
}

function myGetCookie(name)//取cookies函数
{
    return getRedisInfo(name);
}

//大众活动定制,二级模块返回按钮返回到活动详情页 HDS-2985
function hidemenu() {
    var event_id = getQueryString("event_id");
    if (event_id == '10038603' || event_id == '10038648' || event_id == '10038799' || event_id == '10039002' || event_id == '10039015' || event_id == '10002605' || event_id == '10002607') {
        var html_name = getCurrentUrlname();
        var url = js_huodongshu_domain + '/h5/enterprise/event_detail.html?event_id='+event_id;
        $("header .fl").show();
        $("header .fl a").attr("href",url);
        if (html_name == 'activity_video.html') {
            $("header .fr a").hide();
        }
    }
}


