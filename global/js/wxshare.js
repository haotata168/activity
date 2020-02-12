var ua = navigator.userAgent.toLowerCase();  
if(ua.match(/MicroMessenger/i)=="micromessenger") {  
    var aurl ="http://api.caijingmobile.com/wechat/signPackage?url="+encodeURIComponent(location.href)+"&callback=?";
    $.getJSON(aurl,function(result){
    //console.log(result);
    if (result) {
      wx.config({
          debug: false, 
          appId: result.appId,
          timestamp: result.timestamp, 
          nonceStr: result.nonceStr,
          signature: result.signature,
          jsApiList: ["checkJsApi","onMenuShareTimeline","onMenuShareAppMessage","openLocation"]
      });
     wx.ready(function () {
      // 在这里调用 API 
        wx.onMenuShareTimeline(window._wxShareConfig);
        wx.onMenuShareAppMessage(window._wxShareConfig); 
        document.querySelector('#container').onclick = function () {
            wx.openLocation({
                latitude: 39.910035, // 纬度，浮点数，范围为90 ~ -90
                longitude: 116.459244, // 经度，浮点数，范围为180 ~ -180。
                name: '中国大饭店', // 位置名
                address: '北京市朝阳区建国门外大街1号', // 地址详情说明
                scale: 15, // 地图缩放级别,整形值,范围从1~28。默认为最大
                infoUrl: 'http://map.qq.com/?l=340927157' // 在查看位置界面底部显示的超链接,可点击跳转
            });
        };         
      });     
    }
   });
} else{
      console.log("It's not macroChat UA");
      //return false;  
} 