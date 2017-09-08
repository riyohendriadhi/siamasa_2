<?php 
    include('config/conn.php');
?> 
<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px; margin-bottom:0px">
    <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Rekap Absensi > Absensi Hari ini (Untuk admin) </li>
        </ol>
    </div>
</div>
<form style="float: left;"  method="POST" action="">
    <input type="hidden" name="kls">    
    <input placeholder="<?php echo date('d-m-Y'); ?>" class="form-control tgl_picker" style="width: 150px; margin-bottom:5px;float: left;margin-right:5px" type="text" name="tanggal" value="<?php echo isset($_POST['tanggal'])?$_POST['tanggal']:''; ?>">
    <button type="submit" class="btn btn-info" >Tampilkan</button>
</form>
<a href="module/absensi/absensi_cetak.php?tanggal=<?php echo isset($_POST['tanggal'])?$_POST['tanggal']:''; ?>&kelas=<?php empty($_POST['kls'])?'':$_POST['kls']; ?>" target="_blank">
    <button class="btn btn-info float_right" style="margin-right: 10px"><span class="glyphicon glyphicon-print"></span> Cetak</button>
</a>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <span style="float: right; margin-right: 20px; margin-bottom: 10px">Keterangan : H = Hadir, S = Sakit A = Alpha, I = Ijin, T = Terlambat.</span>
            <div class="panel-heading">
                Data Absensi
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="table_data">
                        <thead>
                            <tr>
                                <th class="text-center">No</th>
                                <th class="text-center">NIS</th>
                                <th class="text-center">Nama Siswa</th>
                                <th class="text-center">Kelas</th>
                                <th class="text-center">No.HP Orangtua</th>
                                <th class="text-center">Datang</th>
                                <th class="text-center">Pulang</th>
                                <th class="text-center">Keterangan</th>
                            </tr>
                        </thead>
                        <tbody>                                                                        
                        <?php
                        // print_r($_POST);
                        $no = 1;

                        $where = '';
/*                        $query = "SELECT sis.nis, sis.nama,kls.nama_kelas, sis.tlp, abs.jam_masuk, abs.jam_pulang, abs.ket
                                    FROM siswa sis
                                    JOIN kelas kls on kls.idk = sis.idk
                                    JOIN absen abs
                                    ON sis.nis = abs.nis ";*/

                        $query = "SELECT sis.nis, sis.nama,kls.nama_kelas, sis.tlp, (SELECT MIN(abs2.jam_masuk ) FROM absen abs2 WHERE abs2.nis= abs1.nis ) as jam_masuk,
                         (SELECT MAX(abs2.jam_pulang ) FROM absen abs2 WHERE abs2.nis= abs1.nis ) as jam_pulang, abs1.ket
                        FROM absen abs1 
                        JOIN siswa sis ON sis.nis = abs1.nis
                        JOIN kelas kls ON kls.idk = sis.idk ";  
                                                
                        if(!empty($_POST['tanggal']) && isset($_POST['tanggal'])){
                            $where = "WHERE abs1.tgl = STR_TO_DATE('$_POST[tanggal]','%d-%m-%Y') GROUP BY abs1.nis";
                         }

                         if(isset($_POST['kls']) && !empty($_POST['kls'])){
                            $where = "WHERE sis.idk = '$_POST[kls]' GROUP BY abs1.nis";
                         }

                         if((isset($_POST['kls']) && !empty($_POST['kls'])) && (!empty($_POST['tanggal']) && isset($_POST['tanggal']))){
                            $where = " WHERE abs1.tgl = STR_TO_DATE('$_POST[tanggal]','%d-%m-%Y') AND sis.idk = '$_POST[kls]' GROUP BY abs1.nis" ;
                         }
                         $query.= $where;

                         // echo $query;
                         $sql = mysqli_query($conn, $query);
                        $no = 1;
                        if($sql){
                            while($rs = mysqli_fetch_array($sql)) {  
                        // print_r($rs);
                                ?> 
                                <tr class="odd gradeX">
                                    <td style="text-align: center;" ><?php echo $no;  ?></td>
                                    <td><?php echo"$rs[nis]";  ?></td>
                                    <td><?php echo"$rs[nama]";  ?></td>
                                    <!-- <td class="text-center">
                                        <?php //$jk =($rs['jk'] == "L")?"Laki - Laki": "Perempuan"; echo $jk; ?>
                                    </td> -->
                                    <td> <?php echo"$rs[nama_kelas]"; ?> </td>
                                    <td> <?php echo"$rs[tlp]"; ?> </td>
                                    <td class="text-center"> <?php echo $rs['jam_masuk'] ?> </td>
                                    <td class="text-center"> <?php echo $rs['jam_pulang'] ?> </td>
                                    <td class="text-center">
                                        <input type="radio" name="" <?php echo ($rs['ket']=="H")?"checked":""; ?>><span class="ket-rekap_absensi">H</span>
                                        <input type="radio" name="" <?php echo ($rs['ket']=="A")?"checked":"disabled"; ?>><span class="ket-rekap_absensi">A</span>
                                        <input type="radio" name="" <?php echo ($rs['ket']=="I")?"checked":"disabled"; ?>><span class="ket-rekap_absensi">I</span>
                                        <input type="radio" name="" <?php echo ($rs['ket']=="S")?"checked":"disabled"; ?>><span class="ket-rekap_absensi">S</span>
                                        <input type="radio" name="" <?php echo ($rs['ket']=="T")?"checked":"disabled"; ?>><span class="ket-rekap_absensi">T</span>
                                    </td>
                                </tr>
                                <?php
                        
                                $no++;
                                }
                        }
                        ?>
                        </tbody>
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
