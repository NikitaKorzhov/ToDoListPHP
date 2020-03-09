<?php
require_once "../models/User.php";
$params = json_decode(file_get_contents('php://input'), true);
$user=new User();
$action=$params["action"];
switch($action){
    case "in":{
        session_id(7);
        session_start();
        $r=$user->autorize($params["login"],$params["password"]);
        if($r!=null){
        $_COOKIE["y"]=$r;
        $_COOKIE["l"]=true;

$_SESSION["user"]=$r;
        echo json_encode($_COOKIE);
        }
        else{
            echo "";
        }
    break;
    }
    

}
