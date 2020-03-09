<?php
require_once "../models/list.php";
$list=new ListToDo();
$params = json_decode(file_get_contents('php://input'), true);
$action=$params["action"];
session_id(7);
        session_start();

switch($action){
    case "pages":{
        echo json_encode(array("answer"=>$list->pageCount()));
    break;
    }
    case "load":{
        echo json_encode($list->getAll($params["page"],$params["count"]));
    break;
    }
    case "add":{
       echo json_encode( array("answer"=>$list->addTask(json_decode($params["answer"])) ));
       break;
}
case "update":{
    if($_SESSION["user"]=="admin"){
        echo json_encode( array("alert"=>array("type"=>"success","text"=>"updated"),"answer"=>$list->updateTask(json_decode($params["answer"]))) );
    }
    else echo json_encode( array("alert"=>array("type"=>"danger","text"=>" not updated"),"answer"=>"") );
}
}
