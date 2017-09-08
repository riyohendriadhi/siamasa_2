<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px">
   <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Data Kelas </li>
        </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <a href="?module=kelas_input&act=input">
                    <button class="btn btn-info"><span class="glyphicon glyphicon-plus"></span>Tambah Data</button>
                </a>

                <a href="module/kelas/kelas_cetak.php" target="_blank">
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
                                <th class="text-center">Kode Kelas</th>
                                <th class="text-center">Kelas</th>
                                <th class="text-center">Wali Kelas</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                include("config/conn.php");
                                $no=1;
                                $query_kelas=mysqli_query($conn, "SELECT kelas.*, wali_kelas.nama FROM kelas LEFT JOIN wali_kelas on wali_kelas.idw = kelas.idw");
                                while($res_kelas = mysqli_fetch_array($query_kelas)){
                                    ?>  
                                        <tr class="odd gradeX">
                                        <td class="text-center"><?php echo $no;  ?></td>
                                        <td class="text-center"><?php echo $res_kelas['idk'];  ?></td>
                                        <td class="text-center"><?php echo $res_kelas['nama_kelas'];  ?></td>
                                        <td class="text-center"><?php echo $res_kelas['nama'];  ?></td>
                                        <td class="text-center">
                                            <a href="./././media.php?module=kelas_input&act=edit&idk=<?php echo $res_kelas['idk'] ?>">
                                                <button type="button" class="btn btn-info"><span class="glyphicon glyphicon-pencil"></button>
                                            </a> 
                                                <button onclick="hapus_data(<?php echo $res_kelas['idk'] ?>)" type="button" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></button>
                                        </td>
                                    </tr>
                                <?php
                                    // }
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
     function hapus_data(idKelas){
        var yakin = confirm('Yakin hapus data ?');
        if(yakin){
            window.location = '././module/simpan.php?act=hapus_kelas&idk='+idKelas;
        }
    }
</script>