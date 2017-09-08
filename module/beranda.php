<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px">
	<div id="">
		<ol class="breadcrumb">
			<li class="link_breadcrumb" href="#">Beranda </li>
		</ol>
		    <button id="kirimSms" class="btn btn-info" style="margin-right: 10px"><span class="glyphicon glyphicon-print"></span> Kirim SMS</button>
		
		<br>
		<h4>Daftar Absensi Siswa hari ini</h4>
	</div>	
	<div >
	
	<div class="panel panel-default">
		<span style="float: right; margin-right: 20px; margin-bottom: 10px">Keterangan : H = Hadir, S = Sakit A = Alpha, I = Ijin, T = Terlambat.</span>	
		<div class="panel-body">		
		
			<table table id="table_data" class="table table-striped table-bordered table-hover" width="100%">
		        <thead>
		            <tr>
		                <th><center>No</center></th>
		                <th><center>NIS</center></th>
		                <th><center>Nama</center></th>
		                <th><center>Kelas</center></th>
		                <th><center>Keterangan</center></th>
		                <!-- <th>Jam ke</th> -->
		            </tr>
		        </thead>
		        <?php 
		        include('config/conn.php');

		        if (isset($_SESSION['id_kelas'])) {
		        	$query = "SELECT siswa.*,kelas.nama_kelas, absen.* from absen
							JOIN siswa on siswa.nis = absen.nis
							JOIN kelas on kelas.idk = siswa.idk
							WHERE absen.tgl = CURDATE() AND kelas.idk = '11' ;";
		        }else{
					$query = "SELECT siswa.*,kelas.nama_kelas, absen.* from absen
							JOIN siswa on siswa.nis = absen.nis
							JOIN kelas on kelas.idk = siswa.idk
							WHERE absen.tgl = CURDATE();
							-- WHERE absen.jam_masuk > '00:00:00'
							-- AND absen.tgl LIKE '%'" ;
		        }

		        $exec_query = mysqli_query($conn, $query);

		        // echo $query;
				?>
		        <tbody>
		        <?php 
			        $no = 1;
		        	while($result = mysqli_fetch_array($exec_query)){
		        ?>
		        	<tr>
		        		<td><center><?php echo $no; ?></center></td>	
		        		<td><?php echo $result['nis']; ?></td>	
		        		<td><?php echo $result['nama']; ?></td>
		        		<td><?php echo $result['nama_kelas']; ?></td>
		        		<td><?php echo $result['ket']; ?></td>
		        	</tr>	
		        <?php
		        $no++;		
		        	}
		         ?>
		        </tbody>
			</table>
		</div>
	</div>
	</div>
</div>
<script type="text/javascript">
	$('#kirimSms').click(function(){
		console.log('Klik kirim');
		$.ajax({
				url : 'module/kirim_sms.php',
				success : function(a,b){
					console.log(a);
					if(a == 'success'){
						alert('SMS sudah dikirim');
					}
				}}
			)
	})
</script>