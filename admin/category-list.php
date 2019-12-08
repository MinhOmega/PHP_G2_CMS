<?php include_once("headeradmin.php")?>
<?php include_once("navadmin.php")?>
<?php 
include_once("../model/theloai.php");
if(isset($_REQUEST['delCategory']))
    {
       tintuc::XoaTinTuc($_REQUEST['idCategory']);
    }
$ls = TheLoai::getTheLoai();
?>
<div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Category
                            <small>List</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                                <th>ID</th>
                                <th>Tên loại</th>
                                <th>Xóa</th>
                                <th>Sửa</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach($ls as $key => $value){?>
                                <tr class="odd gradeX" align="center">
                                <td><?php echo $value->id?></td>                               
                                <td><?php echo $value->tenLoai?></td>                              
                                <td class="center">
                                        <button type="submit" class="btn btn-outline-secondary" data-toggle="modal" data-target="<?php echo "#edit".$value->id ?>"><i class="fa fa-trash-o  fa-fw"></i> Xóa</button>
                                        <div class="modal fade" id="<?php echo "edit".$value->id ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                            <form action="" method="post">  
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Bạn có Thực sự muốn xóa: <?php echo $value->tieude ?></h5>
                                                
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                                </div>
                                                
                                                <div class="modal-footer">
                                                <input type="hidden" name="idCategory" value="<?php echo $value->id  ?>" />
                                                <button type="submit" class="btn btn-primary" name="delCategory">Xóa Luôn</button>
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Thôi</button>
                                                
                                                </div>
                                            </div>
                                            </form>
                                         </div>
                                </td>
                                <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="category-edit.php?id=<?php echo $value->id?>">Sửa</a></td>
                                </tr>
                            <?php }?>
                        </tbody>
                    </table>
                </div>
            </div>
</div>
<?php include_once("footeradmin.php")?>
