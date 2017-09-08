<?php
if(!isset($_GET['module']) || $_GET['module'] ==''){
include "module/beranda.php";
}else	
if($_GET['module']=="filter_absensi"){
include "module/absensi/absensi_filter.php";
}else
if($_GET['module']=="filter_absensi_admin"){
include "module/absensi/absensi_filter_admin.php";
}else
if($_GET['module']=="rkp_absen"){
include "module/absensi/absensi_rekap.php";
}else
if($_GET['module']=="rekap_absen_admin"){
include "module/absensi/absensi_rekap_admin.php";
}else
if($_GET['module']=="absensi_rekap_perhari"){
include "module/absensi/absensi_rekap_perhari.php";
}else
if($_GET['module']=="absensi_ubah_ket"){
include "module/absensi/absensi_edit_ket.php";
}else
if($_GET['module']=="filter_absensi_persiswa"){
include "module/absensi/absensi_filter_persiswa.php";
}else
if($_GET['module']=="filter_persiswa_wm"){
include "module/absensi/absensi_filter_persiswa_walimurid.php";
}else
if($_GET['module']=="absensi_rekap_persiswa"){
include "module/absensi/absensi_rekap_persiswa_walikelas.php";
}else
if($_GET['module']=="rekap_persiswa_walimurid"){
include "module/absensi/absensi_rekap_persiswa_walimurid.php";
}else
if($_GET['module']=="absensi_rekap_admin"){
include "module/absensi/absensi_rekap_admin.php";
}else
if($_GET['module']=="absensi_rekap_walimurid"){
include "module/absensi/absensi_rekap_walimurid.php";
}else
if($_GET['module']=="absensi_data"){
include "module/absensi/absensi_data.php";
}else
if($_GET['module']=="siswa"){
include "module/siswa/siswa_filter.php";
}else
if($_GET['module']=="siswa_data"){
include "module/siswa/siswa_data.php";
}else
if($_GET['module']=="siswa_wali_kelas"){
include "module/siswa/siswa_data.php";
}else
if($_GET['module']=="siswa_input"){
include "module/siswa/siswa_input.php";
}else
if($_GET['module']=="siswa_detail"){
include "module/siswa/siswa_detail.php";
}else
if($_GET['module']=="wali_kelas"){
include "module/wali_kelas/wali_kelas_data.php";
}else
if($_GET['module']=="wali_kelas_input"){
include "module/wali_kelas/wali_kelas_input.php";
}else
if($_GET['module']=="wali_kelas_detail"){
include "module/wali_kelas/wali_kelas_detail.php";
}else
if($_GET['module']=="kelas"){
include "module/kelas/kelas_data.php";
}else
if($_GET['module']=="kelas_input"){
include "module/kelas/kelas_input.php";
}else
if($_GET['module']=="semester"){
include "module/semester/semester_data.php";
}else
if($_GET['module']=="semester_tambah"){
include "module/semester/semester_tambah.php";
}else
if($_GET['module']=="semester_edit"){
include "module/semester/semester_edit.php";
}else
if($_GET['module']=="sekolah"){
include "module/sekolah/sekolah.php";
}else
if($_GET['module']=="sekolah_edit"){
include "module/sekolah/sekolah_edit.php";
}else
if($_GET['module']=="user"){
include "module/user/user_data.php";
}else
if($_GET['module']=="user_input"){
include "module/user/user_input.php";
}else
if($_GET['module']=="kalender"){
include "module/kalender/kalender_data.php";
}else
if($_GET['module']=="kalender_input"){
include "module/kalender/kalender_input.php";
}else{
	if ($_SESSION['level'] == 'Admin Sistem' || $_SESSION['level'] == 'Wali Kelas' ) {
		include "module/beranda.php";	
	}else{
		include "module/absensi/absensi_filter_persiswa_walimurid.php";		
	}
}
?>