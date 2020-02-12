<?php
  $t = $_GET["t"];
  if(preg_match("/[ '.,:;*?~`!@#$%^&+=)(<>{}]|\]|\[|\/|\\\|\"|\|/",$t)){ 
echo 'Invalid address'; 
exit(); 
}
//$conn=mysql_connect("127.0.0.1","root","");
$conn=mysql_connect("caijing-new-media-2016.mysql.rds.aliyuncs.com:3368","caijing2016","ynp2XM4ipgpwF_zkgg");
//mysql_select_db("test",$conn);
mysql_select_db("new_activity",$conn);
mysql_query("SET NAMES utf8");
$create_time = time();

$page = isset($_GET['page'])?$_GET['page']:1;
$page = intval($page);

$table = "caijing2017";
//$arr_huodong=array("caijing2017"=>"财经年会","sanya2017"=>"三亚论坛");

//$huodong = isset($t)?$t:"";
/*if(in_array($huodong,array_keys($arr_huodong))){
	$table=$huodong ;
}
*/
//求总数

$sql = "select count(*) from $table where activity= '$t'";
$query = mysql_query($sql);
list($count)=mysql_fetch_row($query);

$pagesize=20;
$pagecount = ceil($count/$pagesize);
if($page<1) $page=1;
if($page>$pagecount) $page=$pagecount;

$start = ($page-1)*$pagesize;

$arr_members = array();
$sql = "select * from $table where activity= '$t' order by id desc limit $start,$pagesize ";
$query = mysql_query($sql);
while($row=mysql_fetch_array($query)){
	$arr_members[]=$row;
}
mysql_close();


?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="format-detection" content="telephone=yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title>报名用户查看</title>


<style>
dd{    border-bottom: 1px solid #ccc; margin-left:5px;}
.current{color:#ff1111}
.m-l-10 {
    margin-left: 10px;
}

</style>
</head>

<body>
<?php 
if($pagecount>1){
?>
<dl>
    <dd><a href="exportExcel.php?action=export&t=<?php echo($t);?>">Excel 导出</a></dd>
<dd>
<p>共<?php echo($count);?>条数据，<?php echo($pagecount);?>页，当前第<?php echo($page);?>页</p>
<?php 
if($page>1){
?>
<a href="?page=1&t=<?php echo($t);?>">首页</a> 
<a href="?page=<?php echo($page-1);?>&t=<?php echo($t);?>">上一页</a> 
<?php 
}
?>

<?php 
if($page<$pagecount){
?>
<a href="?page=<?php echo($page+1);?>&t=<?php echo($t);?>">下一页</a> 
<a href="?page=<?php echo($pagecount);?>&t=<?php echo($t);?>">末页</a> 
</dd>
</dl>
<?php
} 
}
?>





<dl>
<?php 
foreach ($arr_members as $member){
?>
<dd>
<p><?php echo($member['name']); ?></p>
<p><?php echo($member['title']); ?></p>
<p><?php echo($member['phone']); ?></p>
<p><?php echo($member['email']); ?></p>
<p><?php echo(date("Y-m-d H:i:s",$member['ctime'])); ?></p>
</dd>
<?php 
}
?>
</dl>


<?php 
if($pagecount>1){
?>
<dl>
<dd>
<p>共<?php echo($count);?>条数据，<?php echo($pagecount);?>页，当前第<?php echo($page);?>页</p>
<?php 
if($page>1){
?>
<a href="?page=1&t=<?php echo($t);?>">首页</a> 
<a href="?page=<?php echo($page-1);?>&t=<?php echo($t);?>">上一页</a> 
<?php 
}
?>

<?php 
if($page<$pagecount){
?>
<a href="?page=<?php echo($page+1);?>&t=<?php echo($t);?>">下一页</a> 
<a href="?page=<?php echo($pagecount);?>&t=<?php echo($t);?>">末页</a> 
</dd>
</dl>
<?php
} 
}
?>

</body>
</html>
