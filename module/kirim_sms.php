<?php 
include '../config/conn.php';

$query = "SELECT sis.nis, sis.nama, sis.jk, sis.tlp,kls.nama_kelas, '08:00:00' as jadwal_masuk, '13:00:00' as jadwal_pulang,abs.ida, abs.tgl,
			( CASE WHEN abs.ket IS NULL  THEN 'A' ELSE abs.ket END ) as ket,abs.masuk, abs.pulang
			 FROM siswa sis
			 LEFT JOIN (SELECT abs1.*, (SELECT MIN(abs2.jam_masuk ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as masuk,
			           (SELECT MAX(abs2.jam_pulang ) FROM absen abs2 WHERE abs2.nis= abs1.nis AND abs2.tgl=abs1.tgl ) as pulang FROM absen abs1 where abs1.tgl = CURRENT_DATE() GROUP BY abs1.nis) abs
									ON abs.nis= sis.nis
			LEFT JOIN kelas kls on kls.idk = sis.idk
 ";

$exec_query = mysqli_query($conn, $query);

ini_set('max_execution_time',0);
$gagal_simpan =0; 
while ($res = mysqli_fetch_array($exec_query)) {

	$nomor_hp 	= $res['tlp'];
	$masuk 		= empty($res['masuk'])?'-':$res['masuk'];
	$pulang 	= empty($res['pulang'])?'-':$res['pulang'];
	$putrai		= $res['jk']=="L"?"Putra":"Putri";
	$pesan 		= "$putrai anda pada hari ini tanggal $res[tgl] ,\n Nama : $res[nama] \n Kelas : $res[nama_kelas] \n Absens : $res[ket] \n Masuk pada jam : $masuk \n Pulang jam : $pulang \n Terima kasih.	";
	$query_pesan = "INSERT INTO outbox (UpdatedInDB, InsertIntoDB, SendingDateTime, SendBefore, SendAfter, Text, DestinationNumber, Coding, UDH, Class, TextDecoded,
	 ID, MultiPart, RelativeValidity, SenderID, SendingTimeOut, DeliveryReport, CreatorID)
	  VALUES (	 CURRENT_TIMESTAMP, CURRENT_DATE(), '".date('Y-m-d h:i:s')."' , '23:59:59.000000', '00:00:00.000000', '', '$nomor_hp',
	  'Default_No_Compression', NULL, '-1', '$pesan', NULL, 'false', '-1', NULL, '0000-00-00 00:00:00.000000', 'default', '')";

	 $exec_query_pesan = mysqli_query($conn, $query_pesan);
	 
	if (!$exec_query_pesan) {
	 	$gagal_simpan =+ 1; 
	 }

}

ini_set('max_execution_time',30);

if(count($gagal_simpan == 0)){
	echo "success"; 
}else{
	echo "failure";
}
