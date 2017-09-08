<?php include 'config/conn.php' ?>
<link rel="stylesheet" href="css/beranda.css">
<div class="row" style="margin:10px" >
    <div id="">
        <ol class="breadcrumb">
            <li class="link_breadcrumb" href="#">Rekap Absensi > Absensi Persiswa (User Wali kelas) </li>
        </ol>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
            </div>
            <div class="panel-body">
                <!-- <div class="row"> -->
                    <!-- <form class="from-horizontal" method="post"  action="rkp_absen"> -->
                    <form method="post" action="?module=absensi_rekap_persiswa" class="form-horizontal" role="form">
                            <!-- <input type="hidden" name="module" value="siswa"> -->
                            <div class="form-group">
                                <label for="nis" class="col-sm-2" style="margin-left: 10px">NIS</label>
                                <div class="col-sm-4">
                                    <input class="form-control" id="nis" type="text" name="nis" required>
                                    <label id="label_warning" style="float:left;"></label>
                                </div>
                            </div>
                            <div class="form-group">                                
                                <label class="col-sm-2" style="margin-left: 10px">Nama Siswa</label>
                                <div class="col-sm-4">
                                    <input class="form-control" id='nama_siswa' type="text" name="nama" readonly>
                                </div>
                            </div>
                            <div class="form-group">                                
                                <label class="col-sm-2" style="margin-left: 10px">Kelas</label>
                                <div class="col-sm-4">
                                    <input class="form-control" id='kelas_siswa' type="text" name="kelas" readonly>
                                </div>
                            </div>

                                
                        <!-- /.col-lg-6 (nested) -->
                <!-- </div> -->
                <!-- /.row (nested) -->

                <!-- <div id="">
                    <ol class="breadcrumb">
                        <li>Pilih Tahun</li>
                    </ol>
                </div>
                <div class="form-group" style="width:500px">
                    <label class="col-sm-2" style="margin-left: 10px">Tahun</label>
                    <div class="col-sm-4">                        
                        <select class="form-control">
                            <option></option>                        
                        </select>
                    </div>
                </div>
                </br> -->
                <div class="">
                    <button type="submit" class="btn btn-default">Tampilkan Data</button>
                </div>
                    </form>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<script type="application/javascript">
    $('#nis').on('blur',function(){
        $.ajax({
            url: '././module/simpan.php?act=get_siswa_bynis',
            method:'post',
            data : {
                nis: this.value
            },
            success: function(res){
                $('#nama_siswa').val();
                $('#kelas_siswa').val();
                $('#label_warning').html('');
                var respon = JSON.parse(res)
                if (respon == false) {
                    $('#label_warning').html('Siswa tidak ditemukan');
                }else{
                    $('#nama_siswa').val(respon.nama);
                    $('#kelas_siswa').val(respon.nama_kelas);
                }
            }
        })
    })
</script>