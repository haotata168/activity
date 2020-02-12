<?php
header('Access-Control-Allow-Origin:*');
require_once("config.php");
//连接数据库
require_once("../common/libs/MysqliDb/MysqliDb.php");
require_once("../common/functions.php");
defined("TABLE_NAME") || define("TABLE_NAME", "cjh5_activity");

$action = isset($_GET['action']) ? $_GET['action'] : '';
if(preg_match("/[ '.,:;*?~`!@#$%^&+=)(<>{}]|\]|\[|\/|\\\|\"|\|/",$action)){ 
echo 'Invalid address'; 
exit(); 
}
$Activity = new Activity();
switch ($action) {
    case 'getActivityList':
        $Activity->getActivityList();
        break;
    case 'getActivityDetail':
        $Activity->getActivityDetail();
        break;
    case 'getVipDetail':
        $Activity->getVipDetail();
        break;
    case 'getAgenda':
        $Activity->getAgenda();
        break;                
}


class Activity
{
    private $db = null;

    public function __construct()
    {
        $this->db = new MysqliDb (Array(
            'host' => DB_HOST,
            'username' => DB_USER,
            'password' => DB_PW,
            'db' => DB_NAME,
            'port' => DB_PORT,
            'charset' => DB_CHARSET
        ));
    }

    /**
     * 取活动列表
     */
    public function getActivityList() {
    $response = array(
        'status' => 0,
        'err_msg' => '',
        'data' => null,
    );        
        $db = $this->db;
        $user = $db->orderBy("activityDate", "desc")->get(TABLE_NAME, null, array('id', 'activityName', 'activityDate', 'activityLocal','activitySharePic','activityPoster','activityOptions'));
        $personlist = array();
        foreach ($user as $key => $value) {
            $personlist[$key]["id"] = $value["id"];
            $personlist[$key]["activityName"] = $value["activityName"];
            $personlist[$key]["activityDate"] = $value["activityDate"];
            $personlist[$key]["activityLocal"] = $value["activityLocal"];
            $personlist[$key]["activitySharePic"] = $value["activitySharePic"];
            $personlist[$key]["activityPoster"] = $value["activityPoster"];
            $personlist[$key]["activityOptions"] = $value["activityOptions"];

        }
        //$vip = $db->get()
        $response = array(
            'status' => 1,
            'err_msg' => 'ok',
            'data' => $personlist
        );
         die(json_encode($response));
    }
    /**
     * 取活动详情
     */
    public function getActivityDetail() {
    $aid = $_POST['aid'];//活动id        
    $response = array(
        'status' => 0,
        'err_msg' => '',
        'data' => null,
        'viplist' => null,
    );
        $db = $this->db;
        $user = $db->where('id', $aid)->get(TABLE_NAME, null, array('id', 'activityName', 'activityDate', 'activityLocal','activitySharePic','activityPoster','activityOptions','activityBrief', 'activityVipTempletID', 'activityShareTitle', 'activityShareDesc', 'activityShareLink', 'activityPhotolist'));
        $activityDetail = array();
        foreach ($user as $value) {
            $activityDetail["id"] = $value["id"];
            $activityDetail["activityName"] = $value["activityName"];
            $activityDetail["activityDate"] = $value["activityDate"];
            $activityDetail["activityLocal"] = $value["activityLocal"];
            $activityDetail["activitySharePic"] = $value["activitySharePic"];
            $activityDetail["activityPoster"] = $value["activityPoster"];
            $activityDetail["activityOptions"] = $value["activityOptions"];   
            $activityDetail["activityBrief"] = $value["activityBrief"];
            $activityDetail["activityVipTempletID"] = $value["activityVipTempletID"];
            $activityDetail["activityShareTitle"] = $value["activityShareTitle"];
            $activityDetail["activityShareDesc"] = $value["activityShareDesc"];
            $activityDetail["activityShareLink"] = $value["activityShareLink"];
            $activityDetail["activityPhotolist"] = $value["activityPhotolist"];
        }
        $viplist = array();
        $vip = $db->query("SELECT cjh5_vipActivity.id, cjh5_vipActivity.activityID, cjh5_vipActivity.vipID, cjh5_vipActivity.vipSort, cjh5_vip.vip_id, cjh5_vip.vip_name, cjh5_vip.vip_title, cjh5_vip.vip_photo FROM cjh5_vipActivity inner join cjh5_vip ON cjh5_vipActivity.vipID =  cjh5_vip.vip_id WHERE cjh5_vipActivity.activityID='$aid' ORDER BY cjh5_vipActivity.vipSort");
        foreach ($vip as $key => $value) {
            $viplist[$key]["id"] = $value["id"];
            $viplist[$key]["activityID"] = $value["activityID"];
            $viplist[$key]["vipID"] = $value["vipID"];
            $viplist[$key]["vipSort"] = $value["vipSort"];
            $viplist[$key]["vip_id"] = $value["vip_id"];
            $viplist[$key]["vip_name"] = $value["vip_name"];
            $viplist[$key]["vip_title"] = $value["vip_title"];   
            $viplist[$key]["vip_photo"] = $value["vip_photo"];
        }        
        $response = array(
            'status' => 1,
            'err_msg' => 'ok',
            'data' => $activityDetail,
            'viplist' => $viplist 
        );
         die(json_encode($response));
    }
    /**
     * 取VIP详情
     */
    public function getVipDetail() {
        $vipID = $_POST['id'];//vip id        
        $response = array(
            'status' => 0,
            'err_msg' => '',
            'data' => null,
        );
        $db = $this->db;
        $vip = $db->where('vip_id', $vipID)->getOne('cjh5_vip', null);
/*       var_dump($vip);
        foreach ($vip as $value){
            $vipdetail['vip_name'] = $value['vip_name'];
            $vipdetail['vip_title'] = $value['vip_title'];
            $vipdetail['vip_photo'] = $value['vip_photo']; 
            $vipdetail['vip_brief'] = $value['vip_brief'];        
        }*/
        $response = array(
            'status' => 1,
            'err_msg' => 'ok',
            'data' => $vip
        );
         die(json_encode($response));        
    }
    /**
     * 取日程 详情
     */
    public function getAgenda() {
        $activityid = $_POST['id'];//vip id      
        $response = array(
            'status' => 0,
            'err_msg' => '',
            'data' => null,
            'poster' => null,
        );
        $agendaDetail = array();
        $db = $this->db;
        $agendaID = $db->where('id', $activityid)->getOne("cjh5_activity");

        if(empty($agendaID["activityScheduleID"])){
            $response["err_msg"] = "议程尚未添加";
        }else{
           $agendaDetail = $db->where('id', $agendaID["activityScheduleID"])->getOne('cjh5_agenda', null);
        }
        $response = array(
            'status' => 1,
            'err_msg' => 'ok',
            'data' => $agendaDetail,
            'poster' => $agendaID["activityPoster"],
        );
         die(json_encode($response));        
    }    
}


?>