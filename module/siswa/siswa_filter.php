<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px">
    <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Data Siswa </li>
        </ol>
    </div>

    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading" style="font-weight:bold">
                Pilih Kelas
            </div>
            <div class="panel-body">
                <div class="row">
                    <form method="post" role="form" action="././media.php?module=siswa_data">
                        <div class="col-lg-6">
                            <input type="hidden" name="module" value="siswa">
                            <div class="form-group">
                                <label>Kelas</label>
                                <select class="form-control" name="kls">
                                    <option value="semua">Semua</option>
                                    <?php 
                                    include 'config/conn.php';
                                    $sql=mysqli_query($conn,"select * from kelas ");  
                                    while($rs=mysqli_fetch_array($sql)){
                                    ?>
                                        <option value=<?php echo $rs['idk']?> ><?php echo $rs['nama_kelas']; ?></option>                                    
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-default">Tampilkan Data</button>
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

