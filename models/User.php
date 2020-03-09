<?php
class User{
    private $host="localhost";
    private $user="root";
    private $password="";
    private $db="todo";
function autorize($login,$password){
    $conn = new mysqli($this->host, $this->user, $this->password, $this->db);
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
     
     
        $sql = "SELECT * FROM `users` WHERE login='$login' && password='$password'";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    return $result->fetch_all(MYSQLI_ASSOC)[0]["login"];
    }else{
        return null;
    }
}
}