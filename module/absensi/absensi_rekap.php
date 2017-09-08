<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px">
    <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Rekap Absensi </li>
        </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
</br>
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
                                <th class="text-center" width="40%">Nama</th>
                                <th class="text-center">JK</th>
                                <th class="text-center">Alamat</th>
                                <th class="text-center">No Telp</th>
                                <th class="text-center">Absen</th>
                            </tr>
                        </thead>
                        <tbody>
                                                            
                    <?php
                    include('config/conn.php');
                        $query = "SELECT sis.nis, sis.nama, sis.jk, abs.jam_masuk, abs.jam_pulang, abs.ket
                                    FROM siswa sis
                                    JOIN kelas kls on kls.idk = sis.idk
                                    JOIN absen abs
                                    ON sis.nis = abs.nis ";
                        
                        if(!empty($_POST['tanggal']) && isset($_POST['tanggal'])){
                            $where = "WHERE abs.ket <> 'H' AND abs.tgl = STR_TO_DATE('$_POST[tanggal]','%d-%m-%Y')";
                         }

                         if(isset($_POST['kls']) && !empty($_POST['kls'])){
                            $where = "WHERE abs.ket <> 'H'  AND sis.idk = '$_POST[kls]'";
                         }

                         if((isset($_POST['kls']) && !empty($_POST['kls'])) && (!empty($_POST['tanggal']) && isset($_POST['tanggal']))){
                            $where = " WHERE abs.ket <> 'H' AND abs.tgl = STR_TO_DATE('$_POST[tanggal]','%d-%m-%Y') AND sis.idk = '$_POST[kls]'";
                         }
                         $query.= $where;

                         // echo $query;
                         $sql = mysqli_query($conn, $query);
                        $no = 1;
                        if($sql){
                            while($rs=mysqli_fetch_array($sql)) {
                        		$sqlw=mysqli_query($conn,"select * from kelas where idk='$rs[idk]'");
                        		$rsw=mysqli_fetch_array($sqlw);
                                // print_r($rsw);
                        		$sqlb=mysqli_query($conn,"select * from sekolah where id='$rsw[idk]'");
                        		$rsb=mysqli_fetch_array($sqlb);

                                if($_SESSION['level']=="admin_guru"){

                                    if($rsb['id']==$_SESSION['id']){
                                ?>
                                        <tr class="odd gradeX">
                                            <td><?php echo $no;  ?></td>
                                            <td><?php echo"$rs[nis]";  ?></td>
                                            <td><?php echo"$rs[nama]";  ?></td>
                                <?php
                                if($rs['jk']=="L"){
                                ?>
                                            <td class="text-center">Laki - Laki</td>
                                <?php
                                }else{
                                ?>
                                            <td class="text-center">Perempuan</td>
                                <?php
                                }
                                ?>
                                            <td><?php echo"$rs[alamat]";  ?></td>
                                            <td><?php echo"$rs[tlp]";  ?></td>

                                            <td class="text-center">
                                                <a href="./././media.php?module=input_siswa&act=edit&ids=<?php echo $rs['ids'] ?>">
                                               <button type="button" class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span>
                                               </button> <a href="././module/simpan.php?act=hapus&ids=<?php echo $rs['ids'] ?>">
                                               <button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></button></a>
                                            </td>

                                        </tr>
                                <?php
                                }
                                }else{
                                ?>  
                                        <tr class="odd gradeX">
                                            <td><?php echo $no;  ?></td>
                                            <td><?php echo"$rs[nis]";  ?></td>
                                            <td><?php echo"$rs[nama]";  ?></td>
                                <?php
                                if($rs['jk']=="L"){
                                ?>
                                            <td class="text-center">Laki - Laki</td>
                                <?php
                                }else{
                                ?>
                                            <td class="text-center">Perempuan</td>
                                <?php
                                }
                                ?>
                                            <td><?php echo"$rs[tlp]";  ?></td>
                                            <td class="text-center">
                        						
                        					</td>
                                            <td class="text-center">
                                                
                                            </td>
                                            <td class="text-center">
                                                
                                            </td>
                                        </tr>
                                <?php
                                }
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
