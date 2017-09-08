<?php 
    include 'config/conn.php';
    // include 'lib/libs.php';

    $query = mysqli_query($conn, "SELECT * FROM siswa")
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
<?php 
$sql ="SELECT COUNT(*) as jml_sakit, kl.* ,abs.ida, abs.nis, abs.tgl, ( CASE WHEN abs.ket IS NULL  THEN 'A' ELSE abs.ket END ) as ket,abs.masuk, abs.pulang FROM kalender kl LEFT JOIN (SELECT abs1.*, (SELECT MIN(abs2.jam_masuk ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as masuk,
 (SELECT MAX(abs2.jam_pulang ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as pulang
 FROM absen abs1 where abs1.nis = '$_POST[nis]' GROUP BY abs1.tgl) abs ON abs.tgl = kl.tanggal WHERE abs.ket='S';

        SELECT COUNT(*) as jml_izin, kl.* ,abs.ida, abs.nis, abs.tgl, ( CASE WHEN abs.ket IS NULL  THEN 'A' ELSE abs.ket END ) as ket,abs.masuk, abs.pulang FROM kalender kl LEFT JOIN (SELECT abs1.*, (SELECT MIN(abs2.jam_masuk ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as masuk,
 (SELECT MAX(abs2.jam_pulang ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as pulang
 FROM absen abs1 where abs1.nis = '$_POST[nis]' GROUP BY abs1.tgl) abs ON abs.tgl = kl.tanggal WHERE abs.ket='I';

        SELECT COUNT(*) as jml_alfa, kl.* ,abs.ida, abs.nis, abs.tgl, ( CASE WHEN abs.ket IS NULL  THEN 'A' ELSE abs.ket END ) as ket,abs.masuk, abs.pulang FROM kalender kl LEFT JOIN (SELECT abs1.*, (SELECT MIN(abs2.jam_masuk ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as masuk,
 (SELECT MAX(abs2.jam_pulang ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as pulang
 FROM absen abs1 where abs1.nis = '$_POST[nis]' GROUP BY abs1.tgl) abs ON abs.tgl = kl.tanggal WHERE abs.ket IS NULL OR abs.ket = 'A' OR abs.ket = '';

        SELECT COUNT(*) as jml_terlambat, kl.* ,abs.ida, abs.nis, abs.tgl, ( CASE WHEN abs.ket IS NULL  THEN 'A' ELSE abs.ket END ) as ket,abs.masuk, abs.pulang FROM kalender kl LEFT JOIN (SELECT abs1.*, (SELECT MIN(abs2.jam_masuk ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as masuk,
 (SELECT MAX(abs2.jam_pulang ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as pulang
 FROM absen abs1 where abs1.nis = '$_POST[nis]' GROUP BY abs1.tgl) abs ON abs.tgl = kl.tanggal WHERE abs.ket='T';

SELECT COUNT(id_kalender) as libur FROM kalender WHERE keterangan != 'Aktif' ";
 
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

mysqli_free_result($result4);
mysqli_next_result($conn);
$result5 = mysqli_store_result($conn);
while ($data_libur = mysqli_fetch_array($result5)) {
    $jml_libur = $data_libur;
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
            <input class="form-control" type="text" name="" value="<?php echo (int)$jml_alfa['jml_alfa'] - (int)$jml_libur['libur'] ?>">
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
        Jumlah Terlambat
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

                <div id="">
                    <ol class="breadcrumb">
                        <li>Data Rekap Absensi</li>
                    </ol>
                </div>

                <?php 
                // $sql = "SELECT kl.*, DAYNAME(kl.tanggal) AS hari, '08:00:00' as jadwal_masuk, '13:00:00' as jadwal_pulang,abs.*
                //     FROM kalender kl
                //     LEFT JOIN (SELECT abs1.*, (SELECT MIN(abs2.jam_masuk ) FROM absen abs2 WHERE abs2.nis= abs1.nis ) as masuk,
                //      (SELECT MAX(abs2.jam_pulang ) FROM absen abs2 WHERE abs2.nis= abs1.nis ) as pulang
                //      FROM absen abs1 where abs1.nis = '$_POST[nis]' GROUP BY abs1.nis) abs ON abs.tgl = kl.tanggal
                //     ORDER BY kl.tanggal;";

                 $sql = "SELECT kl.*, DAYNAME(kl.tanggal) AS hari, '08:00:00' as jadwal_masuk, '13:00:00' as jadwal_pulang,abs.ida, abs.nis, abs.tgl, ( CASE WHEN abs.ket IS NULL  THEN 'A' ELSE abs.ket END ) as ket,abs.masuk, abs.pulang
                        FROM kalender kl
                        LEFT JOIN (SELECT abs1.*, (SELECT MIN(abs2.jam_masuk ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as masuk,
                         (SELECT MAX(abs2.jam_pulang ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as pulang
                         FROM absen abs1 where abs1.nis = '$_POST[nis]' GROUP BY abs1.tgl) abs ON abs.tgl = kl.tanggal
                        ORDER BY kl.tanggal;";
// echo $sql;
                $query_rekap = mysqli_query($conn, $sql);
                    
                 ?>

                <table id="table_data" class="table table-striped table-bordered table-hover" >
                    <thead>
                        <tr>                            
                            <th rowspan="2" style="text-align:center;">No.</th>
                            <th rowspan="2" style="text-align:center;">Tanggal</th>
                            <th rowspan="2" style="text-align:center;">Hari</th>
                            <th colspan="2" style="text-align:center;">Jadwal</th>
                            <th colspan="2" style="text-align:center;">Kehadiran</th>
                            <th rowspan="2" style="text-align:center;">Absensi</th>
                            <th rowspan="2" style="text-align:center;">Keterangan</th>
                        </tr>
                        <tr>
                            <th style="text-align:center;">Datang</th>
                            <th style="text-align:center;">Pulang</th>
                            <th style="text-align:center;">Datang</th>
                            <th style="text-align:center;">Pulang</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        $no = 1;
                        while($res_rekap = mysqli_fetch_array($query_rekap)){
                            if($res_rekap['hari'] == 'Sunday' || $res_rekap['keterangan'] != "Aktif"){
                                ?>
                                <tr>                            
                                    <td style="text-align:center;"><?php echo $no; ?></td>
                                    <td style="text-align:center;"><?php echo $res_rekap['tanggal']; ?></td>
                                    <td style="text-align:center;"><?php echo translate_hari($res_rekap['hari']); ?></td>
                                    <td style="text-align:center;"> - </td>
                                    <td style="text-align:center;"> - </td>
                                    <td style="text-align:center;"> - </td>
                                    <td style="text-align:center;"> - </td>
                                    <td style="text-align:center;"> - </td>
                                    <td style="text-align:center;"><?php echo $res_rekap['keterangan']; ?></td>
                                </tr>
                            <?php
                            }else{
                            ?>                            
                        <tr>                            
                            <td style="text-align:center;"><?php echo $no; ?></td>
                            <td style="text-align:center;"><?php echo $res_rekap['tanggal']; ?></td>
                            <td style="text-align:center;"><?php echo translate_hari($res_rekap['hari']); ?></td>
                            <td style="text-align:center;"><?php echo $res_rekap['jadwal_masuk']; ?></td>
                            <td style="text-align:center;"><?php echo $res_rekap['jadwal_pulang']; ?></td>
                            <td style="text-align:center;"><?php echo $res_rekap['masuk']; ?></td>
                            <td style="text-align:center;"><?php echo $res_rekap['pulang']; ?></td>
                            <!-- <td style="text-align:center;"><?php echo $res_rekap['ket_absen']; ?></td> -->
                            <td style="text-align:center;">
                                <input type="radio" <?php if($res_rekap['ket'] == 'H') {echo "checked";}else{echo "disabled";} ?>>Hadir
                                <input type="radio" <?php if($res_rekap['ket'] == 'A') {echo "checked";}else{echo "disabled";} ?>>Alpha
                                <input type="radio" <?php if($res_rekap['ket'] == 'S') {echo "checked";}else{echo "disabled";} ?>>Sakit
                                <input type="radio" <?php if($res_rekap['ket'] == 'I') {echo "checked";}else{echo "disabled";} ?>>Izin
                            </td>
                            <td style="text-align:center;"><?php echo $res_rekap['keterangan']; ?></td>
                        </tr>
                        <?php 
                            }
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
/.row

