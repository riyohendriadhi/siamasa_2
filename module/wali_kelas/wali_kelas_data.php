<?php 
    include 'config/conn.php';
 ?>
<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px">
   <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Data Wali Kelas </li>
        </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
            <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <a href="?module=wali_kelas_input&act=input">
                    <button class="btn btn-info"><span class="glyphicon glyphicon-plus"></span>Tambah Data</button>
                </a>
                <a href="module/wali_kelas/wali_kelas_cetak.php" target="_blank">
                    <button class="btn btn-info float_right"><span class="glyphicon glyphicon-print"></span> Cetak</button>
                </a>
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="table_data">
                        <thead>
                            <tr>
                                <th class="text-center">No.</th>
                                <th class="text-center">NIP</th>
                                <th class="text-center" width="35%">Nama</th>
                                <th class="text-center">J.Kelamin</th>
                                <th class="text-center">Kelas</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                                                            
                        <?php
                        $no     = 1;
                        $sql = mysqli_query($conn, "SELECT wali_kelas.*, kelas.nama_kelas FROM wali_kelas
                                            LEFT JOIN kelas ON wali_kelas.idk = kelas.idk ");
                        $no = 1;
                        while($rs = mysqli_fetch_array($sql))
                        {
                        $sqlw = mysqli_query($conn, "select * from kelas where idk='$rs[idk]'");
                        $rsw  = mysqli_fetch_array($sqlw);
                        // print_r($rsw);
                        $sqlb = mysqli_query($conn, "select * from sekolah where id='$rsw[idk]'");
                        $rsb  = mysqli_fetch_array($sqlb);

                        if($_SESSION['level'] == "admin_wali_kelas"){

                            if($rsb['id'] == $_SESSION['id']){
                            }
                            }else{
                            ?>  
                            <tr class="odd gradeX">
                                <td class="text-center"><?php echo $no;  ?></td>
                                <td><?php echo"$rs[nip]";  ?></td>
                                <td><?php echo"$rs[nama]";  ?></td>
                                <td class="text-center"><?php echo ($rs['jk']=="L")?"Laki-laki":"Perempuan"; ?></td>
                                <td class="text-center"><?php echo $rs['nama_kelas']; ?></td>

                                <td class="text-center">
		          				    <a href="./././media.php?module=wali_kelas_detail&idw=<?php echo $rs['idw'] ?>">
        							 <button type="button" class="btn btn-warning btn-aksi"><span class="glyphicon glyphicon-search"></span></button> 
                                    </a>
        							<a href="./././media.php?module=wali_kelas_input&act=edit&idw=<?php echo $rs['idw'] ?>">
            							<button type="button" class="btn btn-info btn-aksi"><span class="glyphicon glyphicon-pencil"></span></button> 
                                    </a>
                                        <button onclick="hapus_data(<?php echo $rs['idw'] ?>)" type="button" class="btn btn-danger btn-aksi"><span class="glyphicon glyphicon-trash"></button>
                                </td>

                            </tr>
                            <?php
                            }
                            $no++;
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
     function hapus_data(idWaliKelas){
        var yakin = confirm('Yakin hapus data ?');
        if(yakin){
            window.location = '././module/simpan.php?act=wali_kelas_hapus&idw='+idWaliKelas;
        }
    }
</script>