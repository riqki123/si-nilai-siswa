<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Informasi Detail Nilai</h3>
                </div>
                <div class="panel-body">
                    <!--Menampilkan data detail arsip-->
                    <?php
                    $sql = "SELECT *FROM tbl_nilai WHERE id ='" . $_GET ['id'] . "'";
                    //proses query ke database
                    $query = mysqli_query($koneksi, $sql) or die("SQL Detail error");
                    //Merubaha data hasil query kedalam bentuk array
                    $data = mysqli_fetch_array($query);
                    ?>   

                    <!--dalam tabel--->
                    <table class="table table-bordered table-striped table-hover"> 
                        <tr>
                            <td>Nama Siswa</td> <td><?= $data['nama'] ?></td>
                        </tr>
                        <tr>
                            <td>Mata Pelajaran</td> <td><?= $data['mapel'] ?></td>
                        </tr>
						<tr>
                            <td>Nilai Tugas 1</td> <td><?= $data['tugas1'] ?></td>
                        </tr>
                        <tr>
                            <td>Nilai Tugas 2</td> <td><?= $data['tugas2'] ?></td>
                        </tr>
                        <tr>
                           <td>Nilai Tugas 3</td> <td><?= $data['tugas3'] ?></td>
                        </tr>
						<tr>
                            <td>Semester</td> <td><?= $data['semester'] ?></td>
                        </tr>
                        <tr>
                            <td>Tahun Ajaran</td> <td><?= $data['tahun'] ?></td>
                        </tr>
                    </table>
				
                </div> <!--end panel-body-->
                <!--panel footer--> 
                <div class="panel-footer">
                    <a href="?page=nilai&actions=tampil" class="btn btn-success btn-sm">
                        Kembali ke Data Nilai</a>

                </div>
                <!--end panel footer-->
            </div>

        </div>
    </div>
</div>

