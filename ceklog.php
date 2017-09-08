<?php
include"config/conn.php";

$pass 		= md5(mysqli_real_escape_string($conn, $_POST['password']));
$passw 		= mysqli_real_escape_string($conn, $_POST['password']);
$user 		= mysqli_real_escape_string($conn, $_POST['username']);
$exec_query	= mysqli_query($conn,"SELECT us.*, ug.nama_usergroup as level
									FROM user us 
									JOIN usergroup ug on us.id_usergroup = ug.id_usergroup WHERE nama='$user' AND pass='$pass'");
$count 		= mysqli_num_rows($exec_query);
$res 		= mysqli_fetch_array($exec_query);
if($count > 0){  //Cek jumlah user yang ada pada hasil eksekusi query 
	session_start();
	$_SESSION['id_user'] 	= $res['id_user'];
	$_SESSION['nama_login']	= $res['nama'];
	$_SESSION['level'] 		= $res['level'];
	$_SESSION['logged_in'] 	= '1';

	if ($res['level'] == 'Wali Kelas') { // Jika yang login  adalah walikelas
		$exec_query_wk	= mysqli_query($conn,"SELECT wk.*,k.nama_kelas FROM wali_kelas wk 
						JOIN user u ON u.id_user = wk.idu 
						JOIN kelas k ON k.idw = wk.idw
						WHERE u.id_user = '$res[id_user]'");
		$res_wk 		= mysqli_fetch_array($exec_query_wk);

		$_SESSION['nip'] 			= $res_wk['nip'];
		$_SESSION['nama']			= $res_wk['nama'];
		$_SESSION['id_wali_kelas'] 	= $res_wk['idw'];
		$_SESSION['id_kelas'] 		= $res_wk['idk'];
		$_SESSION['nama_kelas']		= $res_wk['nama_kelas'];
		echo json_encode(array('success'=>true, 'location'=>'media.php?module=home'));
	}else
	if ($res['level'] == 'Wali Murid') { // jika yang login adalah walimurid
		$exec_query_wm 	= mysqli_query($conn, "SELECT * FROM siswa WHERE bapak = '$res[nama]' OR ibu = '$res[nama]'");
		$res_wm 		= mysqli_fetch_array($exec_query_wm);
		$_SESSION['id_siswa'] 	= $res_wm['ids'];
		$_SESSION['nis_siswa'] 	= $res_wm['nis'];
		$_SESSION['nama_siswa']	= $res_wm['nama'];
		echo json_encode(array('success'=>true, 'location'=>'media.php?module=home'));
	}else
	if ($res['level'] == 'Admin Sistem') {
		echo json_encode(array('success'=>true, 'location'=>'media.php?module=home'));		
	}else{}
}else{
 		//Jika tidak terdapat didalam tabel user berarti yg login adalah siswa
	$exec_query_siswa	= mysqli_query($conn,"SELECT * FROM siswa WHERE nis='$user'");
	$res_siswa			= mysqli_fetch_array($exec_query_siswa);
	$count_siswa		= mysqli_num_rows($exec_query_siswa);
	if($count_siswa > 0){
		session_start();
			$_SESSION['id_user'] 	= $res_siswa['ids'];
			$_SESSION['nis_siswa'] 	= $res_siswa['nis'];
			$_SESSION['nama_siswa']	= $res_siswa['nama'];
			$_SESSION['nama_bapak']	= $res_siswa['bapak'];
			$_SESSION['nama_ibu']	= $res_siswa['ibu'];
			$_SESSION['level'] 		= 'siswa';
			$_SESSION['logged_in'] 	= '1';
			// print_r($_SESSION);
		echo json_encode(array('success'=>true, 'location'=>'media.php?module=home'));
					
		}else{
			echo json_encode(array('success'=>false, 'msg'=>'Gagal Login'));
		}
}