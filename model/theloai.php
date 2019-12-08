<?php
    class TheLoai{
        var $id;
        var $tenLoai;
        function __construct($id, $tenLoai)
        {
            $this->id = $id;
            $this->tenLoai = $tenLoai;
        }
        static function connect(){
            $con = new mysqli("localhost","root","","tintucphp");
            $con->set_charset("utf8");
            if($con->connect_error){
                die("Kết nối thất bại. Chi tiết: ".$con->connect_error);
                //die: return. kết thúc hàm
            }
            return $con;

        }
        static function getTheLoai(){
            $con = TheLoai::connect();
            $sql = "SELECT * FROM theloai";
            $result = $con->query($sql); 
            $lsTheLoai = array();
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    $theLoai =  new TheLoai($row["id"], $row["tenloai"]);
                    array_push($lsTheLoai, $theLoai);
                }
            }
            //B3: Giải phóng kết nối
            $con->close();  
            return $lsTheLoai;
        }
        static function XoaCategory($id){
            $con = TheLoai::connect();
            $sql = "DELETE FROM theloai WHERE id=".$id;
            if ($con->query($sql) === TRUE) {
               
            } else {
                echo "Error: " . $sql . "<br>" . $con->error;
            }
            $con->close();
        }
        static function AddCategory($newCategory){
            $con = TheLoai::connect();
            $sql = "INSERT INTO theloai(tenloai) VALUES ('".$newCategory."')";
            if ($con->query($sql) === TRUE) {
               
            } else {
                echo "Error: " . $sql . "<br>" . $con->error;
            }
            $con->close();
        }
        static function EditCategory($id, $name){
            $con = TheLoai::connect();
            $sql = "UPDATE theloai SET tenloai = '".$name."' WHERE id =".$id;
            if ($con->query($sql) === TRUE) {               
            } else {
                echo "Error: " . $sql . "<br>" . $con->error;
            }
            $con->close();
        }
        static function getCategoryByID($id){
            $con = TheLoai::connect();
            $sql = "SELECT * FROM theloai where id=".$id;
            $result = $con->query($sql);
            $list = null;
            if($result->num_rows > 0){
                while($row = $result ->fetch_assoc()){
                    $list = new TheLoai($row["id"],$row["tenloai"]);
                break;
                }
            }
            $con ->close();
            return $list;
        }
    }
?>