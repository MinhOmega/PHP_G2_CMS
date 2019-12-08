<?php include_once("headeradmin.php")?>
<?php include_once("navadmin.php")?>
<?php 
    include_once("../model/user.php");
    include_once("../model/tintuc.php");
    include_once("../model/theloai.php");
    $check = "";
    $lsLoai = TheLoai::getTheLoai();
    if(isset($_REQUEST['editCategory'])){
        $category = $_REQUEST['tenabc'];
        TheLoai::EditCategory($_REQUEST['id'],$category);
        $check="Cập nhật thành công";
    }
    $tt = TheLoai::getCategoryByID($_GET['id']);
    
?>
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <?php if(strlen($check) !=0){?>
                            <div class="alert alert-success">
                                <p style="text-align:center;font-weight:bold;"><?php echo $check;?></p>
                            </div>
                        <?php }?>
                        <h1 class="page-header">Category
                            <small>edit</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form action="" enctype='multipart/form-data' method="POST">
							
							<div class="form-group">
                                <label>Edit Category</label>                                
                                <input class="form-control" name="tenabc" value="<?php echo $tt->category?>" placeholder="Nhập tên sản phẩm" />
                            </div>                                                
                            <button type="submit" name="editCategory" class="btn btn-default">Edit Category</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                        <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
       

<?php include_once("footeradmin.php")?>
