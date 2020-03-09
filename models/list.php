<?php
 class ListToDo{
    private $host="localhost";
    private $user="root";
    private $password="";
    private $db="todo";


    function pageCount(){
        $conn = new mysqli($this->host, $this->user, $this->password, $this->db);
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        $total_pages_sql = "SELECT COUNT(*) FROM list";
        $result = $conn->query($total_pages_sql);
        $total_rows =$result->fetch_array()[0];
        return $total_pages = $total_rows / 3;
    }
     function getAll($page,$count){
        $conn = new mysqli($this->host, $this->user, $this->password, $this->db);
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        $up=$page*$count;
     
        $sql = "SELECT * FROM `list` LIMIT $count OFFSET $up";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
return $result->fetch_all(MYSQLI_ASSOC);
}else{
    return "NONE";
}
     }


     function addTask($form){
         
        $conn = new mysqli($this->host, $this->user, "", "todo");
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        $sql = "INSERT INTO list(name,email,task,edit) VALUES('$form->name','$form->email','$form->task','')";
        
        if($conn->query($sql)===TRUE){
           return $conn->insert_id;
        }
     }

     function updateTask($form){
         
        $conn = new mysqli($this->host, $this->user, "", "todo");
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        $sql = "UPDATE list SET name='$form->name',email='$form->email',task='$form->task',edit='edited by admin' WHERE id=$form->id";
        $result = $conn->query($sql);
        return $result==true;
     }
}
?>