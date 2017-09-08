<?php
include 'config/conn.php';
?>
<div class="row">
    <div class="col-lg-12">
        <h2 class="page-header">Edit Data Sekolah</h2>
    </div>
    <!-- /.col-lg-12 -->
</div>
            <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Edit Data Sekolah
            </div>
            <div class="panel-body">
                <div class="row">
                <?php                            
            	$sql = mysqli_query($conn, "select * from sekolah");
				$rs  = mysqli_fetch_array($sql);
                ?>
                    <form method="post" role="form" action="././module/simpan.php?act=sekolah_edit">
                    <div class="col-lg-6">
                        <input type="hidden" name="id" value="<?php echo $rs['id'] ?>" />
                            <div class="form-group">
                                <label>Kode Sekolah</label>
                                <input class="form-control" placeholder="Kode" name="kode" value="<?php echo "$rs[kode]"; ?>">
                            </div>
                            <div class="form-group">
                                <label>Nama Sekolah</label>
                                <input class="form-control" placeholder="Nama Sekolah" name="nama" value="<?php echo "$rs[nama]"; ?>">
                            </div>                            
                            <div class="form-group">
                                <label>Alamat</label>
                                <textarea class="form-control" placeholder="Alamat" name="alamat" rows="3"><?php echo "$rs[alamat]"; ?></textarea>
                            </div>
                            <button type="submit" class="btn btn-default">Simpan</button>
                    </div>
                    <!-- /.col-lg-6 (nested) -->
                        </form>

                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->             