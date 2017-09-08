<?php include 'config/conn.php' ?>
<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px" >
    <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Rekap Absensi </li>
        </ol>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Pilih Kelas
            </div>
            <div class="panel-body">
                <div class="row">
                    <form method="post"  action="?module=rekap_absen_admin">
                        <div class="col-lg-6">
                            <!-- <input type="hidden" name="module" value="siswa"> -->
                            <div class="form-group" style="width:300px">
                                <label>Kelas</label>
                                <select class="form-control" name="kls">
                                    <option value="" >Semua</option>
                                    <?php 
                                    $sql=mysqli_query($conn,"select * from kelas");    
                                    while($rs=mysqli_fetch_array($sql)){
                                    ?>  
                                    <option value="<?php echo $rs['idk'] ?>"><?php echo $rs['nama_kelas'] ?></option>";    
                                    <?php
                                    }
                                    ?>
                                </select>
                                </br>
                                <label>Tanggal</label></br>
                                <input class="form-control tgl_picker" type="text" name="tanggal" value="<?php echo date('d-m-Y') ?>" >
                                <!-- </div> -->
                            </div>
                            <button type="submit" class="btn btn-default">Tampilkan</button>
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

