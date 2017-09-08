<?php
include('config/conn.php');
    if(isset($_POST['kls'])){
        $kelas = $_POST['kls'];
    }else
    if(isset($_GET['kls'])){
        $kelas = $_GET['kls'];
    }else{
        $kelas = 'semua';
    }

    $no         = 1;
    $res        = mysqli_query($conn, "SELECT * from user");
    $data_res   = $res->fetch_array();
    $nama_kelas = $data_res[0];
    
?>
<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px">
    <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Data User </li>
        </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
            <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading" style="font-weight:bold">
                <a href="?module=user_input&act=input">
                    <button class="btn btn-info"><span class="glyphicon glyphicon-plus"></span>Tambah Data</button>
                </a>
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="table_data">
                        <thead>
                            <tr>
                                <th class="text-center">No</th>
                                <th class="text-center" width="20%">Nama</th>
                                <th class="text-center">Password</th>
                                <th class="text-center">Level</th>
                                <th class="text-center">E-mail</th>
                                <th class="text-center">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                                                                        
<?php
// print_r($kelas);exit();
    $no     = 1;
    $sql    = mysqli_query($conn, "SELECT u.*, ug.nama_usergroup
            FROM user u
            JOIN usergroup ug on u.id_usergroup = ug.id_usergroup");
    if($sql){
        while($rs = mysqli_fetch_array($sql) ) {
            ?>
                    <tr class="odd gradeX">
                        <td style="text-align: center;"><?php echo $no;  ?></td>
                        <!-- <td><?php echo $rs['login_name'];  ?></td> -->
                        <td><?php echo $rs['nama'];  ?></td>
                        <td><?php echo $rs['pass'];  ?></td>
                        <td><?php echo $rs['nama_usergroup'];  ?></td>
                        <td><?php echo $rs['email'];  ?></td>

                        <td class="text-center">
                    		<a href="./././media.php?module=user_input&act=edit&id=<?php echo $rs['id_user'] ?>">
                    	   	   <button type="button" class="btn btn-info btn-aksi"><span class="glyphicon glyphicon-pencil"></button>
                            </a>
                            <!-- <a href="././module/simpan.php?act=user_hapus&id=<?php echo $rs['id_user'] ?>">
                            </a> -->
                               <button onclick="hapus_data(<?php echo $rs['id_user'] ?>)" type="button" class="btn btn-danger btn-aksi"><span class="glyphicon glyphicon-trash"></button></a>
                        </td>

                    </tr>
            <?php
            $no++;
            }
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
     function hapus_data(idUser){
        var yakin = confirm('Yakin hapus data ?');
        if(yakin){
            window.location = '././module/simpan.php?act=user_hapus&id='+idUser;
        }
    }
</script>