<?php
include 'config/conn.php';
?>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Edit Data semester</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
            <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Edit Data semester
            </div>
            <div class="panel-body">
                <div class="row">
                <?php                            
            	$query_smstr_byid = mysqli_query($conn, "SELECT id_semester,semester, tahun, DATE_FORMAT(tgl_awal,'%d-%m-%Y') tgl_awal, DATE_FORMAT(tgl_akhir,'%d-%m-%Y') tgl_akhir FROM semester WHERE id_semester = '$_GET[id_semester]'");
				$res_byid         = mysqli_fetch_array($query_smstr_byid);
                ?>
                    <form method="post" role="form" action="././module/simpan.php?act=semester_edit">
                    <div class="col-lg-6">
                        <input type="hidden" name="id" value="<?php echo $_GET['id_semester'] ?>" />
                            <div class="form-group">
                                <label>Nama semester</label>
                                <input class="form-control" placeholder="Semester" name="semester" value="<?php echo $res_byid['semester']; ?>">
                            </div>
                            <div class="form-group">
                                <label>Tahun Ajaran</label>
                                <select class="form-control" name="tahun">
                                    <option value="<?php echo $res_byid['tahun']; ?>"><?php echo $res_byid['tahun']; ?></option>
                                    <?php 
                                    $tahun = date('Y');
                                    for ($i=$tahun-5; $i < $tahun+10; $i++) { 
                                    ?>
                                        <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                                    <?php
                                    }
                                    ?> 
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Tanggal Awal Semester</label>
                                <input class="form-control tgl_picker" placeholder="Tanggal Awal Semester" name="tgl_awal" value="<?php echo $res_byid['tgl_awal']; ?>">
                            </div>
                            <div class="form-group">
                                <label>Tanggal Akhir Semester</label>
                                <input class="form-control tgl_picker" placeholder="Tanggal Akhir Semester" name="tgl_akhir" value="<?php echo $res_byid['tgl_akhir']; ?>">
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