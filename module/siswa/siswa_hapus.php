<?php 
include 'config/conn';
// if($_GET['act']=="hapus"){
mysqli_query($conn,"delete from siswa where ids='$_GET[ids]'");
echo "<script>window.alert('Data Terhapus');
        window.location=('../media.php?module=siswa&kls=semua')</script>";

// }