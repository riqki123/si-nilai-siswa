<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Form Tambah Data Siswa</h3>
                </div>
                <div class="panel-body">
                    <!--membuat form untuk tambah data-->
                    <form class="form-horizontal" action="" method="post">
                       
						 <div class="form-group">
                            <label for="nama" class="col-sm-3 control-label">Nama Siswa</label>
                            <div class="col-sm-9">
                                <input type="text" name="nama" class="form-control" id="inputEmail3" placeholder="Inputkan Nama Siswa" required>
                            </div>
                        </div>
                         <div class="form-group">
                            <label for="nisn" class="col-sm-3 control-label">NISN</label>
                            <div class="col-sm-2 col-xs-9">
                            
                            </div>
                        </div>
						 <div class="form-group">
                            <label for="tanggal" class="col-sm-3 control-label">Tanggal</label>
                            <div class="col-sm-9">
                                <input type="text" name="tanggal" class="form-control" id="inputEmail3" placeholder="Inputkan Tanggal " required>
                            </div>
                        </div>
						 <div class="form-group">
                            <label for="tempat" class="col-sm-3 control-label">Tempat</label>
                            <div class="col-sm-9">
                                <input type="text" name="tempat" class="form-control" id="inputEmail3" placeholder="Inputkan Tempat" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="ortu" class="col-sm-3 control-label">Orang Tua</label>
                            <div class="col-sm-9">
                                <input type="text" name="ortu" class="form-control" id="inputEmail3" placeholder="Inputkan Nama Orang Tua" required>
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="alamat" class="col-sm-3 control-label">Alamat</label>
                            <div class="col-sm-2 col-xs-9">
                                
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="kelas" class="col-sm-3 control-label">Kelas</label>
                            <div class="col-sm-9">
                                <input type="text" name="kelas" class="form-control"  placeholder="Inputkan Kelas" required>
                            </div>
                            <div class="form-group">
                            <label for="jkl" class="col-sm-3 control-label">Jenis Kelamin</label>
                            <div class="col-sm-2 col-xs-9">
                                
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-success">
                                    <span class="fa fa-save"></span> Simpan</button>
                            </div>
                        </div>
                    </form>


                </div>
                <div class="panel-footer">
                    <a href="?page=nilai&actions=tampil" class="btn btn-danger btn-sm">
                        Kembali 
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>

<?php
if($_POST){
    //Ambil data dari form
  $nama=$_POST['nama'];
	$nisn=$_POST['nisn'];
	$tanggal=$_POST['tanggal'];
  $tempat=$_POST['tempat'];
	$ortu=$_POST['ortu'];
  $alamat=$_POST['alamat'];
  $kelas=$_POST['kelas'];
  $jkl=$_POST['jkl'];
	
    //buat sql
    $sql="INSERT INTO tbl_nilai VALUES ('','$nama','$nisn','$tanggal','$ortu','$alamat','$kelas','$jkl')";
    $query=  mysqli_query($koneksi, $sql) or die ("SQL Simpan Arsip Error");
    if ($query){
        echo "<script>window.location.assign('?page=nilai&actions=tampil');</script>";
    }else{
        echo "<script>alert('Simpan Data Gagal');<script>";
    }
    }

?>
