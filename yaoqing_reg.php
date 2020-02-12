<?php
error_reporting(0);
  $t = $_GET["t"];
  if(preg_match("/[ '.,:;*?~`!@#$%^&+=)(<>{}]|\]|\[|\/|\\\|\"|\|/",$t)){ 
echo 'Invalid address'; 
exit(); 
}
/*
姓名
邮箱
手机
公司
*/
//连接数据库
$conn=mysql_connect("caijing-new-media-2016.mysql.rds.aliyuncs.com:3368","caijing2016","ynp2XM4ipgpwF_zkgg");
//$conn=mysql_connect("127.0.0.1","root","");
//打开数据库
//mysql_select_db("test",$conn);
mysql_select_db("new_activity",$conn);
mysql_query("SET NAMES utf8");
$create_time = time();
$name  = isset($_POST['name'])?$_POST['name']:"";
$email = isset($_POST['email'])?$_POST['email']:"";
//$company = isset($_POST['company'])?$_POST['company']:"";
$phone = isset($_POST['phone'])?$_POST['phone']:"";
//$addr  = isset($_POST['addr'])?$_POST['addr']:"";
$uid = md5($phone.date("YmdHis"));
$title  = isset($_POST['title'])?$_POST['title']:"";
$sql1="select * from caijing2017 where phone='".$phone."'";
$search = mysql_query($sql1,$conn);
if(mysql_num_rows($search) < 1){
	$sql="insert into caijing2017(uid,activity,phone,name,title,email,ctime) values('".$uid."','".$t."','".$phone."','".$name."','".$title."','".$email."',".$create_time.")";
	$excu = mysql_query($sql,$conn);
	if($excu){
		echo $uid;
	}else{
		//echo "0";
		echo mysql_error();
	} 
}else{
	echo "2";
}
mysql_close($conn);
