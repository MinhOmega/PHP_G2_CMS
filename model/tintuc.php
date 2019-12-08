<?php 
    class tintuc{
        var $id;
        var $tieude;
        var $noidung;
        var $anh;
        var $tacgia;
        var $ngay;
        var $id_loaitin;
        function __construct($id, $tieude, $noidung, $anh, $tacgia, $ngay,$id_loaitin)
        {
            $this->id = $id;
            $this->tieude = $tieude;
            $this->noidung = $noidung;
            $this->anh = $anh;
            $this->tacgia = $tacgia;
            $this->ngay = $ngay;
            $this->id_loaitin = $id_loaitin;
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
        static function getTinTucPopular(){
            $con = tintuc::connect();
            $sql = "SELECT * FROM tintuc ORDER by created_at DESC LIMIT 4";
            $result = $con->query($sql); 
            $lsTinTuc = array();
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    $tinTuc =  new tintuc($row["id"], $row["tieude"], $row["noidung"], $row["anh"], $row["tacgia"], $row["ngay"],$row["id_loaitin"]);
                    array_push($lsTinTuc, $tinTuc);
                }
            }
            //B3: Giải phóng kết nối
            $con->close();  
            return $lsTinTuc;
        }
        static function getTinTucPopular2(){
            $con = tintuc::connect();
            $sql = "SELECT * FROM tintuc ORDER by created_at ASC LIMIT 6";
            $result = $con->query($sql); 
            $lsTinTuc = array();
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    $tinTuc =  new tintuc($row["id"], $row["tieude"], $row["noidung"], $row["anh"], $row["tacgia"], $row["ngay"],$row["id_loaitin"]);
                    array_push($lsTinTuc, $tinTuc);
                }
            }
            //B3: Giải phóng kết nối
            $con->close();  
            return $lsTinTuc;
        }
        static function getTinTuc(){
            $con = tintuc::connect();
            $sql = "SELECT * FROM tintuc ORDER by created_at DESC";
            $result = $con->query($sql); 
            $lsTinTuc = array();
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    $tinTuc =  new tintuc($row["id"], $row["tieude"], $row["noidung"], $row["anh"], $row["tacgia"], $row["ngay"],$row["id_loaitin"]);
                    array_push($lsTinTuc, $tinTuc);
                }
            }
            //B3: Giải phóng kết nối
            $con->close();  
            return $lsTinTuc;
        }
        static function getTinTucTheoId($id){
            $con = tintuc::connect();
            $sql = "SELECT * FROM tintuc where id=".$id;
            $result = $con->query($sql);
            $tintuc = null;
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    $tintuc =  new tintuc($row["id"], $row["tieude"], $row["noidung"], $row["anh"], $row["tacgia"], $row["ngay"],$row["id_loaitin"]);
                    break;
                }
            }
            $con->close();  
            return $tintuc;
        }
        static function XoaTinTuc($id)
        {
            $con = tintuc::connect();
            $sql = "DELETE FROM tintuc WHERE id=".$id;
            if ($con->query($sql) === TRUE) {
               
            } else {
                echo "Error: " . $sql . "<br>" . $con->error;
            }
            $con->close();
        }
        static function ThemTinTuc($tieude,$noidung,$anh,$tacgia,$ngay,$id_loaitin)
        {
            $con = tintuc::connect();
            $sql = "INSERT INTO tintuc (tieude, noidung, anh, tacgia, ngay, id_loaitin) 
            VALUES ('".$tieude."','".$noidung."','".$anh."','".$tacgia."','".$ngay."','".$id_loaitin."')";
            if ($con->query($sql) === TRUE) {
               
            } else {
                echo "Error: " . $sql . "<br>" . $con->error;
            }
            $con->close();
        }
        static function SuaTinTuc($id,$tieude,$noidung,$anh,$tacgia,$ngay,$id_loaitin)
        {
            $con = tintuc::connect();

            if($anh ==""){
                $sql = "UPDATE tintuc SET tieude='".$tieude."',noidung='".$noidung."',tacgia='".$tacgia."', 
                ngay='".$ngay."', id_loaitin ='".$id_loaitin."' WHERE id=".$id;
            }
            else{
                $sql = "UPDATE tintuc SET tieude='$tieude',noidung='$noidung', anh='$anh',tacgia='$tacgia', 
                ngay='$ngay', id_loaitin ='$id_loaitin' WHERE id=".$id;
            }
            if ($con->query($sql) === TRUE) {
               
            } else {
                echo "Error: " . $sql . "<br>" . $con->error;
            }
            $con->close();
        }
        static function getListSearch($search = null)
        {
            $con = tintuc::connect();
            $sql = "SELECT * FROM tintuc WHERE tieude like '%$search%' OR tacgia like '%$search%'";
            $result = $con->query($sql);
            $lsTin = array();
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    // if (strlen(strstr($row["tieude"], $search)) || strlen(strstr($row["tacgia"], $search)) || $search == null)
                    // {
                    //     $tin =  new tintuc($row["id"], $row["tieude"], $row["noidung"], $row["anh"], $row["tacgia"], $row["ngay"],$row["id_loaitin"]);
                    //     array_push($lsTin, $tin); 
                    // }
                    $tin =  new tintuc($row["id"], $row["tieude"], $row["noidung"], $row["anh"], $row["tacgia"], $row["ngay"],$row["id_loaitin"]);
                    array_push($lsTin, $tin); 
                }
            }
            $con->close();  
            return $lsTin;
        }
    }
