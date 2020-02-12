<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!--<meta name="viewport" content="width=640,target-densitydpi=device-dpi,user-scalable=no">-->
<meta name="apple-touch-fullscreen" content="yes">
<meta name="format-detection" content="telephone=yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title>三亚 财经国际论坛报名</title>
<link href="css/global.css?v=201711" rel="stylesheet" type="text/css">
<link href="css/main1118.css?v=201711" rel="stylesheet" type="text/css">
<!-- <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script> -->
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
</head>

<body>
<script type="text/javascript">
!function(e, i) {
    var t = e.documentElement,
    n = navigator.userAgent.match(/iphone|ipod|ipad/gi),
    a = n ? Math.min(i.devicePixelRatio, 3) : 1,
    m = "orientationchange" in window ? "orientationchange": "resize";
    t.dataset.dpr = a;
    for (var d, l, c = !1,
    o = e.getElementsByTagName("meta"), r = 0; r < o.length; r++) l = o[r],
    "viewport" == l.name && (c = !0, d = l);
    if (c) d.content = "width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no";
    else {
        var o = e.createElement("meta");
        o.name = "viewport",
        o.content = "width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no",
        t.firstElementChild.appendChild(o)
    }
    var s = function() {
        var e = t.clientWidth;
        e / a > 640 && (e = 640 * a),
        window.remScale = e / 640,
        t.style.fontSize = 200 * (e / 640) + "px"
    };
    s(),
    e.addEventListener && i.addEventListener(m, s, !1)
} (document, window);

</script>
<div class="reg bg1" id="sectionsubmit">
     <div class="vip-tips sprite fadeIn"><img src="images/bm.png" width="33" height="41"></div>
     <div class="logo sprite fadeIn"><img src="images/all2017.png" width="240"></div>
      <form name="invi-reg" action="yaoqing_reg.php" method="post" id="invi-reg">
          <ul>
              <li class="regbg"><label style="width: .4rem;">姓名：</label><input class="invi-input" name="name" type="text" style="width:1.8rem;"></li>
              <li class="regbg"><label style="width: .4rem;">电话：</label><input class="invi-input" name="phone" type="text" style="width:1.8rem;"></li>
              <li class="regbg"><label style="width: .7rem">公司/职务：</label><input class="invi-input" name="title" type="text" style="width:1.6rem;"></li>
              <li class="regbg"><label style="width: .4rem;">邮箱：</label><input class="invi-input" name="email" type="text" style="width:1.8rem;"></li>
              <li><input class="btn-red-style" name="submit" type="submit" value="立即报名"></li>
              <li class="errorinfo">请正确填写信息</li>
            </ul>
        </form>
</div>
  <div class="bg1" id="regreult" style="display:none;">
        <div class="regok sprite"><img src="images/regok.png" width="150" height="27"></div>
        <div class="erweima sprite"><img src="" alt="报名二维码" name="reginfo" width="150" height="150" id="reginfo" /></div>
        <div class="reg-msg sprite"><h2>注意：请您保存此二维码图片，在会议现场出示即可签到。</h2>
            <p>保存方法：</p>
            <p>1、使用手机截屏功能，可自动保存在手机相册中。</p>
            <p>2、长按此图片，选择【收藏】即可保存在微信【我的收藏】中。</p>
        </div>
        <a href="http://a.app.qq.com/o/simple.jsp?pkgname=com.caijing" target="_blank"><div class="sprite appdown"></div></a>
  </div> 

</body>
</html>
<script>
$(document).ready(function() {
    $("form[name=invi-reg] input[type=text]").focus(function(){
        $(".errorinfo").html("").hide();
    });   
$(".btn-red-style").click(function(e){
        e.preventDefault();
        var _form = $("form[name=invi-reg]");
        var actionurl   = _form.attr("action");
        var name    = $("form[name=invi-reg] input[name=name]").val();        
        var email   = $("form[name=invi-reg] input[name=email]").val(); 
        var phone   = $("form[name=invi-reg] input[name=phone]").val(); 
       // var password    = $("form[name=invi-reg] input[name=password]").val();
        /*var repassword   = $("form[name=invi-reg] input[name=repassword]").val();*/
        var title   = $("form[name=invi-reg] input[name=title]").val();  
        
        var o_msg = $(".errorinfo");
        if(name===""){
            o_msg.html("姓名不能为空").show();
        }
        else if(phone===""){
            o_msg.html("电话不能为空").show();            
        }
        else if(!isEmail(email)){
            o_msg.html("Email格式不正确").show();
        }        
        /*
        else if(password==""){
            o_msg.html("密码不能为空").show();            
        }
        else if(password!=repassword){
            o_msg.html("两次输入的密码不一致").show();            
        }*/
        else
        {
            $("form[name=invi-reg] input[name=submit]").attr("value",'正在提交，请稍候...');
            $("form[name=invi-reg] input[name=submit]").attr("disabled",true);
            $.ajax({
                type:"POST",
                url: actionurl,
                data: _form.serialize(),
                dataType:"text",
                success: function(data){
                    console.log(data.length);
                    console.log(data);
                    if(data===0){
                        $("form[name=invi-reg] input[name=submit]").attr("value",'现在报名');
                        $("form[name=invi-reg] input[name=submit]").attr("disabled",false);                     
                        o_msg.html("网络故障，请重新报名").show();                        
                    }else if(data===2){
                        $("form[name=invi-reg] input[name=submit]").attr("value",'现在报名');
                        $("form[name=invi-reg] input[name=submit]").attr("disabled",false);                     
                        o_msg.html("您的电话已注册过。").show();
                    }else{
                        if(data.length === 32){
                            erwma = data;
                            //console.log(erwma);
                            document.getElementById('reginfo').src = "qrcode.php?data="+erwma;
                            //o_msg.html("预报名成功，请等待我们的联系！").show();
                            $("#regreult").show();
                        }else{
                            $("form[name=invi-reg] input[name=submit]").attr("value",'现在报名');
                            $("form[name=invi-reg] input[name=submit]").attr("disabled",false);                     
                            o_msg.html("网络故障，请重新报名").show();                                
                        }
                    }
                }
             });
        }
        });
  });
function isEmail(str){
    var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/;
    return reg.test(str);
}  
</script>
