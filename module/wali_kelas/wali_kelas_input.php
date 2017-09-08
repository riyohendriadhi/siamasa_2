<?php
include 'config/conn.php';
if($_GET['act']=="input"){
	?>
<div class="row">
    <div class="col-lg-12">
		<h3 class="page-header"><strong>Input Data Wali Kelas</strong></h3>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Input Data wali_kelas
            </div>
            <div class="panel-body">
                <div class="row">
                    <form method="post" role="form" action="././module/simpan.php?act=input_wali_kelas">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>NIP</label>
                                <input class="form-control" placeholder="Nip" name="nip">
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
                        </div>
                        <div class="col-lg-6">                                                        
                            <div class="form-group">
                                <label>E-mail</label>
                                <input class="form-control" placeholder="Password" name="email" type="text">
                            </div> 
                            <div class="form-group">
                                <label>Password</label>
                                <input class="form-control" placeholder="Password" name="password" type="password">
                            </div>                            
                            <div class="form-group">
                                <label>Kelas</label>
                                <select class="form-control" name="kelas">
                                <?php 
                                $sql  = mysqli_query($conn, "select * from kelas");
                                while($rs = mysqli_fetch_array($sql)){
                                    // print_r($rs);exit();
                                    $sqla = mysqli_query($conn, "select * from sekolah where id='$rs[idk]'");
                                    $rsa  = mysqli_fetch_array($sqla);
                                    if($_SESSION['level'] == "admin_wali_kelas"){
                                        if($rsa['id'] == $_SESSION['id']){
                                        ?>
                                           <option value=<?php echo $rs['idk']?> selected><?php echo $rs['nama_kelas'] ?></option>";
                                        <?php	
                                        }
                                    }else{
                                    ?>
                                        <option value=<?php echo $rs['idk']?> ><?php echo $rs['nama_kelas'] ?></option>";
                                    <?php
                                    }
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
            <li class="link_breadcrumb" href="#">Data Wali Kelas > Ubah Data Wali Kelas </li>
        </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
            <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                
            </div>
            <div class="panel-body">
                <div class="row">
                <?php                            
                $query = mysqli_query($conn, "SELECT wali_kelas.idw,wali_kelas.nip, wali_kelas.jk , wali_kelas.nama, wali_kelas.alamat,wali_kelas.pass, wali_kelas.email, kelas.idk, kelas.nama_kelas from wali_kelas
                                            JOIN kelas on kelas.idk = wali_kelas.idk
                                            WHERE wali_kelas.idw ='$_GET[idw]'");
                $result  = mysqli_fetch_array($query);
                ?>
                    <form method="post" role="form" action="././module/simpan.php?act=wali_kelas_edit">
                        <input type="hidden" name="idw" value="<?php echo $result['idw'] ?>" />
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label>NIP</label>
                                    <input class="form-control" placeholder="Nip" name="nip" value="<?php echo "$result[nip]"; ?>" >
                                </div>
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input class="form-control" placeholder="Nama" name="nama" value="<?php echo "$result[nama]"; ?>">
                                </div>
                                <div class="form-group"> 
                                   <label>Jenis Kelamin</label>
                                    <?php if($result['jk']=="L"){ ?>
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
                                <?php }
                                if($result['jk'] == "P"){ ?>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="jk" value="L">
                                            Laki - Laki
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
                                <textarea class="form-control" placeholder="Alamat" name="alamat" rows="3"><?php echo "$result[alamat]"; ?></textarea>
                            </div>

                        </div>

                                <div class="col-lg-6">                                   
                                    <div class="form-group">
                                        <label>E-Mail</label>
                                        <input class="form-control" placeholder="E-mail" name="email" type="text" value=<?php echo $result['email']?>>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input class="form-control" placeholder="Password" name="password" type="password" value=<?php echo $result['email']?> required>
                                    </div>
                                    <div class="form-group">
                                        <label>Kelas</label>
                                        <select class="form-control" name="kelas">
                                            <option value=<?php echo $result['idk'] ?> selected><?php echo $result['nama_kelas']?></option>";  
                                        <?php 
                                        $query_kelas = mysqli_query($conn, "SELECT * FROM kelas WHERE idk <> '$result[idk]'");
                                        while( $result_kelas = mysqli_fetch_array($query_kelas)){
                                        ?>
                                            <option value=<?php echo $result_kelas['idk'] ?> ><?php echo $result_kelas['nama_kelas']?></option>";  
                                        <?php
                                            // print_r($result_kelas);exit();
                                            // $sqla = mysqli_query($conn, "select * from sekolah where id='$result_kelas[idk]'");
                                            // $rsa  = mysqli_fetch_array($sqla);
                                            // if($_SESSION['level']=="admin_wali_kelas"){
                                            //     if($rsa['id']==$_SESSION['id']){
                                            //         if($rs['idk']==$result_kelas['idk']){
                                            //         ?>
                                            <!-- //             <option value=<?php echo $result_kelas['idk'] ?> selected><?php $result_kelas['nama_kelas']?></option>";   -->
                                                    <?php
                                            //         }else{
                                            //         ?>
                                            <!-- //             <option value=<?php echo $result_kelas['idk']?> ><?php echo $result_kelas['nama'] ?></option> -->
                                            //         <?php   
                                            //         }
                                            //     }
                                            // }else{
                                            //     if($rs['idk'] == $result_kelas['idk']){
                                            //     ?>
                                            <!-- //         <option value=<?php echo $result_kelas['idk']?> selected> <?php $result_kelas['nama_kelas']?> </option>";  -->
                                            //     <?php
                                            //     }else{
                                            //     ?>
                                            <!-- //         <option value=<?php echo $result_kelas['idk']?> ><?php $rsc['nama_kelas']?> </option>";   -->
                                            //     <?php
                                            //     }                                               
                                            // }

                                        }?>
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
             