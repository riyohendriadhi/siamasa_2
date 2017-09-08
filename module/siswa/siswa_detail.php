<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px">
    <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#" >Data Siswa </li>
        </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
            <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading" style="font-weight:bold">
                Data Siswa
                <a href="./././media.php?module=siswa_input&act=edit&ids=<?php echo $_GET['ids'] ?>">
                    <button class=" btn-info btn-ubah-table">Ubah</button>
                </a>
            </div>
            <div class="panel-body">
                <div class="row">
<?php 
    include 'config/conn.php';                           
    // print_r($_SESSION);
	$sql   = mysqli_query($conn," SELECT siswa.*, kelas.idk, kelas.nama_kelas FROM siswa 
                                    JOIN kelas ON siswa.idk = kelas.idk
                                    WHERE ids='$_GET[ids]'");
	$rs    = mysqli_fetch_array($sql);
?>
                    <form method="post" role="form" action="././module/simpan.php?act=siswa_det">
                        <input type="hidden" name="id" value="<?php echo $rs['ids'] ?>" />

                                <div class="col-lg-6">
                                        <fieldset disabled>

                                        <div class="form-group">
                                            <label>NIS</label>
                                            <input class="form-control"  placeholder="Nis" name="nis" value="<?php echo "$rs[nis]"; ?>" >
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
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="jk" value="P">
                                                    Perempuan
                                                </label>
                                            </div>
                                        </div>
<?php } ?>
        <?php if($rs['jk']=="P"){ ?>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="jk" value="L" 
                                                    >Laki - Laki
                                                </label>
                                            </div>
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
                                            <textarea class="form-control" placeholder="Alamat" name="alamat" rows="3"><?php echo "$rs[alamat]"; ?></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Kelas</label>
                                            <select class="form-control" name="kelas">
  <?php 
 // 	$sqlc=mysql_query("select * from kelas");
	// while($rsc=mysql_fetch_array($sqlc)){
	// $sqla=mysql_query("select * from sekolah where id='$rsc[id]'");
	// $rsa=mysql_fetch_array($sqla);
if($_SESSION['level']=="admin_guru"){
if($rsa['id']==$_SESSION['id']){

if($rs['idk']==$rsc['idk']){
	echo "<option value='$rs[idk]' selected>$rs[nama_kelas]</option>";	
}else{
	echo "<option value='$rs[idk]'>$rs[nama_kelas]</option>";	

}
}
}else{
if($rs['idk']==$rsc['idk']){
	echo "<option value='$rs[idk]' selected>$rs[nama_kelas]</option>";	
}else{
	echo "<option value='$rs[idk]'>$rs[nama_kelas]</option>";	

}
	
// }
}?>
                                          </select>
                                        </div>
                                            <label>No.HP Orang Tua</label></br>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">+62</span>
                                            <input type="text" class="form-control" placeholder="No Telepon" name="tlp" value="<?php echo "$rs[tlp]"; ?>">
                                        </div>
</fieldset>
</div>

                                <div class="col-lg-6">
                              <fieldset disabled>

                                        <div class="form-group">
                                            <label>Nama Ayah</label>
                                            <input class="form-control" placeholder="Nama" name="bapak" value="<?php echo "$rs[bapak]"; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Pekerjaan Ayah</label>
                                            <input class="form-control" placeholder="Pekerjaan" name="k_bapak" value="<?php echo "$rs[k_bapak]"; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Nama Ibu</label>
                                            <input class="form-control" placeholder="Nama" name="ibu" value="<?php echo "$rs[ibu]"; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Pekerjaan Ibu</label>
                                            <input class="form-control" placeholder="Pekerjaan" name="k_ibu" value="<?php echo "$rs[k_ibu]"; ?>">
                                        </div>
                            </fieldset>                                        
                                        <div class="form-group">
                                            <label>Ganti Password</label>
                                            <input class="form-control" placeholder="Password baru" name="pass" disabled>
                                        </div>


                                        <!-- <button type="submit" class="btn btn-default">Simpan Data</button> -->
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
