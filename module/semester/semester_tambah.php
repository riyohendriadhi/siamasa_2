<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Tambah Data semester</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
            <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Tambah Data semester
            </div>
            <div class="panel-body">
                <div class="row">
                    <form id="form_tambah_semester" method="post" role="form" action="././module/simpan.php?act=semester_tambah">
                    <div class="col-lg-6">
                        <div class="form-group">
                                <label>Nama semester</label>
                                <input class="form-control" placeholder="Semester" name="semester" >
                            </div>
                            <div class="form-group">
                                <label>Tahun Ajaran</label>
                                <select class="form-control" name="tahun">
                                    <option value="<?php echo date('Y'); ?>"><?php echo date('Y'); ?></option>
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
                                <input type="text" class="form-control tgl_picker" placeholder="Tanggal Awal Semester" name="tgl_awal">
                            </div>
                            <div class="form-group">
                                <label>Tanggal Akhir Semester</label>
                                <input type="text" class="form-control tgl_picker" placeholder="Tanggal Akhir Semester" name="tgl_akhir" ">
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