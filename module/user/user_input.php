<?php
if($_GET['act']=="input"){
	?>
  <link rel="stylesheet" href="css/beranda.css">
    <div class="row" style="margin:10px">
       <div id="">
            <ol class="breadcrumb">
                <li class="link_breadcrumb" href="#">Data User > Input Data User </li>
            </ol>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data User
                </div>
                <div class="panel-body">
                    <div class="row">
                        <form method="post" role="form" action="././module/simpan.php?act=user_tambah">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input class="form-control" placeholder="Nama" name="nama">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="form-control" type="password" placeholder="Password" name="password">
                                </div>
                                <div class="form-group">
                                    <label>Level</label>
                                    <select class="form-control" name="level">
                                        <option value="">Pilih Level</option>";	
                                    <?php 
                                    $query_user = mysqli_query($conn, "SELECT * FROM usergroup");
                                    while($res_user=mysqli_fetch_array($query_user)){
                                    ?>
                                        <option value="<?php echo $res_user['id_usergroup']; ?>"> <?php echo $res_user['nama_usergroup'] ?></option>";		
                                    <?php
                                    }
                                    ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>E-mail</label>
                                    <input class="form-control" placeholder="E-mail" name="email">
                                </div>
                                <button type="submit" class="btn btn-default">Simpan</button>
                            </div>

                        <div class="col-lg-6">
                                
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
                        <li class="link_breadcrumb" href="#">Data user > Ubah Data user </li>
                    </ol>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Edit Data user
                        </div>
                        <div class="panel-body">
                            <div class="row">
<?php                            
                            	$sql=mysqli_query($conn,"SELECT u.*, ug.nama_usergroup
                                                        FROM user u
                                                        JOIN usergroup ug on u.id_usergroup = ug.id_usergroup
                                                        WHERE u.id_user='$_GET[id]'");
                                // echo "$_GET[id]";
								$rs=mysqli_fetch_array($sql);
?>
                                <form method="post" role="form" action="././module/simpan.php?act=user_edit">
                                <input type="hidden" name="id" value="<?php echo $_GET['id'] ?>" />
                                <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>Nama user</label>
                                            <input class="form-control" placeholder="Nama" name="nama" value="<?php echo "$rs[nama]"; ?>">
                                        </div>

                                        <div class="form-group">
                                            <label>Password</label>
                                            <input class="form-control" placeholder="" name="password" >* Jika password tidak dirubah, tidak perlu diisi.
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Level</label>
                                            <select class="form-control" name="level">
                                                <option value=<?php echo "$rs[id_usergroup]" ?> selected><?php echo "$rs[nama_usergroup]" ?></option>; 
                                                <?php 
                                                $query_level_exec = mysqli_query($conn,"SELECT * FROM usergroup");
                                                while ($rs_level = mysqli_fetch_array($query_level_exec)) {
                                                ?>
                                                	<option value=<?php echo $rs_level['id_usergroup']?>><?php  echo $rs_level['nama_usergroup']?></option>;	
                                                 <?php
                                                 } 

                                                 ?>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <label>E-Mail</label>
                                            <input class="form-control" placeholder="Nama" name="email" value="<?php echo "$rs[email]"; ?>">
                                        </div>
                                <button type="submit" class="btn btn-default">Simpan Data</button>
                                </div>


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