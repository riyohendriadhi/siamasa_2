<?php
session_start();

if(!empty($_SESSION)){

include "config/conn.php";
include 'lib/libs.php';
?>

    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>SISTEM ABSENSI</title>
        <script src="js/jquery_2.2.3.js"></script>

        <!-- Core CSS - Include with every page -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

        <!-- Page-Level Plugin CSS - Tables -->
        <link href="css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

        <!-- SB Admin CSS - Include with every page -->
        <link href="css/sb-admin.css" rel="stylesheet">
        <link href="css/media.css" rel="stylesheet">

                <!-- Core Scripts - Include with every page -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>

        <!-- Page-Level Plugin Scripts - Tables -->
        <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
        <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>

        <!-- SB Admin Scripts - Include with every page -->
        <script src="js/sb-admin.js"></script>

        <!-- Plugin Datepicker -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap-datepicker.min.css">
        <script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>


        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function () {
                $('#table_data').dataTable({
                    sort: false
                });

                //Jam Digital
                function jam(){
                    var time = new Date();
                    var jam = time.toLocaleTimeString();
                    document.getElementById('jam').innerHTML = jam;
                }
                setInterval(jam,1000);

                // Date Picker
                var tglInput = $('.tgl_picker');
                var option = {
                    format : 'dd-mm-yyyy',
                    todayHighlight : true,
                    autoclose : true
                }
                tglInput.datepicker(option);

                // Add class to active menu
                function menuActiveAddclass(){

                    var loc = window.location.href;
                    var locSplit = loc.split('=');
                    var id1 = locSplit[1]||'beranda';
                    var id2 = id1.split('&');
                    var id3 = id2[0];
                    var idx_= id3.indexOf('_');
                    // console.log(id3);
                        id = id3

                    if (id == 'home'){
                        id = 'beranda';
                    }

                    if((id == 'filter_absensi_admin') || (id =='rekap_absen_admin')){
                        id = 'filter_absensi_admin';
                    }

                    if(id=='siswa_wali_kelas'){
                        id='siswa';
                    }
                    if(id == 'absensi_rekap_persiswa'){
                        id = 'filter_absensi_persiswa'
                    }
                    // console.log(id);

                    $('#'+id).addClass('menu_active');
                }
                menuActiveAddclass();

            });


        </script>

    </head>

    <body style="height:100%;width:100%%;background-color:#C6E0B4">
    <?php //print_r($_SESSION); ?>
    <div>   
        <nav id="nav_media" class="navbar navbar-fixed-top" role="navigation" style="margin-bottom: 10px;z-index: 5">
            <div class="row header_beranda">
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                        <img width="100px" src="logo/logo.png" alt="Logo">
                    </div>
                    <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
                        <span class="simasa">SIMASA</span> </br>
                        <span class="simasa2">Sistem Informasi Absensi Siswa</span></br>
                        <span class="simasa2">MTSS Al Wathoniyyah 17</span></br>
                    </div>
                </div>
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">

                </div>
                <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    <strong>Selamat Datang</strong></br>
                    <strong><?php echo $_SESSION['nama_login']; ?></strong>
                    <img style="margin-left: 20px;" src="icons/user.svg" alt="bagde">
                    </br>
                    </br>
                    <div id="" >
                        <?php 
                        $hari = translate_hari_singkat(date("D"));
                        echo $hari.", ".date("d F Y")." <span id='jam' ></span> WIB" ; ?>
                    </div>
                </div>
            </div>


            <div class="green_line"></div>
        </nav>

        <!-- Center                     ============================================================ -->
        <div id="" class="row main_row_media ">
            <div class="col-lg-2" style="background-color:#272726;">

                <div class="navbar-default" role="navigation">
                    <div class="sidebar-collapse">
                        <ul class="nav" id="side-menu" style="background-color:#272726">


                            <?php if($_SESSION['level']=='Admin Sistem' || $_SESSION['level']=='Wali Kelas'){  //Jika yang login => 'Admin Sistem' ?>  
                            <li>
                                <a id="beranda" class="bg_icon_menu" href="?module=beranda"><img  width="20px" src="icons/home.svg" style="margin-right:5px"><span class="menu">Beranda</span></a>
                            </li>
                            <?php } ?>
                            
                            <?php if($_SESSION['level']=='Admin Sistem'){ ?>
                            <li>
                                <a id="filter_absensi_admin" class="bg_icon_menu" href="?module=filter_absensi_admin"><img  width="20px" src="icons/absensi.svg" style="margin-right:5px"><span class="menu">Rekap Absensi</span></a>
                            </li>
                            <?php } ?>

                            <?php if ($_SESSION['level'] == 'Wali Kelas') {  // Jika yang login => 'Wali Kelas'?>
                             <li>
                                <a id="siswa" class="bg_icon_menu" href="?module=siswa_wali_kelas&kls=<?php echo $_SESSION['id_kelas'] ?>"><img  width="20px" src="icons/siswa.svg" style="margin-right:5px"><span class="menu">Data Siswa</span></a>
                            </li>
                             <li>
                                <a class="bg_icon_menu" href="#"><img  width="20px" src="icons/absensi.svg" style="margin-right:5px"><span class="menu">Rekap Absensi</span></a>
                            </li>
                            <li>
                                <a id="absensi_rekap_perhari" class="bg_icon_menu" href="?module=absensi_rekap_perhari"><span class="menu menu-child">Rekap Absensi Perhari</span></a>
                            </li>
                            <li>
                                <a id="filter_absensi_persiswa" class="bg_icon_menu" href="?module=filter_absensi_persiswa"><span class="menu menu-child">Rekap Absensi Persiswa</span></a>
                            </li>
                            <?php } ?>

                            <?php if ($_SESSION['level'] == 'Wali Murid' || $_SESSION['level'] == 'Siswa') { // Jika yang login => 'Walimurid'?>
                            <li>
                                <a id="filter_persiswa_wm" class="bg_icon_menu" href="?module=filter_persiswa_wm"><img  width="20px" src="icons/absensi.svg" style="margin-right:5px"><span class="menu">Absensi (WaliMurid)</span></a>
                            </li>
                            <?php } ?>

                            <?php if ($_SESSION['level'] == 'Admin Sistem') { // Jika yang login => 'Admin Sistem' atau 'Wali Kelas'?>
                            <li>
                                <a id="siswa" class="bg_icon_menu" href="?module=siswa"><img  width="20px" src="icons/siswa.svg" style="margin-right:5px"><span class="menu">Data Siswa</span></a>
                            </li>

                            <li>
                                <a id="wali_kelas" class="bg_icon_menu" href="?module=wali_kelas"><img  width="20px" src="icons/walikelas.svg" style="margin-right:5px"><span class="menu">Data Wali Kelas</span></a>
                            </li>

                            <li>
                                <a id="kelas" class="bg_icon_menu" href="?module=kelas"><img  width="20px" src="icons/kelas.svg" style="margin-right:5px"><span class="menu">Data Kelas</span></a>
                            </li>
                            <li>
                                <a id="semester" class="bg_icon_menu" href="?module=semester"><img width="20px" src="icons/semester.svg" style="margin-right:5px"><span class="menu">Data Semester</span></a>
                            </li>
                            <?php }?>

                            <?php if ($_SESSION['level'] == 'Admin Sistem') {  //Jika yang login => 'Admin Sistem'?>
                            <li>
                                <a id="sekolah" class="bg_icon_menu" href="?module=sekolah"><img  width="20px" src="icons/sekolah.svg" style="margin-right:5px"><span class="menu">Data Sekolah</span></a>
                            </li>
                            <li>
                                <a id="kalender" class="bg_icon_menu" href="?module=kalender"><img  width="20px" src="icons/sekolah.svg" style="margin-right:5px"><span class="menu">Master Kalender</span></a>
                            </li><li>
                                <a id="user" class="bg_icon_menu" href="?module=user"><img  width="20px" src="icons/sekolah.svg" style="margin-right:5px"><span class="menu">Data User</span></a>
                            </li>
                            <?php } ?>

                            <li>
                                <a class="bg_icon_menu" href="logout.php"><img  width="20px" src="icons/logout.svg" style="margin-right:5px"><span class="menu">Log out</span></a>
                                <?php //print_r($_SESSION); ?>
                            </li>
                            <?php //} ?>

                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </div>
            <div class="col-lg-10" style="position:relative;">
                <!-- <div id="page-wrapper"> -->
                <?php include "content.php";  // Konten?>
                <!-- </div> -->

            </div>
        </div>


        <!--  Footer ===================================== -->
        <div class="footer_media"></div>

    </div>
</body>

</html>
    <?php
 }else{
    header('location:login.php');
 }
 ?>