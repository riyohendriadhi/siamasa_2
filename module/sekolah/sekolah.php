<?php
include 'config/conn.php';
?>
            <link rel="stylesheet" href="css/beranda.css">

            <div class="row">
                <div id="">
                    <ol class="breadcrumb">
                        <li class="link_breadcrumb" href="#">Data Sekolah</li>
                    </ol>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Data Sekolah
                            <a href="?module=sekolah_edit">
                                <button class="btn btn-info pull-right" style="padding-top: 2px;padding-bottom: 0px">Ubah</button>                  
                            </a>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="row">
                            <?php                            
                            $sql = mysqli_query($conn, "select * from sekolah");
                            $rs  = mysqli_fetch_array($sql);
                            ?>
                                <form method="post" role="form" action="././module/simpan.php?act=edit_sekolah">
                                <div class="col-lg-6">
                                    <input type="hidden" name="id" value="<?php echo $rs['id'] ?>" />
                                        <div class="form-group">
                                            <label>Kode Sekolah</label>
                                            <input class="form-control" placeholder="Kode" name="kode" value="<?php echo "$rs[kode]"; ?>" disabled>
                                        </div>
                                        <div class="form-group">
                                            <label>Nama Sekolah</label>
                                            <input class="form-control" placeholder="Nama Sekolah" name="nama" value="<?php echo "$rs[nama]"; ?>" disabled>
                                        </div>                            
                                        <div class="form-group">
                                            <label>Alamat</label>
                                            <textarea class="form-control" placeholder="Alamat" name="alamat" rows="3" disabled><?php echo "$rs[alamat]"; ?></textarea>
                                        </div>
                                        <!-- <button type="submit" class="btn btn-default">Simpan</button> -->
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                    </form>

                            </div>
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
