<?php
include('config/conn.php');
    if(isset($_POST['kls'])){
        $kelas = $_POST['kls'];
    }else
    if(isset($_GET['kls'])){
        $kelas = $_GET['kls'];
    }else{
        $kelas = 'semua';
    }

    $no         = 1;
    $res        = mysqli_query($conn, "SELECT nama_kelas from kelas WHERE idk = '$kelas'");
    $data_res   = $res->fetch_array();
    $nama_kelas = $data_res[0];
    $title_panel      = $kelas == 'semua'? 'Data Siswa semua kelas': 'Data Siswa '.$nama_kelas;
?>
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
                <?php echo $title_panel;
                    if ($_SESSION['level'] == 'Admin Sistem') {
                ?>
                </br>
                </br>
                <a href="?module=siswa_input&act=input">
                    <button class="btn btn-info"><span class="glyphicon glyphicon-plus"></span>Tambah Data</button>
                </a>
                <a href="module/siswa/siswa_cetak.php?kls=<?php echo $kelas; ?>" target="_blank">
                    <button class="btn btn-info float_right"><span class="glyphicon glyphicon-print"></span> Cetak</button>
                </a>
                <?php 
                }
                ?>
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="table_data">
                        <thead>
                            <tr>
                                <th class="text-center">No</th>
                                <th class="text-center">NIS</th>
                                <th class="text-center" width="20%">Nama</th>
                                <th class="text-center">Jk</th>
                                <th class="text-center">Kelas</th>
                                <th class="text-center">Alamat</th>
                                <!-- <th class="text-center">E-Mail</th> -->
                                <th class="text-center">No.Telepon</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                                                                        
<?php
// print_r($kelas);exit();
    $no     = 1;
    if($kelas == "semua")
    {
    	$sql = mysqli_query($conn,"SELECT siswa.*, kelas.nama_kelas FROM siswa JOIN kelas ON kelas.idk = siswa.idk");
    }
    else
    {
    	$sql = mysqli_query($conn,"SELECT siswa.*, kelas.nama_kelas FROM siswa JOIN kelas ON kelas.idk = siswa.idk WHERE kelas.idk='$kelas'");	
    }
    if($sql){
        while($rs = mysqli_fetch_array($sql) ) {
    		$sqlw = mysqli_query($conn,"select * from kelas where idk='$rs[idk]'");
    		$rsw  = mysqli_fetch_array($sqlw);
            // print_r($rsw);
    		$sqlb = mysqli_query($conn,"select * from sekolah where id='$rsw[idk]'");
    		$rsb  = mysqli_fetch_array($sqlb);

            if($_SESSION['level']=="admin_guru"){

                if($rsb['id']==$_SESSION['id']){
            ?>
                    <tr class="odd gradeX">
                        <td><?php echo $no;  ?></td>
                        <td><?php echo $rs['nis'];  ?></td>
                        <td><?php echo $rs['nama'];  ?></td>
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
                        <td><?php echo $rs['nama_kelas'];  ?></td>
                        <td><?php echo $rs['alamat'];  ?></td>
                        <!-- <td><?php echo $rs['email'];  ?></td> -->
                        <td><?php echo $rs['tlp'];  ?></td>

                        <td class="text-center">
                    		<a href="./././media.php?module=input_siswa&act=edit&ids=<?php echo $rs['ids'] ?>">
                    	   	   <button type="button" class="btn btn-info btn-aksi">Ubah</button>
                            </a>
                            <a href="././module/simpan.php?act=hapus&ids=<?php echo $rs['ids'] ?>">
                               <button type="button" class="btn btn-danger btn-aksi"><span class="glyphicon glyphicon-trash"></button></a>
                            </a>
                        </td>

                    </tr>
            <?php
            }
            }else{
                // print_r($rs['idk']);exit();
            ?>	
                    <tr class="odd gradeX">
                        <td><?php echo $no;  ?></td>
                        <td><?php echo $rs['nis'];  ?></td>
                        <td><?php echo $rs['nama'];  ?></td>
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
                        <td><?php echo $rs['nama_kelas'];  ?></td>
                        <td><?php echo $rs['alamat'];  ?></td>
                        <!-- <td><?php //echo $rs['email'];  ?></td> -->
                        <td><?php echo $rs['tlp'];  ?></td>
                        <td class="text-center">
        				    <a href="./././media.php?module=siswa_detail&act=details&ids=<?php echo $rs['ids'] ?>">
        						<button type="button" class="btn btn-warning btn-aksi">Details</button>
                            </a>
        					<a href="./././media.php?module=siswa_input&act=edit&ids=<?php echo $rs['ids'] ?>">
        						<button type="button" class="btn btn-info btn-aksi">Ubah</button>
                            </a>
                               <button onclick="hapus_data(<?php echo $rs['ids'] ?>, <?php echo $rs['idk']; ?>)" id="btnHapusSiswa" type="button" class="btn btn-danger btn-aksi">Hapus</button>
    						
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

<script type="text/javascript">
     function hapus_data(idSiswa,kls){
        var yakin = confirm('Yakin hapus data ?');
        if(yakin){
            window.location = '././module/simpan.php?act=siswa_hapus&ids='+idSiswa+'&kls='+kls;
        }
    }
</script>