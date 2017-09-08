<?php 
include('../config/conn.php');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$mysqli = $conn;
// $sql = "SELECT * FROM siswa LIMIT 0,10" ;
$sql = "SELECT siswa.*,kelas.nama_kelas, absen.* from absen
JOIN siswa on siswa.nis = absen.nis
JOIN kelas on kelas.idk = siswa.idk
WHERE absen.jam > '00:00:00'
-- AND absen.tgl = CURDATE();
AND absen.tgl LIKE '%'" ;
$res = $mysqli->query($sql);

$data = array();
if ($res->num_rows > 0) {
    $no = 1;
    while($row = $res->fetch_assoc()) {
        $row['no'] = $no;
        $data[] = $row;
        $no ++;
    }       
}
$out = array("data"=>$data);
echo json_encode($out);
