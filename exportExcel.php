<?php
/**
 * Created by PhpStorm.
 * User: Howard
 * Date: 2017/11/21
 * Time: 18:13
 */

ini_set("display_errors",true);
error_reporting(E_ALL);

$action = isset($_GET['action']) ? $_GET['action'] : "index";
$t = $_GET["t"];
if(preg_match("/[ '.,:;*?~`!@#$%^&+=)(<>{}]|\]|\[|\/|\\\|\"|\|/",$t)){ 
echo 'Invalid address'; 
exit(); 
}
defined("TABLE_NAME") || define("TABLE_NAME", "caijing2017");
include("../common/config.newactivity.php");
include("../common/functions.php");
include("../common/libs/MysqliDb/MysqliDb.php");
$mysqliDb = new MysqliDb (Array(
        'host' => DB_HOST,
        'username' => DB_USER,
        'password' => DB_PW,
        'db' => DB_NAME,
        'port' => DB_PORT,
        //'prefix' => 'my_',
        'charset' => DB_CHARSET
    )
);

//    $mysqliDb->setTrace(true);

switch ($action) {
    case "index":
        index($mysqliDb);
        break;

    case "export":
        export($mysqliDb, $t);
        break;
}


// 首页
function index($mysqliDb)
{
}

function export($mysqliDb, $t)
{

    //$mysqliDb->pageLimit = 20;
    $mysqliDb->where('`activity`', $t);

    // 报名信息
    $dataInfo = $mysqliDb->orderBy('`id`', "DESC")->get(TABLE_NAME);

    $header = array(
        'id' => "ID",
        'activity' => "活动名称",        
        'uid' => "二维码编号",
        'phone' => "联系电话",
        'name' => "姓名",
        'title' => "职务",
        'email' => "电子邮箱",
        'ctime' => "添加时间",
    );
    $fileName = "报名信息-" . $t;

    exportToExcel($header, $dataInfo, $fileName);

}

function exportToExcel($header, $data, $fileName)
{


    require_once("../common/libs/PHPExcel181/PHPExcel.php");

    $objExcel = new PHPExcel();
    $objWriter = new PHPExcel_Writer_Excel5($objExcel);

//    设置基本信息
    $objExcel->getProperties()->setCreator("CaiJing")
        ->setLastModifiedBy("CaiJing")
        ->setTitle("")
        ->setSubject("")
        ->setDescription("")
        ->setKeywords("")
        ->setCategory("");

    $objExcel->setActiveSheetIndex(0);
    $objActSheet = $objExcel->getActiveSheet();
    $objActSheet->setTitle($fileName);

    //设置单元格内容
    $i = 1;
    $startLine = 1;
    foreach ($header as $key => $value) {
        $objActSheet->setCellValueExplicit(getCol($i) . $startLine, $value, PHPExcel_Cell_DataType::TYPE_STRING);
        //*************************************
        //设置单元格样式
        $objStyle = $objActSheet->getStyle(getCol($i++) . $startLine);
        //设置边框
        $objBorder = $objStyle->getBorders();
        $objBorder->getTop()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
        $objBorder->getTop()->getColor()->setARGB('FFDDDDDD');
        $objBorder->getBottom()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
        $objBorder->getBottom()->getColor()->setARGB('FFDDDDDD');
        $objBorder->getLeft()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
        $objBorder->getLeft()->getColor()->setARGB('FFDDDDDD'); // color
        $objBorder->getRight()->setBorderStyle(PHPExcel_Style_Border::BORDER_THIN);
        $objBorder->getRight()->getColor()->setARGB('FFDDDDDD'); // color
        //设置填充颜色
        $objFill = $objStyle->getFill();
        $objFill->setFillType(PHPExcel_Style_Fill::FILL_SOLID);
        $objFill->getStartColor()->setARGB('FFEDF0F0');
    }
    $i = 1;

    foreach ($data as $row) {
        $i++;
        $j = $startLine;
        foreach ($header as $key => $value) {
            $objActSheet->setCellValueExplicit(getCol($j++) . $i, $row[$key], PHPExcel_Cell_DataType::TYPE_STRING);
        }
    }


    //输出内容
    //到浏览器
    header("Content-Type: application/force-download");
    header("Content-Type: application/octet-stream");
    header("Content-Type: application/download");
    header('Content-Disposition:inline;filename="' . $fileName . '.xls"');
    header("Content-Transfer-Encoding: binary");
    header("Expires: Mon, 01 Jul 2016 05:00:00 GMT");
    header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
    header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
    header("Pragma: no-cache");
    $objWriter->save('php://output');
    exit();

//    http://www.thinkphp.cn/topic/3739.html
//    http://www.cnblogs.com/fredshare/archive/2012/10/29/2744243.html

}

function getCol($num)
{//递归方式实现根据列数返回列的字母标识
    $arr = array(0 => 'Z', 1 => 'A', 2 => 'B', 3 => 'C', 4 => 'D', 5 => 'E', 6 => 'F', 7 => 'G', 8 => 'H', 9 => 'I', 10 => 'J', 11 => 'K', 12 => 'L', 13 => 'M', 14 => 'N', 15 => 'O', 16 => 'P', 17 => 'Q', 18 => 'R', 19 => 'S', 20 => 'T', 21 => 'U', 22 => 'V', 23 => 'W', 24 => 'X', 25 => 'Y', 26 => 'Z');
    if ($num == 0)
        return '';
    return getCol((int)(($num - 1) / 26)) . $arr[$num % 26];
}