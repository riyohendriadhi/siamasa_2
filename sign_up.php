<?php
require ('config/conn.php');

$username 	= $_POST['username'];
$email 		= $_POST['email'];
$passw 		= $_POST['passw'];

$query = mysqli_query($conn,"INSERT INTO user values(null,'$username','$passw','user','0','$email')");

if ($query == TRUE){

	session_start();
		$_SESSION['idu']	= $rs['idu'];
		$_SESSION['nama']	= $username;
		$_SESSION['level']	= 'user';
		$_SESSION['idk']	= "";
		$_SESSION['ortu']	= "";
		// $_SESSION['id']		= $rs['id'];

	$out = array('success' => true , 'msg'=>'Data user berhasil disimpan','location'=>'media.php?module=home');
}else{
	$out = array('success' => false , 'msg'=>'Data user gagal disimpan');
}
echo json_encode($out);