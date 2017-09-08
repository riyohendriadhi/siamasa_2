<?php
include '../../config/conn.php';
require('../../lib/pdf/fpdf.php');

$pdf = new FPDF("P","cm","A4");

$pdf->SetMargins(0,2,1);
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','B',11);
$pdf->Image('../../logo/logo.png',1,1,2,2);           
$pdf->SetXY(4,1);            
$pdf->MultiCell(19.5,1,'MTsS Al Wathoniah 17',0,'L');
$pdf->SetXY(4,1.5);            
$pdf->MultiCell(19.5,1,'Pulo Gebang - Jakata Timur',0,'L');
$pdf->SetX(4);
   
$pdf->SetFont('Arial','B',10);

//Bikin garis. Jika ingin merubah lebar garis, set terlebih dahulu lebarnya baru tampilkan garis.
$pdf->Line(1,3.1,20,3.1);
$pdf->SetLineWidth(0.1);      
$pdf->Line(1,3.2,20,3.2);   

$pdf->ln(1);

$pdf->SetFont('Arial','B',14);

$pdf->SetLineWidth(0.03); // Set lebar garis tabel
$pdf->Cell(21,0.7,"Rekap Absensi Siswa",0,1,'C');

$pdf->ln(0.5); // Bikin baris kosong

$pdf->SetX(1);
$pdf->SetFont('Arial','B',10);
$pdf->Cell(1.3, 0.8, 'No.', TRUE, 0, 'C');  // CellCell($w, $h=0, $txt='', $border=0, $ln=0, $align='', $fill=false, $link='')
$pdf->Cell(2.5, 0.8, 'NIS', TRUE, 0, 'C');
$pdf->Cell(5.5, 0.8, 'Nama', TRUE, 0, 'C');
$pdf->Cell(2, 0.8, 'Kelas', TRUE, 0, 'C');
$pdf->Cell(3, 0.8, 'No.HP Orangtua', TRUE, 0, 'C');
$pdf->Cell(2, 0.8, 'Datang', TRUE, 0, 'C');
$pdf->Cell(2, 0.8, 'Pulang', TRUE, 1, 'C');

// Proses Cetak data
$pdf->SetFont('Arial','',9);
$no=1;

$query = "SELECT sis.nis, sis.nama,kls.nama_kelas, sis.tlp, abs.jam_masuk, abs.jam_pulang, abs.ket
            FROM siswa sis
            JOIN kelas kls on kls.idk = sis.idk
            JOIN absen abs
            ON sis.nis = abs.nis ";

if(!empty($_GET['tanggal']) && isset($_GET['tanggal'])){
    $where = "WHERE abs.tgl = STR_TO_DATE('$_GET[tanggal]','%d-%m-%Y')";
 }

 if(isset($_GET['kls']) && !empty($_GET['kls'])){
    $where = "WHERE sis.idk = '$_GET[kls]'";
 }

 if((isset($_GET['kls']) && !empty($_GET['kls'])) && (!empty($_GET['tanggal']) && isset($_GET['tanggal']))){
    $where = " WHERE abs.tgl = STR_TO_DATE('$_GET[tanggal]','%d-%m-%Y') AND sis.idk = '$_GET[kls]'";
 }
 $query.= $where;

// echo $query; exit;

$sql = mysqli_query($conn, $query);
while($data=mysqli_fetch_array($sql)){
	$pdf->SetX(1);
	$pdf->Cell(1.3, 0.8, $no, TRUE, 0, 'C');  // CellCell($w, $h=0, $txt='', $border=0, $ln=0, $align='', $fill=false, $link='')
	$pdf->Cell(2.5, 0.8, $data['nis'], TRUE, 0, 'L');
	$pdf->Cell(5.5, 0.8, $data['nama'], TRUE, 0, 'L');
	$pdf->Cell(2, 0.8, $data['nama_kelas'], TRUE, 0, 'C');
	$pdf->Cell(3, 0.8, $data['tlp'], TRUE, 0, 'C');
	$pdf->Cell(2, 0.8, $data['jam_masuk'], TRUE, 0, 'C');
	$pdf->Cell(2, 0.8, $data['jam_pulang'], TRUE, 1, 'C');
	$no++;
}

$pdf->Output("Data Semester.pdf","I");

?>

