<?php 
    class User{
        var $id;
        var $hoTen;
        var $email;
        var $matKhau;
        
        function __construct($id, $hoTen, $email, $matKhau)
        {
            $this->id = $id;
            $this->hoTen = $hoTen;
            $this->email = $email;
            $this->matKhau = $matKhau;

        }
        static function connect(){
            $con = new mysqli("localhost","root","","tintucphp");
            $con->set_charset("utf8");
            if($con->connect_error){
                die("Kết nối thất bại. Chi tiết: ".$con->connect_error);
               
            }
            return $con;

        }
        static function authentication($email, $password)
        {
            $con = User::connect();
            $sql = "SELECT * FROM user";
            $result = $con->query($sql);  
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    if($email == $row["email"] && $password == $row["matkhau"] )
                    {
                        return new User($row["id"], $row["hoten"], $row["email"], $row["matkhau"]);
                        
                    }
                }
                return null;
            }
           
            $con->close();  
          
        }
    }
?>