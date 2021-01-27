<?php
$id=$_GET['id'];
$ambil=  mysqli_query($koneksi, "SELECT * FROM tbl_nilai WHERE id ='$id'") or die ("SQL Edit error");
$data= mysqli_fetch_array($ambil);
?>
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Form Update Nilai Siswa</h3>
                </div>
                <div class="panel-body">
                    <!--membuat form untuk tambah data-->
                    <form class="form-horizontal" action="" method="post">
                         <div class="form-group">
                            <label for="nama" class="col-sm-3 control-label">Nama Siswa</label>
                            <div class="col-sm-9">
                                <input type="text" name="nama" value="<?=$data['nama']?>" class="form-control" id="inputEmail3" placeholder="Inputkan Nama Siswa">
                            </div>
                        </div>
                       <div class="form-group">
                            <label for="mapel" class="col-sm-3 control-label">Mata Pelajaran</label>
                            <div class="col-sm-2 col-xs-9">
                                <select name="mapel" class="form-control">
                                    <option value="IPA">IPA</option>
                                    <option value="IPS">IPS</option>
                                    <option value="Matematika">Matematika</option>
                                    <option value="Bahasa Indonesia">Bahasa Indonesia</option>
                                    <option value="Bahasa Inggris">Bahasa Inggris</option>

                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="tugas1" class="col-sm-3 control-label">Tugas 1</label>
                            <div class="col-sm-9">
                                <input type="text" name="tugas1" value="<?=$data['tugas1']?>" class="form-control" id="inputEmail3" placeholder="Inputkan Tugas 1">
                            </div>
                        </div>
                         <div class="form-group">
                            <label for="tugas2" class="col-sm-3 control-label">Tugas 2</label>
                            <div class="col-sm-9">
                                <input type="text" name="tugas2" value="<?=$data['tugas2']?>" class="form-control" id="inputEmail3" placeholder="Inputkan Tugas 2 yang Terlibat">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="tugas3" class="col-sm-3 control-label">Tugas 3</label>
                            <div class="col-sm-9">
                                <input type="text" name="tugas3" value="<?=$data['tugas3']?>" class="form-control" id="inputEmail3" placeholder="Inputkan Tugas 3">
                            </div>
                        </div>

                          <div class="form-group">
                            <label for="semester" class="col-sm-3 control-label">Semester</label>
                            <div class="col-sm-2 col-xs-9">
                                <select name="semester" class="form-control">
                                    <option value="Ganjil">Ganjil</option>
                                    <option value="Genap">Genap</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="tahun" class="col-sm-3 control-label">Tahun </label>
                            <div class="col-sm-9">
                                <input type="text" name="tahun" value="<?=$data['tahun']?>" class="form-control" id="inputPassword3" placeholder="Inputkan Tahun">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-success">
                                    <span class="fa fa-edit"></span> Update Nilai</button>
                            </div>
                        </div>
                    </form>


                </div>
                <div class="panel-footer">
                    <a href="?page=arsip&actions=tampil" class="btn btn-danger btn-sm">
                        Kembali Ke Data Nilai
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
	$mapel=$_POST['mapel'];
    $tugas1=$_POST['tugas1'];
	$tugas2=$_POST['tugas2'];
    $tugas3=$_POST['tugas3'];
    $semester=$_POST['semester'];
	$tahun=$_POST['tahun'];
    //buat sql
    $sql="UPDATE tbl_nilai SET nama='$nama',mapel='$mapel',tugas1='$tugas1',tugas2='$tugas2',tugas3='$tugas3',tahun='$tahun',semester='$semester' WHERE id ='$id'"; 
    $query=  mysqli_query($koneksi, $sql) or die ("SQL Edit MHS Error");
    if ($query){
        echo "<script>window.location.assign('?page=nilai&actions=tampil');</script>";
    }else{
        echo "<script>alert('Edit Data Gagal');<script>";
    }
    }

?>



