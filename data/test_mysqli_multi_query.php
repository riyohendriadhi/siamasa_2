<?php 
include '../config/conn.php';

$sql ="SELECT COUNT(*) jumlah_alfa1 FROM absen where absen.ket = 'A' AND absen.nis = '9974602083';
		SELECT COUNT(*) jumlah_alfa2 FROM absen where absen.ket = 'A' AND absen.nis = '9974602083';";
$exec_query = mysqli_multi_query($conn, $sql);
$resul1 = mysqli_store_result($conn);

while ($data1 = mysqli_fetch_array($resul1)) {
	print_r($data1);
	$data_1 = $data1;
	echo "<p>";

}
mysqli_free_result($resul1);
mysqli_next_result($conn);

$resul2 = mysqli_store_result($conn);

while ($data2 = mysqli_fetch_array($resul2)) {
	print_r($data2);
	$data_2 = $data2;
	echo "<p>";

}

mysqli_close($conn);

echo"data1 = ".$data_1['jumlah_alfa1'];
	echo "<p>";
echo"data2 = ".$data_2['jumlah_alfa2'];
