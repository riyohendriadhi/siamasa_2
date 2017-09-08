<?php
if($_GET['act']=="input"){
	?>
  <link rel="stylesheet" href="css/beranda.css">
    <div class="row" style="margin:10px">
       <div id="">
            <ol class="breadcrumb">
                <li class="link_breadcrumb" href="#">Data Siswa > Input Data Siswa </li>
            </ol>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data Siswa
                </div>
                <div class="panel-body">
                    <div class="row">
                        <form method="post" role="form" action="././module/simpan.php?act=siswa_tambah">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>NIS</label>
                                    <input class="form-control" placeholder="Nis" name="nis">
                                </div>
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input class="form-control" placeholder="Nama" name="nama">
                                </div>
                                <div class="form-group">
                                    <label>Jenis Kelamin</label>
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

                                <div class="form-group">
                                    <label>Alamat</label>
                                    <textarea class="form-control" placeholder="Alamat" name="alamat" rows="3"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Kelas</label>
                                    <select class="form-control" name="kelas">
                                        <option value="">Pilih Kelas</option>";	
                                    <?php 
                                    $query_kelas = mysqli_query($conn, "select * from kelas");
                                    while($res_kelas=mysqli_fetch_array($query_kelas)){
                                    ?>
                                        <option value="<?php echo $res_kelas['idk']; ?>"> <?php echo $res_kelas['nama_kelas'] ?></option>";		
                                    <?php
                                    }
                                    ?>
                                    </select>
                                </div>
                                <div class="form-group input-group">
                                    <span class="input-group-addon">+62</span>
                                    <input type="text" class="form-control" placeholder="No Telepon" name="tlp">
                                </div>
</div>

                        <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Nama Ayah</label>
                                    <input class="form-control" placeholder="Nama" name="bapak">
                                </div>
                                <div class="form-group">
                                    <label>Pekerjaan</label>
                                    <input class="form-control" placeholder="Pekerjaan" name="k_bapak">
                                </div>
                                <div class="form-group">
                                    <label>Nama Ibu</label>
                                    <input class="form-control" placeholder="Nama" name="ibu">
                                </div>
                                <div class="form-group">
                                    <label>Pekerjaan</label>
                                    <input class="form-control" placeholder="Pekerjaan" name="k_ibu">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="form-control" placeholder="Password" name="password" type="password">
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

<?php
if($_GET['act']=="edit"){
	?>
          <link rel="stylesheet" href="css/beranda.css">
            <div class="row" style="margin:10px">
               <div id="">
                    <ol class="breadcrumb">
                        <li class="link_breadcrumb" href="#">Data Siswa > Ubah Data Siswa </li>
                    </ol>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Edit Data Siswa
                        </div>
                        <div class="panel-body">
                            <div class="row">
<?php                            
                            	$sql=mysqli_query($conn,"SELECT siswa.*, kelas.nama_kelas FROM siswa
                                                        JOIN kelas ON siswa.idk = kelas.idk
                                                        WHERE ids='$_GET[ids]'");
								$rs=mysqli_fetch_array($sql);
?>
                                    <form method="post" role="form" action="././module/simpan.php?act=siswa_edit">
<input type="hidden" name="id" value="<?php echo $_GET['ids'] ?>" />
                                <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>NIS</label>
                                            <input class="form-control" placeholder="Nis" name="nis" value="<?php echo "$rs[nis]"; ?>" >
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
 // 	$sqlc=mysqli_query($conn, "select * from kelas");
	// while($rsc=mysqli_fetch_array($sqlc)){
	// $sqla=mysqli_query($conn, "select * from sekolah where id='$rsc[id]'");
	// $rsa=mysqli_fetch_array($sqla);
if($_SESSION['level']=="admin_guru"){
if($rsa['id']==$_SESSION['id']){

if($rs['idk']==$rsc['idk']){
	echo "<option value='$rs[idk]' selected>$rs[nama_kelas]</option>";	
}else{
	echo "<option value='$rs[idk]'>$rs[nama_kelas]</option>";	

}
}
}else{
if($rs['idk']==$rs['idk']){
	echo "<option value='$rs[idk]' selected>$rs[nama_kelas]</option>";	
}else{
	echo "<option value='$rs[idk]'>$rs[nama_kelas]</option>";	

}
	
// }
}?>
                                          </select>
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">+62</span>
                                            <input type="text" class="form-control" placeholder="No Telepon" name="tlp" value="<?php echo "$rs[tlp]"; ?>">
                                        </div>
</div>

                                <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Nama Ayah</label>
                                            <input class="form-control" placeholder="Nama" name="bapak" value="<?php echo "$rs[bapak]"; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Pekerjaan</label>
                                            <input class="form-control" placeholder="Pekerjaan" name="k_bapak" value="<?php echo "$rs[k_bapak]"; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Nama Ibu</label>
                                            <input class="form-control" placeholder="Nama" name="ibu" value="<?php echo "$rs[ibu]"; ?>">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Pekerjaan</label>
                                            <input class="form-control" placeholder="Pekerjaan" name="k_ibu" value="<?php echo "$rs[k_ibu]"; ?>">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input class="form-control" placeholder="Password" name="k_password" value="" type="password">
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