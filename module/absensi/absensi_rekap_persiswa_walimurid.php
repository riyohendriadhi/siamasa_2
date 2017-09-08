<?php 
    include 'config/conn.php';
    // $query = mysqli_query($conn, "SELECT * FROM siswa")
 ?>
<link rel="stylesheet" href="css/beranda.css">
<style type="text/css">
    .row-rekap{
        margin-left: 10px;
        margin-bottom:5px;
    }
</style>
<div class="row" style="margin:10px" >
    <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Rekap Absensi > Absensi Persiswa (User Wali kelas) </li>
        </ol>
    </div>
</div>
<!-- /.row -->
<?php 
$sql ="SELECT COUNT(*) jml_sakit FROM absen where absen.ket = 'S' AND absen.nis = '$_POST[nis]';
        SELECT COUNT(*) jml_izin FROM absen where absen.ket = 'I' AND absen.nis = '$_POST[nis]';
        SELECT COUNT(*) jml_alfa FROM absen where absen.ket = 'A' AND absen.nis = '$_POST[nis]';
        SELECT COUNT(*) jml_terlambat FROM absen where absen.ket = 'T' AND absen.nis = '$_POST[nis]';";
$exec_query = mysqli_multi_query($conn, $sql);

$result1 = mysqli_store_result($conn);
while ($data_sakit = mysqli_fetch_array($result1)) {
    $jml_sakit = $data_sakit;
}
mysqli_free_result($result1);
mysqli_next_result($conn);


$result2 = mysqli_store_result($conn);
while ($data_izin = mysqli_fetch_array($result2)) {
    $jml_izin = $data_izin;
}
mysqli_free_result($result2);
mysqli_next_result($conn);

$result3 = mysqli_store_result($conn);
while ($data_alfa = mysqli_fetch_array($result3)) {
    $jml_alfa = $data_alfa;
}
mysqli_free_result($result3);
mysqli_next_result($conn);

$result4 = mysqli_store_result($conn);
while ($data_terlambat = mysqli_fetch_array($result4)) {
    $jml_terlambat = $data_terlambat;
}

// mysqli_close($conn);
?>

<div class="row row-rekap">
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        NIS
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
        <input class="form-control" type="text" name="" maxlength="200" value="<?php echo $_POST['nis'] ?>">
    </div>
    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
        
    </div>
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        Jumlah Sakit
    </div>
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        <div class="input-group">
            <input class="form-control" type="text" name="" value="<?php echo $jml_sakit['jml_sakit'] ?>">
            <div class="input-group-addon">hari</div>
        </div>
    </div>
</div>
<div class="row row-rekap">
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        Nama Siswa
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
        <input class="form-control" type="text" name="" maxlength="200" value="<?php echo $_POST['nama'] ?>">
    </div>
    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
        
    </div>
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        Jumlah Izin
    </div>
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        <div class="input-group">
            <input class="form-control" type="text" name="" value="<?php echo $jml_izin['jml_izin'] ?>">
            <div class="input-group-addon">hari</div>
        </div>
    </div>
</div>
<div class="row row-rekap">
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        Kelas
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
        <input class="form-control" type="text" name="" maxlength="200" value="<?php echo $_POST['kelas'] ?>">
    </div>
    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
        
    </div>
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        Jumlah Alpha
    </div>
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        <div class="input-group">
            <input class="form-control" type="text" name="" value="<?php echo $jml_alfa['jml_alfa'] ?>">
            <div class="input-group-addon">hari</div>
        </div>
    </div>
</div>
<div class="row row-rekap">
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        <!-- Semester -->
    </div>
    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
        <!-- <input class="form-control" type="text" name="" maxlength="200"> -->
    </div>
    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
        
    </div>
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        Jumlah Terlambata
    </div>
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        <div class="input-group">
            <input class="form-control" type="text" name="" value="<?php echo $jml_terlambat['jml_terlambat'] ?>">
            <div class="input-group-addon">hari</div>
        </div>
    </div>
</div>


<div class="row">
    <div class="col-lg-12">


        <div class="panel">
            <div class="panel-heading">
            </div>
            <div class="panel-body">
                <!-- <div class="row"> -->
                    <!-- <form class="from-horizontal" method="post"  action="?module=rkp_absen"> -->
                    <!-- <form class="form-horizontal" role="form">
                            <!-- <input type="hidden" name="module" value="siswa">
                            <div class="form-group">
                                <label for="nis" class="col-sm-2" style="margin-left: 10px">NIS</label>
                                <div class="col-sm-4">
                                    <input class="form-control" id="nis" type="text" name="nis">                                    
                                </div>
                            </div>
                            <div class="form-group">                                
                                <label class="col-sm-2" style="margin-left: 10px">Nama Siswa</label>
                                <div class="col-sm-4">
                                    <input class="form-control" id='nama_siswa' type="text" name="nama">
                                </div>
                            </div>
                            <div class="form-group">                                
                                <label class="col-sm-2" style="margin-left: 10px">Kelas</label>
                                <div class="col-sm-4">
                                    <input class="form-control" id='kelas_siswa' type="text" name="kelas">
                                </div>
                            </div>
 -->                                
                        <!-- /.col-lg-6 (nested) -->
                <!-- </div> -->
                <!-- /.row (nested) -->

                <div id="">
                    <ol class="breadcrumb">
                        <li>Data Rekap Absensi</li>
                    </ol>
                </div>

                <?php 
                $query_rekap = mysqli_query($conn, "SELECT absen.tgl, absen.jam_masuk, absen.jam_pulang, absen.ket, absen.keterangan FROM absen
                    left JOIN siswa ON siswa.nis = absen.nis
                    left JOIN semester ON semester.id_semester = absen.id_semester
                    WHERE absen.tgl BETWEEN (SELECT semester.tgl_awal FROM semester
                     WHERE semester.id_semester = absen.id_semester)
                    AND (SELECT semester.tgl_akhir FROM semester
                     WHERE semester.id_semester = absen.id_semester)
                    AND absen.nis = '$_POST[nis]'");
                    
                    // -- AND absen.nis = '9985108364'");
                 ?>

                <table id="table_data" class="table table-striped table-bordered table-hover" >
                    <thead>
                        <tr>                            
                            <th style="text-align:center;">No.</th>
                            <th style="text-align:center;">Hari</th>
                            <th style="text-align:center;">Tanggal</th>
                            <th style="text-align:center;">Datang</th>
                            <th style="text-align:center;">Pulang</th>
                            <th style="text-align:center;">Datang</th>
                            <th style="text-align:center;">Pulang</th>
                            <th style="text-align:center;">Absensi</th>
                            <th style="text-align:center;">Keterangan</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        $no = 1;
                        while($res_rekap = mysqli_fetch_array($query_rekap)){
                        ?>                            
                        <tr>                            
                            <td style="text-align:center;"><?php echo $no; ?></td>
                            <td style="text-align:center;">Hari</td>
                            <td style="text-align:center;"><?php echo $res_rekap['tgl']; ?></td>
                            <td style="text-align:center;">Datang</td>
                            <td style="text-align:center;">Pulang</td>
                            <td style="text-align:center;"><?php echo $res_rekap['jam_masuk']; ?></td>
                            <td style="text-align:center;"><?php echo $res_rekap['jam_pulang']; ?></td>
                            <td style="text-align:center;"><?php echo $res_rekap['ket']; ?></td>
                            <td style="text-align:center;"><?php echo $res_rekap['keterangan']; ?></td>
                        </tr>
                        <?php 
                        $no++;
                        }
                        ?>
                    </tbody>
                </table>  
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

