<?php
$activityid = $_GET["aid"];
$templet = $_GET["templet"];
if(preg_match("/[ '.,:;*?~`!@#$%^&+=)(<>{}]|\]|\[|\/|\\\|\"|\|/",$activityid)){ 
echo 'Invalid address'; 
exit();
}
$url='http://'.$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
//$url='http://'.$_SERVER['SERVER_NAME'].$_SERVER["REQUEST_URI"];
$baseUrl = dirname($url).'/templets/'.$templet;
include_once 'templets/'. $templet . '/index.php';
?>