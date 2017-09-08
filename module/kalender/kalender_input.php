<?php
include 'config/conn.php';
if($_GET['act']=="input"){
	?>
          <link rel="stylesheet" href="css/beranda.css">
            <div class="row" style="margin:10px">
               <div id="">
                    <ol class="breadcrumb">
                        <li><a class="link_breadcrumb" href="#">Master Kalender > Input Data</a></li>
                    </ol>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <!-- <div class="panel-heading">
                            Input Data Kelas
                        </div> -->
                        <div class="panel-body">
                            <div class="row">
                                    <form method="post" role="form" action="././module/simpan.php?act=kalender_tambah">
                                <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Tanggal</label> 
                                            <input class="form-control tgl_picker" placeholder="Tanggal" name="tanggal" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Kategori</label>
                                            <select class="form-control" name="kategori">
                                                <option value=1>1</option>";
                                                <option value=2>2</option>";
                                                <option value=3>3</option>";
                                                <option value=4>4</option>";
                                                <option value=5>5</option>";
                                                <option value=6>6</option>";
                                                <option value=7>7</option>";
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label>Keterangan</label> 
                                            <input class="form-control" placeholder="Keterangan" name="keterangan" required>
                                        </div>                                        
                                        <button type="submit" class="btn btn-default">Simpan data</button>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                    </form>

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
           <?php } 

if($_GET['act']=="edit"){
?>
<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px">
   <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Data Kelas > Ubah Data Kelas </li>
        </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <!-- Edit Data Kelas -->
            </div>
            <div class="panel-body">
                <div class="row">
                <?php                            
                $sql = mysqli_query($conn, "SELECT * FROM kalender WHERE id_kalender='$_GET[id]'");
                $rs  = mysqli_fetch_array($sql);
                ?>
                    <form method="post" role="form" action="././module/simpan.php?act=kalender_edit">
                        <input type="hidden" name="id" value="<?php echo $_GET['id'] ?>" />
                        <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Tanggal</label>
                                    <input class="form-control" disabled name="tanggal" value="<?php echo $rs['tanggal'] ?>">
                                </div>
                                <div class="form-group">
                                    <label>Kategori</label>
                                    <select class="form-control" name="kategori">
                                        <option value=<?php echo $rs['kategori'] ?> selected><?php echo $rs['kategori'] ?></option>";
                                        <option value=1>1</option>";
                                        <option value=2>2</option>";
                                        <option value=3>3</option>";
                                        <option value=4>4</option>";
                                        <option value=5>5</option>";
                                        <option value=6>6</option>";
                                        <option value=7>7</option>";
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Keterangan</label>
                                    <input class="form-control" name="keterangan" value="<?php echo $rs['keterangan'] ?>">
                                </div>
                                <button type="submit" class="btn btn-default">Simpan</button>
                        </div>
                    <!-- /.col-lg-6 (nested) -->
                    </form>
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
<?php } ?>
             