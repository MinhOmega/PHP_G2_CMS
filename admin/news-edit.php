<?php include_once("headeradmin.php")?>
<?php include_once("navadmin.php")?>
<?php 
   
    include_once("../model/tintuc.php");
    include_once("../model/theloai.php");
    $check = "";
    $lsLoai = TheLoai::getTheLoai();
    
    if(isset($_REQUEST['editNew'])){
        $tieude = $_REQUEST['tieude'];
        $noidung = $_REQUEST['content'];
        $theloai = $_REQUEST['theloai'];
        $tacgia = $user->hoTen;
        $path="../img/";
        $tenanh="";
        if(isset($_FILES['hinhanh'])){
           if($_FILES['hinhanh']['type']== "image/jpeg"||$_FILES['hinhanh']['type']== "image/jpg"|| $_FILES['hinhanh']['type']== "image/png"){
                if($_FILES['hinhanh']['error'] == 0){
                    //tiến hành đưa file lên server
                    $filename = $_FILES['hinhanh']['tmp_name'];
                    move_uploaded_file($filename, $path.$_FILES['hinhanh']['name']);
                    $tenanh = $_FILES['hinhanh']['name'];
                }
                else{
                    echo "Lỗi File";
                }
           }
           else{
               echo "Không đúng định dạng";
           }
        }
        $anh = $tenanh;
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $ngayTao = date('Y-m-d H:i:s', time());
        tintuc::SuaTinTuc($_GET['id'],$tieude,$noidung,$anh,$tacgia,$ngayTao, $theloai);
        $check = "Sửa Tin Tức Thành Công!";
        
        
    }
    $tt = tintuc::getTinTucTheoId($_GET['id']);
    
?>        
       
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <?php if(strlen($check)!=0){?>
                            <div class="alert alert-success" role="alert"><?php echo $check;?></div>
                        <?php }?>
                        <h1 class="page-header">News
                            <small>Edit</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form action="" enctype='multipart/form-data' method="POST">
                            <div class="form-group">
                                <label>Thể Loại</label>
                                <select class="form-control" name="theloai">
                                    <?php foreach($lsLoai as $key=> $value){?>
                                    	<option value="<?php echo $value->id?>" <?php if($value->id == $tt->id_loaitin) echo "selected" ?> > <?php echo $value->tenLoai?></option>
									<?php }?>
                                    
                                </select>
                            </div>
							<div class="form-group">
                                <label>Tiêu đề</label>
                                <input class="form-control" name="tieude" value="<?php echo $tt->tieude ?>" placeholder="" />
                            </div>
                            <div class="form-group">
                                <label>Nội dung</label>
                                <textarea name="content" id="editor1" class="form-control ckeditor"  rows="3" ><?php echo $tt->noidung ?></textarea>
                            </div>
                           

                            <div class="form-group">
                               <img src="../img/<?php echo $tt->anh ?>" style="width:1000px;" alt="">
                            </div>
                            <div class="form-group">
                                <label>Images</label>
                                <input type="file" name="hinhanh">
                            </div>
                            
                            <button type="submit" name="editNew" class="btn btn-default">Sửa Tin Tức</button>
                            <button type="reset" class="btn btn-default">Đặt Lại</button>
                        <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
        <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
        <script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
        </script>

<?php include_once("footeradmin.php")?>
