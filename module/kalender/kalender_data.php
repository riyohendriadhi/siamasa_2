<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px">
   <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Master Kalender</li>
        </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <a href="?module=kalender_input&act=input">
                    <button class="btn btn-info"><span class="glyphicon glyphicon-plus"></span>Tambah Data</button>
                </a>
                <a href="module/kalender/kalender_cetak.php" target="_blank">
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
                                <th class="text-center">Tanggal</th>
                                <th class="text-center">Kategori</th>
                                <th class="text-center">Keterangan</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                include("config/conn.php");
                                $no=1;
                                $query=mysqli_query($conn, "SELECT id_kalender, DATE_FORMAT(tanggal,'%d-%m-%Y') as tanggal , kategori, keterangan FROM kalender");
                                while($res = mysqli_fetch_array($query)){?>                                        
                                        <tr class="odd gradeX">
                                        <td class="text-center"><?php echo $no;  ?></td>
                                        <td><?php echo $res['tanggal'];  ?></td>
                                        <td><?php echo $res['kategori'];  ?></td>
                                        <td class="text-center"><?php echo $res['keterangan'];  ?></td>
                                        <td class="text-center">
                                            <a href="./././media.php?module=kalender_input&act=edit&id=<?php echo $res['id_kalender'] ?>">
                                                <button type="button" class="btn btn-info"><span class="glyphicon glyphicon-pencil"></button>
                                            </a> 
                                            <!-- <a href="././module/simpan.php?act=kalender_hapus&id=<?php echo $res['id_kalender'] ?>">
                                            </a> -->
                                                <button onclick="hapus_data(<?php echo $res['id_kalender'] ?>)" type="button" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></button>
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
     function hapus_data(idKalender){
        var yakin = confirm('Yakin hapus data ?');
        if(yakin){
            window.location = '././module/simpan.php?act=kalender_hapus&id='+idKalender;
        }
    }
</script>