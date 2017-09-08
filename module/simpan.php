<?php
include "../config/conn.php";

if($_GET['act'] == "input_user"){
$pw=md5($_POST['pass']);
mysqli_query($conn,"INSERT INTO user(nama,pass,level,id) 
VALUES(
'$_POST[nama]',
'$pw',
'admin_wali_kelas','$_POST[sekolah]')");
echo "<script>window.alert('Data Tersimpan');
        window.location=('../media.php?module=user')</script>";

}
if($_GET['act'] == "edit_user"){
if(!empty($_POST['pass'])){
$pw=md5($_POST['pass']);
mysqli_query($conn,"update user set nama='$_POST[nama]',
pass='$pw',id='$_POST[sekolah]' where idu='$_POST[idu]'");
}else{
mysqli_query($conn,"update user set nama='$_POST[nama]',id='$_POST[sekolah]' where idu='$_POST[idu]'");	
	
}
echo "<script>window.alert('Data Tersimpan');
        window.location=('../media.php?module=user')</script>";

}

if($_GET['act'] == "hapus_user"){
mysqli_query($conn,"delete from user where idu='$_GET[idu]'");
echo "<script>window.alert('Data Terhapus');
        window.location=('../media.php?module=user')</script>";

}



if($_GET['act'] == "siswa_tambah")
{
	// $mr = md5($_POST["password"]);
	// echo "INSERT INTO siswa(ids,nis,nama,jk,alamat,idk,tlp,bapak,k_bapak,ibu,k_ibu,pass,id_usergroup) 
	// VALUES(null,
	// '$_POST[nis]',
	// '$_POST[nama]',
	// '$_POST[jk]',
	// '$_POST[alamat]',
	// '$_POST[kelas]',
	// '$_POST[tlp]',
	// '$_POST[bapak]',
	// '$_POST[k_bapak]',
	// '$_POST[ibu]',
	// '$_POST[k_ibu]',
	// '$mr',
	//  5)";exit;
	$mr = md5($_POST["password"]);
	mysqli_query($conn,"INSERT INTO siswa(ids,nis,nama,jk,alamat,idk,tlp,bapak,k_bapak,ibu,k_ibu,pass,id_usergroup) 
	VALUES(null,
	'$_POST[nis]',
	'$_POST[nama]',
	'$_POST[jk]',
	'$_POST[alamat]',
	'$_POST[kelas]',
	'$_POST[tlp]',
	'$_POST[bapak]',
	'$_POST[k_bapak]',
	'$_POST[ibu]',
	'$_POST[k_ibu]',
	'$mr',
	 5)");
	echo "<script>window.alert('Data berhasil disimpan');
			var kelas = ".$_POST['kelas'].";
	        window.location=('../media.php?module=siswa&kls='+kelas)</script>";

}

if($_GET['act'] == "siswa_edit"){
	$password = md5($_POST["k_password"]);
	mysqli_query($conn,"UPDATE siswa SET nis='$_POST[nis]',
	nama 	= '$_POST[nama]',
	jk 		= '$_POST[jk]',
	alamat 	= '$_POST[alamat]',
	idk 	= '$_POST[kelas]',
	tlp 	= '$_POST[tlp]',
	bapak 	= '$_POST[bapak]',
	k_bapak = '$_POST[k_bapak]',
	ibu 	= '$_POST[ibu]',
	k_ibu 	= '$_POST[k_ibu]',
	pass 	= '$password'  where ids='$_POST[id]'");
	echo "<script>window.alert('Data Tersimpan');
			var kls = ".$_POST['kelas'].";
	        window.location=('../media.php?module=siswa_data&kls='+kls)</script>";

}

if($_GET['act'] == "siswa_det"){
	$pw=md5($_POST['pass']);
if(!empty($_POST['pass'])){
mysqli_query($conn,"UPDATE siswa SET pass='$pw' where ids='$_POST[id]'");
echo "<script>window.alert('Data Tersimpan');
        window.location=('../media.php?module=siswa_det')</script>";
}else{
echo "<script>window.alert('Isi Password');
        window.location=('../media.php?module=siswa_det')</script>";

}
}

if($_GET['act'] == "siswa_hapus"){
	$kls = $_GET['kls'];
	// print_r($_GET);exit();
$query = mysqli_query($conn,"delete from siswa where ids='$_GET[ids]'");
echo "<script>window.alert('Data Terhapus');
		var kls = <?php echo $kls;?>;" ;
header('location:../media.php?module=siswa_data&kls='.$kls);

}


/*
if($_GET['act'] == "input_absen"){
//echo "$_GET[klas] <br>";
//echo "$_GET[tanggal] <br>";
//echo "$_GET[bulan] <br>";
//echo "$_GET[tahun] <br>";

if($_GET['tanggal']<10){
$t="0$_GET[tanggal]";
}else{
$t="$_GET[tanggal]";
}
if($_GET['bulan']<10){
$b="0$_GET[bulan]";
}else{
$b="$_GET[bulan]";
}

	$sql=mysqli_query($conn,"select * from siswa where idk='$_GET[klas]' ");
	while($rs=mysql_fetch_array($sql)){

$ra=$rs['ids'];
$tgl="$t-$b-$_GET[tahun]";
echo $_POST[$ra];
	$sqla=mysqli_query($conn,"select * from absen where ids='$rs[ids]' and tgl='$tgl' and jam='$_GET[jam]'");
	$rsa=mysql_fetch_array($sqla);
	$conk=mysql_num_rows($sqla);

//echo "$rs[nama] $_POST[$ra] <br>";
if($conk==0){
	
if($_POST[$ra]=="A"){
$noTujuan = "+62$rs[tlp]";
$message = "Kami Memberitahukan bahwa pada tanggal $rsa[tgl]. Nama : $rs[nama]. Alamat : $rs[alamat]. Tidak Masuk Sekolah Tanpa Keterangan";
 
//exec('E:\Data Kuliah\Web\htdocs\smsku\bin\gammu-smsd-inject.exe -c E:\Data Kuliah\Web\htdocs\smsku\bin\smsdrc EMS '.$noTujuan.' -text "'.$message.'"');
exec('c:\xampp\htdocs\smsku\bin\gammu-smsd-inject.exe -c c:\xampp\htdocs\smsku\bin\smsdrc EMS '.$noTujuan.' -text "'.$message.'"');
}

mysqli_query($conn,"INSERT INTO absen(ids,tgl,jam,ket) 
VALUES(
'$rs[ids]',
'$tgl',
'$_GET[jam]',
'$_POST[$ra]')");
//echo "SIMPAN";
}else{

if($_POST[$ra]=="A"){
$noTujuan = "+62$rs[tlp]";
$message = "Kami Memberitahukan bahwa pada tanggal $rsa[tgl]. Nama : $rs[nama]. Alamat : $rs[alamat]. Tidak Masuk Sekolah Tanpa Keterangan";
 

//exec('E:\Data Kuliah\Web\htdocs\smsku\bin\gammu-smsd-inject.exe -c E:\Data Kuliah\Web\htdocs\smsku\bin\smsdrc EMS '.$noTujuan.' -te//xt "'.$message.'"');
exec('c:\xampp\htdocs\smsku\bin\gammu-smsd-inject.exe -c c:\xampp\htdocs\smsku\bin\smsdrc EMS '.$noTujuan.' -text "'.$message.'"');
}


mysqli_query($conn,"update absen set ket='$_POST[$ra]' where ids='$rs[ids]' and tgl='$tgl' and jam='$_GET[jam]'");	
//echo "edit";

}


	}
echo "<script>window.alert('Data Tersimpan');
        window.location=('../media.php?module=pilih')</script>";

}

*/
/*
if($_GET['act'] == "input_absen"){
echo "$_GET[klas] <br>";
echo "$_GET[jam] <br>";

	$sql=mysqli_query($conn,"select * from siswa where idk='$_GET[klas]' ");
	while($rs=mysql_fetch_array($sql)){

$ra=$rs['ids'];
//$tgl=date("YY-m-d");
$tgl = date("F j, Y, g:i a");
echo $_POST[$ra];
	$sqla=mysqli_query($conn,"select * from absen where ids='$rs[ids]' and tgl='$tgl' and jam='$_GET[jam]'");
	$rsa=mysql_fetch_array($sqla);
	$conk=mysql_num_rows($sqla);


if($conk==0){
	
if($_POST[$ra]=='A'){
$noTujuan = "+62$rs[tlp]";
$message = "Kami Memberitahukan bahwa pada tanggal $rsa[tgl]. Nama : $rs[nama]. Alamat : $rs[alamat]. Tidak Masuk Sekolah Tanpa Keterangan";
 
//exec('E:\Data Kuliah\Web\htdocs\smsku\bin\gammu-smsd-inject.exe -c E:\Data Kuliah\Web\htdocs\smsku\bin\smsdrc EMS '.$noTujuan.' -text "'.$message.'"');
exec('c:\xampp\htdocs\smsku\bin\gammu-smsd-inject.exe -c c:\xampp\htdocs\smsku\bin\smsdrc EMS '.$noTujuan.' -text "'.$message.'"');

}

mysqli_query($conn,"INSERT INTO absen(ids,tgl,jam,ket) 
VALUES(
'$rs[ids]',
'$tgl',
'$_GET[jam]',
'$_POST[$ra]')");
}else{

if($_POST[$ra]=='A')
{
$noTujuan = "+62$rs[tlp]";
$message = "Kami Memberitahukan bahwa pada tanggal $rsa[tgl]. Nama : $rs[nama]. Alamat : $rs[alamat]. Tidak Masuk Sekolah Tanpa Keterangan";
 
//exec('E:\Data Kuliah\Web\htdocs\smsku\bin\gammu-smsd-inject.exe -c E:\Data Kuliah\Web\htdocs\smsku\bin\smsdrc EMS '.$noTujuan.' -text "'.$message.'"');
exec('c:\xampp\htdocs\smsku\bin\gammu-smsd-inject.exe -c c:\xampp\htdocs\smsku\bin\smsdrc EMS '.$noTujuan.' -text "'.$message.'"');
}

mysqli_query($conn,"update absen set ket='$_POST[$ra]' where ids='$rs[ids]' and tgl='$tgl' and jam='$_GET[jam]'");	
}


	}
echo "<script>window.alert('Data Tersimpan');
        window.location=('../media.php?module=pilih')</script>";

}
*/
if($_GET['act'] == "input_absen"){
//echo "$_GET[klas] <br>";
//echo "$_GET[tanggal] <br>";
//echo "$_GET[bulan] <br>";
//echo "$_GET[tahun] <br>";

if($_GET['tanggal']<10){
$t="0$_GET[tanggal]";
}else{
$t="$_GET[tanggal]";
}
if($_GET['bulan']<10){
$b="0$_GET[bulan]";
}else{
$b="$_GET[bulan]";
}

	$sql=mysqli_query($conn,"select * from siswa where idk='$_GET[klas]' ");
	while($rs=mysql_fetch_array($sql)){

$ra=$rs['ids'];
$tgl="$t-$b-$_GET[tahun]";
echo $_POST[$ra];
	$sqla=mysqli_query($conn,"select * from absen where ids='$rs[ids]' and tgl='$tgl' and jam='$_GET[jam]'");
	$rsa=mysql_fetch_array($sqla);
	$conk=mysql_num_rows($sqla);

//echo "$rs[nama] $_POST[$ra] <br>";
if($conk==0){
	
if($_POST[$ra]=="A"){
$noTujuan = "+62$rs[tlp]";
$message = "Kami Memberitahukan bahwa pada tanggal $rsa[tgl]. Nama : $rs[nama]. Alamat : $rs[alamat]. Tidak Masuk Sekolah Tanpa Keterangan";
 
exec('c:\xampp\htdocs\smsku\bin\gammu-smsd-inject.exe -c c:\xampp\htdocs\smsku\bin\smsdrc EMS '.$noTujuan.' -text "'.$message.'"');
}

mysqli_query($conn,"INSERT INTO absen(ids,tgl,jam,ket) 
VALUES(
'$rs[ids]',
'$tgl',
'$_GET[jam]',
'$_POST[$ra]')");
//echo "SIMPAN";
}else{

if($_POST[$ra]=="A"){
$noTujuan = "+62$rs[tlp]";
$message = "Kami Memberitahukan bahwa pada tanggal $rsa[tgl]. Nama : $rs[nama]. Alamat : $rs[alamat]. Tidak Masuk Sekolah Tanpa Keterangan";
 
exec('c:\xampp\htdocs\smsku\bin\gammu-smsd-inject.exe -c c:\xampp\htdocs\smsku\bin\smsdrc EMS '.$noTujuan.' -text "'.$message.'"');
}


mysqli_query($conn,"update absen set ket='$_POST[$ra]' where ids='$rs[ids]' and tgl='$tgl' and jam='$_GET[jam]'");	
//echo "edit";

}


	}
echo "<script>window.alert('Data Tersimpan');
        window.location=('../media.php?module=pilih')</script>";

}

if($_GET['act'] == "input_sekolah"){
mysqli_query($conn,"INSERT INTO sekolah(kode,nama,alamat) 
VALUES(
'$_POST[kode]',
'$_POST[nama]',
'$_POST[alamat]')");
echo "<script>window.alert('Data Tersimpan');
        window.location=('../media.php?module=sekolah')</script>";

}

if($_GET['act'] == "sekolah_edit"){
	mysqli_query($conn,"UPDATE sekolah SET kode='$_POST[kode]',
	nama='$_POST[nama]',
	alamat='$_POST[alamat]' WHERE id='$_POST[id]'");
	echo "<script>window.alert('Data Tersimpan');
        window.location=('../media.php?module=sekolah')</script>";

}

if($_GET['act'] == "hapus_sekolah"){
mysqli_query($conn,"delete from sekolah where id='$_GET[id]'");
echo "<script>window.alert('Data Tersimpan');
        window.location=('../media.php?module=sekolah')</script>";

}

if($_GET['act'] == "kelas_tambah"){
mysqli_query($conn,"INSERT INTO kelas(idk,nama_kelas,idw) 
VALUES(
null,
'$_POST[nama_kelas]',
'$_POST[nama_walikelas]')");
echo "<script>window.alert('Data Tersimpan');
        window.location=('../media.php?module=kelas')</script>";

}
if($_GET['act'] == "kelas_edit"){
	mysqli_query($conn,"UPDATE kelas SET
	nama_kelas  = '$_POST[nama_kelas]',
	idw 		= '$_POST[wali_kelas]'
	 where idk  = '$_POST[idk]' ");
	echo "<script>window.alert('Data Tersimpan');
	        window.location=('../media.php?module=kelas')</script>";

}
if($_GET['act'] == "hapus_kelas"){
	mysqli_query($conn,"DELETE FROM kelas WHERE idk ='$_GET[idk]'");
	echo "<script>window.alert('Data Dihapus');
	        window.location=('../media.php?module=kelas')</script>";
}

if($_GET['act'] == "semester_tambah"){
	mysqli_query($conn,"INSERT INTO semester (id_semester,semester,tahun, tgl_awal, tgl_akhir) VALUES (
		null, '$_POST[semester]', '$_POST[tahun]', STR_TO_DATE('$_POST[tgl_awal]','%d-%m-%Y'), STR_TO_DATE('$_POST[tgl_akhir]','%d-%m-%Y') )");
	echo "<script>window.alert('Data berhasil disimpan');
	        window.location=('../media.php?module=semester')</script>";
}

if($_GET['act'] == "semester_edit"){
	mysqli_query($conn,"UPDATE semester SET
		semester = '$_POST[semester]',
		tahun 	 = '$_POST[tahun]',
		tgl_awal = STR_TO_DATE('$_POST[tgl_awal]','%d-%m-%Y'),
		tgl_akhir = STR_TO_DATE('$_POST[tgl_akhir]','%d-%m-%Y')
		WHERE id_semester = '$_POST[id]'
		");
	echo "<script>window.alert('Data berhasil diubah');
	        window.location=('../media.php?module=semester')</script>";
}

if($_GET['act'] == "semester_hapus"){
	mysqli_query($conn,"DELETE FROM semester WHERE id_semester = '$_GET[id_semester]'
		");
	echo "<script>window.alert('Data berhasil dihapus');
	        window.location=('../media.php?module=semester')</script>";
}

if($_GET['act'] == "input_wali_kelas"){
	$pass = md5($_POST['password']);
	mysqli_query($conn,"INSERT INTO wali_kelas(nip,nama,jk,alamat,idk,pass) 
	VALUES(
	'$_POST[nip]',
	'$_POST[nama]',
	'$_POST[jk]',
	'$_POST[alamat]',
	'$_POST[kelas]',
	'$pass')");
	echo "<script>window.alert('Data Tersimpan');
	        window.location=('../media.php?module=wali_kelas&kls=semua')</script>";

}

if($_GET['act'] == "wali_kelas_edit"){
	// print_r($_POST);exit;
	$password = md5($_POST['password']);
	mysqli_query($conn,"UPDATE wali_kelas SET nip = '$_POST[nip]',
						nama  = '$_POST[nama]',
						jk 	  = '$_POST[jk]',
						alamat= '$_POST[alamat]',
						email = '$_POST[email]',
						pass  = '$password',
						idk   = '$_POST[kelas]' WHERE idw = '$_POST[idw]'");
	echo "<script>window.alert('Data Tersimpan');
	        window.location=('../media.php?module=wali_kelas&kls=semua')</script>";

}
if($_GET['act'] == "wali_kelas_hapus"){
	mysqli_query($conn,"DELETE FROM wali_kelas WHERE idw='$_GET[idw]'");
	echo "<script>window.alert('Data wali_kelas Sudah Terhapus');
		window.location=('../media.php?module=wali_kelas&kls=semua')</script>";
}

if($_GET['act'] == "wali_kelas_det"){
	if(!empty($_POST['pass'])){
		$pw=md5($_POST['pass']);
		mysqli_query($conn,"update wali_kelas set nama='$_POST[nama]',
		jk='$_POST[jk]',
		alamat='$_POST[alamat]',pass='$pw' where idg='$_POST[idg]'");
	}else{
		mysqli_query($conn,"update wali_kelas set nama='$_POST[nama]',
		jk='$_POST[jk]',
		alamat='$_POST[alamat]' where idg='$_POST[idg]'");		
	}
	echo "<script>window.alert('Data Tersimpan');
	        window.location=('../media.php?module=wali_kelas_det')</script>";
}

if($_GET['act'] == 'edit_absen_ket'){
	$query_upd = mysqli_query($conn,"UPDATE absen SET ket = '$_POST[keterangan]' WHERE ida = $_POST[id_absen]");
	if($query_upd){
		echo "<script>window.alert('Data diubah');
		window.location=('../media.php?module=absensi_rekap_perhari')</script>";
	}else{
		echo "<script>window.alert('Data gagal diubah')</script>";
	}
}

if($_GET['act'] =='get_siswa_bynis'){
	$query = mysqli_query($conn,"SELECT siswa.nama, kelas.nama_kelas FROM siswa JOIN kelas ON siswa.idk = kelas.idk WHERE siswa.nis = '$_POST[nis]'");
	$res = mysqli_fetch_array($query);
	$out = $res;
	if ($res == NULL) {
		$out = false; 
	}
	echo json_encode($out);
}

if($_GET['act'] == "user_tambah"){
	$pass = md5($_POST['password']);
	$exec_query = mysqli_query($conn,"INSERT INTO user(id_user,nama,pass,email,id_usergroup) 
	VALUES(
	'',
	'$_POST[nama]',
	'$pass',
	'$_POST[level]',
	'$_POST[email]',
	'$_POST[level]')");
	if($exec_query){
		echo "<script>window.alert('Data Tersimpan');
	        window.location=('../media.php?module=user')</script>";
	}

}

if($_GET['act'] == "user_edit"){

	$password = $_POST['password'];
	if(empty($password)){
		$exec_query = mysqli_query($conn,"UPDATE user SET nama = '$_POST[nama]', id_usergroup = '$_POST[level]', email='$_POST[email]'
			WHERE id_user = $_POST[id]");
		// printf("%s\n",$exec_query);
		// print_r($_POST);exit;
		// echo "NO pw";
	}else{
		$pass = md5($_POST['password']);
		$exec_query = mysqli_query($conn,"UPDATE user SET nama = '$_POST[nama]', pass = '$pass', id_usergroup = '$_POST[level]', email='$_POST[email]' WHERE id_user = '$_POST[id]'");
		// echo "ada pw";
	}

	if($exec_query){
		echo "<script>window.alert('Data Tersimpan');
	        window.location=('../media.php?module=user')</script>";
	}

}

if($_GET['act'] == "user_hapus"){
	$id = $_GET['id'];
	$exec_query = mysqli_query($conn,"DELETE FROM user WHERE id_user=$id ");
	if($exec_query){
		echo "<script>window.alert('Data Dihapus');
	        window.location=('../media.php?module=user')</script>";
	}

}

if($_GET['act'] == "kalender_tambah"){
	// print_r($_POST);exit;
	$exec_query = mysqli_query($conn,"INSERT INTO kalender(id_kalender,tanggal,kategori,keterangan) 
	VALUES(
	'',
	STR_TO_DATE('$_POST[tanggal]','%d-%m-%Y'),
	'$_POST[kategori]',
	'$_POST[keterangan]')");
	if($exec_query){
		echo "<script>window.alert('Data Tersimpan');
	        window.location=('../media.php?module=kalender')</script>";
	}

}

if($_GET['act'] == "kalender_edit"){
	$exec_query = mysqli_query($conn,"UPDATE kalender SET kategori = '$_POST[kategori]', keterangan = '$_POST[keterangan]' WHERE id_kalender = '$_POST[id]'");
	if($exec_query){
		echo "<script>window.alert('Data Disimpan');
	        window.location=('../media.php?module=kalender')</script>";
	}
}

if($_GET['act'] == "kalender_hapus"){
	$id = $_GET['id'];
	$exec_query = mysqli_query($conn,"DELETE FROM kalender WHERE id_kalender=$id ");
	if($exec_query){
		echo "<script>window.alert('Data Dihapus');
	        window.location=('../media.php?module=kalender')</script>";
	}

}