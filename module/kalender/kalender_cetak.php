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
// $pdf->MultiCell(19.5,0.5,'Telpon : 0038XXXXXXX',0,'L');    
$pdf->SetFont('Arial','B',10);

//Bikin garis. Jika ingin merubah lebar garis, set terlebih dahulu lebarnya baru tampilkan garis.
$pdf->Line(1,3.1,20,3.1);
$pdf->SetLineWidth(0.1);      
$pdf->Line(1,3.2,20,3.2);   

$pdf->ln(1);

$pdf->SetFont('Arial','B',14);

$pdf->SetLineWidth(0.03); // Set lebar garis tabel
$pdf->Cell(21,0.7,"Data Master Kalender",0,1,'C');

$pdf->ln(0.5); // Bikin baris kosong

$pdf->SetX(2);
$pdf->SetFont('Arial','B',10);
$pdf->Cell(1.5, 0.8, 'No.', TRUE, 0, 'C');  // CellCell($w, $h=0, $txt='', $border=0, $ln=0, $align='', $fill=false, $link='')
$pdf->Cell(6, 0.8, 'Tanggal', TRUE, 0, 'C');
$pdf->Cell(3, 0.8, 'Kategori', TRUE, 0, 'C');
$pdf->Cell(6, 0.8, 'Keterangan', TRUE, 1, 'C');

// Proses Cetak data
$pdf->SetFont('Arial','',9);
$no=1;
$query=mysqli_query($conn ,"SELECT * FROM kalender");
while($data=mysqli_fetch_array($query)){
	$pdf->SetX(2);
	$pdf->Cell(1.5, 0.8, $no, TRUE, 0, 'C');  // CellCell($w, $h=0, $txt='', $border=0, $ln=0, $align='', $fill=false, $link='')
	$pdf->Cell(6, 0.8, $data['tanggal'], TRUE, 0, 'C');
	$pdf->Cell(3, 0.8, $data['kategori'], TRUE, 0, 'C');
	$pdf->Cell(6, 0.8, $data['keterangan'], TRUE, 1, 'C');
	$no++;
}

$pdf->Output("Data Master Kalender.pdf","I");

?>

