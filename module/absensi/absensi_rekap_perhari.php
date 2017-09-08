    <link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px;margin-bottom:00px">
    <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Rekap Absensi > Absensi Hari ini (Untuk wali kelas)</li>
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
                <form id="form_tgl_rekap" action="media.php?module=absensi_rekap_perhari" method="POST">
                    <span style="float:left;margin-right:5px">Kelas : </span> <?php echo $_SESSION['nama_kelas'] ?></br></br>
                    <span style="float:left;margin-right:5px">Tanggal </span>
                    <input id="input_tgl_rekap" class="form-control tgl_picker" style="float:left;width:100px; height:25px" type="text" name="tanggal" value="<?php echo date('d-m-Y')?>">
                </form>
                </br>
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="table_data">
                        <thead>
                            <tr>
                                <th class="text-center">No</th>
                                <th class="text-center">NIS</th>
                                <th class="text-center">Nama</th>
                                <th class="text-center">Jk</th>
                                <!-- <th class="text-center">Alamat</th> -->
                                <th class="text-center">Masuk</th>
                                <th class="text-center">Pulang</th>
                                <th class="text-center">Keterangan</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>                                                                        
                        
                        <?php
                        include('config/conn.php');
                        $no = 1;

                        $sql = "SELECT absen.ida, absen.tgl, absen.ket, absen.jam_masuk, absen.jam_pulang, siswa.nis,siswa.nama, siswa.jk,
                             (SELECT MIN(abs2.jam_masuk ) FROM absen abs2 WHERE abs2.nis= absen.nis ) as masuk,
                             (SELECT MAX(abs2.jam_pulang ) FROM absen abs2 WHERE abs2.nis= absen.nis ) as pulang
                             FROM absen JOIN siswa ON siswa.nis = absen.nis 
                            WHERE siswa.idk = $_SESSION[id_kelas] ";

                        if(isset($_POST['tanggal'])){ ?>
                            <script type='text/javascript'>
                                $('.tgl_picker').val("<?php echo $_POST['tanggal']; ?>");
                            </script>

                        <?php   
                            $tanggal = date("Y-m-d", strtotime($_POST['tanggal']));
                            $where = "AND absen.tgl = '$tanggal' GROUP BY siswa.nis ORDER BY absen.ket";  
                        }else{  
                            $where = "AND absen.tgl = CURDATE() GROUP BY siswa.nis ORDER BY absen.ket";
                        }
echo $sql.$where;

                        $query_rekap = mysqli_query($conn, $sql.$where);
                        $no = 1;
                        if($query_rekap){
                            while($res_rekap=mysqli_fetch_array($query_rekap)) {                        		
                        ?>
                                
                        <tr>
                            <td class="text-center"><?php echo $no; ?></td>
                            <td><?php echo $res_rekap['nis'];  ?></td>
                            <td><?php echo $res_rekap['nama'];  ?></td>
                            <td class="text-center"><?php echo ($res_rekap=="L")?"Laki - aki":"Perempuan"; ?></td>
                            <td class="text-center"><?php echo $res_rekap['masuk'];  ?></td>
                            <td class="text-center"><?php echo $res_rekap['pulang'];  ?></td>
                            
                            <?php
                            // print_r($res_rekap);exit;
                            // print_r($res_rekap['ket']);echo"<p>";
                            if ($res_rekap['ket'] === 'I') {
                            ?>
                                <td style="text-align:center;">
                                Izin
<!--                                     <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">A</span>
                                    <input class="radio" type="radio" name="keterangan" checked><span class="ket-rekap-absensi">I</span>
                                    <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">S</span>
                                    <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">T</span> -->
                                </td>
                            <?php
                            }else
                            if($res_rekap['ket'] == 'S'){
                                ?>
                                <td style="text-align:center;">
                                Sakit
                                    <!-- <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">A</span>
                                    <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">I</span>
                                    <input class="radio" type="radio" name="keterangan" checked><span class="ket-rekap-absensi">S</span>
                                    <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">T</span> -->
                                </td>
                            <?php
                            }else
                            if ($res_rekap['ket'] == 'T'){
                                ?>
                                <td style="text-align:center;">
                                Terlambat
                                    <!-- <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">A</span>
                                    <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi" >I</span>
                                    <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">S</span>
                                    <input class="radio" type="radio" name="keterangan" checked><span class="ket-rekap-absensi">T</span> -->
                                </td>
                            <?php
                            }else
                            if ($res_rekap['ket'] == 'A'){
                                ?>
                                <td style="text-align:center;">
                                Alpha
                                    <!-- <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">A</span>
                                    <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi" >I</span>
                                    <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">S</span>
                                    <input class="radio" type="radio" name="keterangan" checked><span class="ket-rekap-absensi">T</span> -->
                                </td>
                            <?php
                            }else
                            if($res_rekap['ket'] =='H'){
                            ?>
                               <td style="text-align:center;">
                               Hadir
                                    <!-- <input class="radio" type="radio" name="keterangan" checked><span class="ket-rekap-absensi">A</span>
                                    <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">I</span>
                                    <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">S</span>
                                    <input class="radio" type="radio" name="keterangan" ><span class="ket-rekap-absensi">T</span> -->
                                </td>
                            <?php
                            }
                            ?>


                            <td class="text-center">
                                <a href="./././media.php?module=absensi_ubah_ket&id_abs=<?php echo $res_rekap['ida'] ?>">
                                   <button type="button" class="btn btn-info">Ubah</button> 
                               </a>                           
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

<script type="text/javascript">
    $('.tgl_picker').change(function(){
        $('#form_tgl_rekap').submit();
    })
</script>