<link rel="stylesheet" href="css/beranda.css">
<div class="row">
    <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Data Semester</li>
        </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
            <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <a href="?module=semester_tambah">
                    <button class="btn btn-info"><span class="glyphicon glyphicon-plus"></span>Tambah Data</button>                
                </a>
                <a href="module/semester/semester_cetak.php" target="_blank">
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
								<th class="text-center">Semester</th>
                                <th class="text-center">Tahun Ajaran</th>
                                <th class="text-center">Tanggal Awal</th>
                                <th class="text-center">Tanggal Akhir</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                                                            
                        <?php
                        include 'config/conn.php';
                        $no     = 1;
                        $query_smstr = mysqli_query($conn, "select id_semester,semester, tahun, DATE_FORMAT(tgl_awal,'%d-%m-%Y') tgl_awal, DATE_FORMAT(tgl_akhir,'%d-%m-%Y') tgl_akhir from semester");
                        while($res_smstr = mysqli_fetch_array($query_smstr))
                        {
                        ?>
                            <tr class="odd gradeX">
                                <td class="text-center"><?php echo $no;  ?></td>
                                <td><?php echo $res_smstr['semester'];  ?></td>
                                <td><?php echo $res_smstr['tahun'];  ?></td>
                                <td><?php echo $res_smstr['tgl_awal'];  ?></td>
                                <td><?php echo $res_smstr['tgl_akhir'];  ?></td>
                                <td class="text-center">
		          				    <!-- <a href="./././media.php?module=wali_kelas_detail&idw=<?php echo $res_smstr['idw'] ?>">
        							 <button type="button" class="btn btn-warning btn-aksi">Detail</button> 
                                    </a> -->
        							<a href="./././media.php?module=semester_edit&id_semester=<?php echo $res_smstr['id_semester'] ?>">
            							<button type="button" class="btn btn-info btn-aksi"><span class="glyphicon glyphicon-pencil"></button> 
                                    </a>
<!--                                     <a href="././module/simpan.php?act=semester_hapus&id_semester=<?php echo $res_smstr['id_semester'] ?>">
                                    </a> -->
                                        <button onclick="hapus_data(<?php echo $res_smstr['id_semester']; ?>)" type="button" class="btn btn-danger btn-aksi"><span class="glyphicon glyphicon-trash"></button>
                                </td>

                            </tr>
                            <?php
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
     function hapus_data(idSemeter){
        var yakin = confirm('Yakin hapus data ?');
        if(yakin){
            window.location = '././module/simpan.php?act=semester_hapus&id_semester='+idSemeter;
        }
    }
</script>