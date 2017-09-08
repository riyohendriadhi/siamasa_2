<?php
include 'config/conn.php';
if($_GET['act']=="input"){
	?>
          <link rel="stylesheet" href="css/beranda.css">
            <div class="row" style="margin:10px">
               <div id="">
                    <ol class="breadcrumb">
                        <li class="link_breadcrumb" href="#">Data Kelas > Input Data Kelas </li>
                    </ol>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Input Data Kelas
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                    <form method="post" role="form" action="././module/simpan.php?act=kelas_tambah">

                                <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Nama Kelas</label> 
                                            <input class="form-control" placeholder="Kelas" name="nama_kelas" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Wali Kelas</label>
                                            <select class="form-control" required name="nama_walikelas">
                                                <option value="">Pilih Wali Kelas</option>
                                            <?php 
                                            $query_walikelas = mysqli_query($conn,"SELECT * FROm wali_kelas WHERE idk='0' OR idk='' OR idk=null");
                                            while($res_walikelas = mysqli_fetch_array($query_walikelas)){

                                             ?>
                                                <option value="<?php echo $res_walikelas['idw'] ?>"><?php echo $res_walikelas['nama'] ?></option>
                                            <?php 
                                            }
                                            ?>
                                            </select>
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
                $sql = mysqli_query($conn, "SELECT kelas.*, wali_kelas.idw, wali_kelas.nama FROM kelas LEFT JOIN wali_kelas on wali_kelas.idw = kelas.idw where kelas.idk='$_GET[idk]'");
                $rs  = mysqli_fetch_array($sql);
                ?>
                    <form method="post" role="form" action="././module/simpan.php?act=kelas_edit">
                        <input type="hidden" name="idk" value="<?php echo $_GET['idk'] ?>" />

                        <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Nama Kelas</label>
                                    <input class="form-control" placeholder="Kelas" name="nama_kelas" value="<?php echo $rs['nama_kelas'] ?>">
                                </div>
                                <!-- <div class="form-group">
                                    <label>Nama Kelas</label>
                                    <!-- <select class="form-control" name="id"> -->
                                        	<!-- <option value=<?php echo $rs['idk']?>><?php echo $rs['nama_kelas']?></option>";		 -->
                                    <?php 
                                   

                                    //$query_kelas_other = mysqli_query($conn, "SELECT * FROM kelas WHERE idk <> '$rs[idk]' ");
                                    //while($res_kelas_other = mysqli_fetch_array($query_kelas_other)){
                                    
                                        // if($_SESSION['level']=="admin_guru"){
                                        //     if($rsa['id']==$_SESSION['id']){
                                        //         if($rs['id']==$rsa['id']){
                                        //          echo "<option value='$rsa[id]' selected='selected'>$rsa[nama]</option>";    
                                        //         }else{
                                        //          echo "<option value='$rsa[id]'>$rsa[nama]</option>";        
                                        //         }
                                        //     }
                                        // }else{
                                        //     if($rs['id']==$rsa['id']){
                                        //      echo "<option value='$rsa[id]' selected='selected'>$rsa[nama]</option>";    
                                        //     }else{
                                        //      echo "<option value='$rsa[id]'>$rsa[nama]</option>";        
                                        //     }
                                        // }
                                    ?>
                                                <!-- <option value=<?php echo $res_kelas_other['idk']?>><?php echo $res_kelas_other['nama_kelas']?></option>";        -->
                                    <?php
                                    // }
                                    ?>
                                    <!-- </select> -->
                                <!-- </div> -->
                                <div class="form-group">
                                    <label>Wali Kelas</label>
                                    <select class="form-control" name="wali_kelas">
                                        <option value=<?php echo $rs['idw']?>><?php echo $rs['nama']?></option>";        
                                        <?php 
                                        $query_walikelas_other     = mysqli_query($conn, "SELECT * FROM wali_kelas WHERE idw <> '$rs[idw]' ");
                                        while($res_walikelas_other = mysqli_fetch_array($query_walikelas_other)){
                                    ?>
                                        <option value=<?php echo $res_walikelas_other['idw']?>><?php echo $res_walikelas_other['nama']?></option>";       
                                    <?php
                                    }
                                    ?>
                                    </select>
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
             