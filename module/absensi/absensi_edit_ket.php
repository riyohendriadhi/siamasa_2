<?php include 'config/conn.php' ?>
<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px" >
    <div id="">
        <ol class="breadcrumb">
            <liclass="link_breadcrumb" href="#">Rekap Absensi / Rekap Absensi perhari > Ubah Rekap Absensi</li>
        </ol>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Ubah Data Absen
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-7">
                    <?php 
                    $query_get = mysqli_query($conn,"SELECT absen.ida, absen.tgl, absen.ket, absen.jam_masuk, absen.jam_pulang, siswa.nis,siswa.nama, siswa.jk, kelas.nama_kelas FROM siswa
                            JOIN absen ON siswa.nis = absen.nis
                            JOIN kelas ON kelas.idk = siswa.idk
                            WHERE absen.ida = $_GET[id_abs]");
                    while ($res_get = mysqli_fetch_array($query_get)) {
                        $nis   = $res_get['nis'];
                        $nama  = $res_get['nama'];
                        $kelas = $res_get['nama_kelas'];
                        $ket   = $res_get['ket'];
                        if ($ket == 'I') {
                            $keterangan = 'Izin';
                        }else
                        if ($ket == 'S') {
                            $keterangan = 'Sakit';
                        }else
                        if ($ket == 'T') {
                            $keterangan = 'Terlambat';
                        }else{
                            $keterangan = 'Alpha';                            
                        }
                    }
                     ?>
                        <form class="form-horizontal" method="POST"  action="././module/simpan.php?act=edit_absen_ket">
                            <input type="hidden" name="id_absen" value="<?php echo $_GET['id_abs'] ?>">
                            <div class="form-group">
                                <!-- <input class="form-control tgl_picker" type="text" name="tgl_absen"> -->
                                <label class="col-md-2">NIS</label>
                                <div class="col-md-10">
                                    <input class="form-control" type="text" name="nis" value="<?php echo $nis ?>">                                    
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2">Nama Siswa</label>
                                <div class="col-md-10">
                                    <input class="form-control" type="text" name="nama" value="<?php echo $nama ?>">                                     
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2">Kelas</label>
                                <div class="col-md-10">
                                    <input class="form-control" type="text" name="kelas" value="<?php echo $kelas ?>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2">Keterangan</label>
                                <div class="col-md-10">
                                <select name="keterangan" class="form-control">
                                    <option value="<?php echo $ket ?>"><?php echo $keterangan ?></option>
                                    <option value="A">Alpha</option>
                                    <option value="I">Izin</option>
                                    <option value="S">Sakit </option>
                                    <option value="T">Terlambat</option>
                                </select>
                                </div>
                            </div>
                                
                            <!-- </div> -->
                            <button type="submit" class="btn btn-default">Simpan</button>
                        </form>
                    </div>
                        <!-- /.col-lg-6 (nested) -->
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

