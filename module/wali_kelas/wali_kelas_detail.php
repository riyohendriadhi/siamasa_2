<?php                      
include 'config/conn.php';      
$sql = mysqli_query($conn, "SELECT * FROM wali_kelas WHERE idw='$_GET[idw]'");
// var_dump($sql);exit;
$rs  = mysqli_fetch_array($sql);
?>

<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px">
   <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Data Wali Kelas > Detail Data Wali Kelas </li>
        </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
            <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Data Wali Kelas
                <a href="?module=wali_kelas_input&act=edit&idw=<?php echo $_GET['idw'];?>">
                    <button class="btn btn-info btn-ubah-table" style="padding-bottom:3px">Ubah Data</button>
                </a>
            </div>
        <div class="panel-body">
        <div class="row">

        <div class="col-lg-6">
            <fieldset disabled>
                <div class="form-group">
                    <label>NIP</label><br>
                    <label><?php echo "$rs[nip]"; ?></label>

                </div>
                <div class="form-group">
                    <label>Nama</label>
                    <input class="form-control" placeholder="Nama" name="nama" value="<?php echo "$rs[nama]"; ?>">
                </div>
        <div class="form-group">

            <label>Jenis Kelamin</label>
            <?php if($rs['jk']=="L"){ ?>
            <div class="radio">
                <label>
                    <input type="radio" name="jk" value="L" 
                    checked>Laki - Laki
                </label>
            </div>
        </div>
        <?php } ?>
        <?php if($rs['jk']=="P"){ ?>
            <div class="radio">
                <label>
                    <input type="radio" name="jk" value="P" checked>
                    Perempuan
                </label>
            </div>
        </div>
    <?php } ?>
         <div class="form-group">
            <label>Alamat</label>
            <textarea class="form-control" placeholder="Alamat" name="alamat" rows="3" disabled><?php echo "$rs[alamat]"; ?></textarea>
        </div>
    </div>

                    <div class="col-lg-6">
                            <div class="form-group">
                                <label>E-Mail</label>
                                <input class="form-control" placeholder="E-mail" name="email" type="text" value="<?php echo $rs['email']?>" disabled>
                            </div>
                            <div class="form-group">
                                <label>Kelas</label>
                                <select class="form-control" name="kelas" disabled>
                                <?php 
                                $sqlc = mysqli_query($conn, "select * from kelas where idw = $_GET[idw]");
                                while( $rsc = mysqli_fetch_array($sqlc) ){
                                    // $sqla = mysqli_query($conn, "select * from sekolah where id='$rsc[id]'");
                                    // $rsa = mysqli_fetch_array($sqla);
                                    // if( $_SESSION['level'] == "admin_wali_kelas" ){
                                        // if($rsa['id']==$_SESSION['id']){

                                            // if($rs['idk']==$rsc['idk']){

                                                // echo "<option value='$rsc[idk]' selected>$rsa[nama] | $rsc[nama]</option>"; 
                                            // }else{
                                                // echo "<option value='$rsc[idk]'>$rsa[nama] | $rsc[nama]</option>";  
                                            // }
                                        // }
                                    // }else{
                                        // if($rs['idk']==$rsc['idk']){
                                            if($rsc['nama_kelas'] =='' || $rsc['nama_kelas'] == null){
                                        ?>
                                            <option> Belum ada Kelas</option>"; 
                                        <?php
                                        }else{
                                         ?>   
                                            <option value=<?php echo $rsc['idk'] ?> selected> <?php echo $rsc['nama_kelas']?></option>"; 
                                            <!-- <option value='' selected> Belum mewalikan kelas</option>;                                                        -->
                                        <!-- }else{ -->
                                            <!-- echo "<option value='$rsc[idk]'>$rsa[nama] | $rsc[nama]</option>";   -->
                                        <?php
                                        }
                                        // }
                                        
                                    // }
                                }
                                ?>
                              </select>
                            </div>
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
