<div class="row">
    <div class="col-lg-12">
		<h3 class="page-header"><strong>Data Wali Kelas</strong></h3>
    </div>
    <!-- /.col-lg-12 -->
</div>
            <!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Pilih Kelas
            </div>
            <div class="panel-body">
                <div class="row">
                        <form method="get" role="form" action="././media.php?module=wali__kelas">
                            <div class="col-lg-6">
                                <input type="hidden" name="module" value="wali__kelas">

                                <div class="form-group">
                                    <label>Kelas</label>
                                    <select class="form-control" name="kls">
                                    <?php 
                                    include 'config/conn.php';
                                    if($_SESSION['level']=="wali__kelas"){
                                    $sql=mysqli_query($conn,"select * from kelas where idk='$_SESSION[idk]'");
                                    }else{
                                    $sql=mysqli_query($conn,"select * from kelas");	
                                    ?>

                                    <option>semua</option>

                                    <?php
                                    }	while($rs=mysqli_fetch_array($sql)){
                                    $sqla=mysqli_query($conn,"select * from sekolah where id='$rs[id]'");
                                    $rsa=mysqli_fetch_array($sqla);

                                    echo "<option value='$rs[idk]'>$rsa[nama] | $rs[nama]</option>";	
                                    }
?>
                                    </select>
                                </div>
                            <button type="submit" class="btn btn-default">Submit Button</button>

                            </div>
                        <!-- /.col-lg-6 (nested) -->
                        </form>

                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->