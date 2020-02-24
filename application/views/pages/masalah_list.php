<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<!-- <h1 class="h3 mb-2 text-gray-800">Tables</h1> -->
	<div class="row">
		<!-- Earnings (Monthly) Card Example -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-primary shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumlah['hitung']; ?></div>
						</div>
						<div class="col-auto">
							<i class="fas fa-calendar fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Earnings (Monthly) Card Example -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-success shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold text-success text-uppercase mb-1">Hari Ini</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumlahharini; ?></div>
						</div>
						<div class="col-auto">
							<i class="fas fa-calendar fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Earnings (Monthly) Card Example -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-primary shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Bulan Ini</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumlahbulanini; ?></div>
						</div>
						<div class="col-auto">
							<i class="fas fa-calendar fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Earnings (Monthly) Card Example -->
		<div class="col-xl-3 col-md-6 mb-4">
			<div class="card border-left-success shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold text-success text-uppercase mb-1">Belum / Sedang</div>
							<div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumlahbelum; ?></div>
						</div>
						<div class="col-auto">
							<i class="fas fa-fw fa-tachometer-alt fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<div class="row">
				<div class="col-10">
					<h6 class="m-0 font-weight-bold text-primary p-2">Masih dalam Proses</h6>
				</div>
				<div class="col">
					<a href="javascript:void(0);" data-toggle="modal" data-target="#Modal_Add"
						class="btn btn-primary btn-icon-split">
						<span class="icon text-white-50">
							<i class="fas fa-flag"></i>
						</span>
						<span class="text">Tambah</span>
					</a>
				</div>
			</div>
		</div>

		<div class="card-body">

			<div class="table-responsive">
				<table class="table table-hover text-center" id="table1" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>Tanggal Lapor</th>
							<th>Nama Pelapor</th>
							<th>Bidang</th>
							<th>Masalah</th>
							<th>Status</th>
							<th>Aksi</th>
							<th>Perintah Kerja</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>Tanggal Lapor</th>
							<th>Nama Pelapor</th>
							<th>Bidang</th>
							<th>Masalah</th>
							<th>Status</th>
							<th>Aksi</th>
							<th>Perintah Kerja</th>
						</tr>
					</tfoot>
					<tbody>
						<?php
                    foreach($masalahbelum as $masalahbelum){ //menampilkan data dari penjualan
                        ?>
						<tr>
							<td><?php echo $masalahbelum->tanggalmasuk; ?></td>
							<td><?php echo $masalahbelum->namapelapor; ?></td>
							<td><?php echo $masalahbelum->bidang; ?></td>
							<td><?php echo $masalahbelum->masalah; ?></td>

							<!-- <td><?php echo $masalah->jammasuk; ?></td> -->
							<?php if($masalahbelum->status=='Sedang Dikerjakan'){ ?>
							<td><button class="btn btn-warning"><?php echo $masalahbelum->status; ?></span></td>
							<?php } else if($masalahbelum->status=='Belum') {?>
							<td><button class="btn btn-danger"><?php echo $masalahbelum->status; ?></span></td>
							<?php } else { ?>
							<td><button class="btn btn-success"><?php echo $masalahbelum->status; ?></span></td>
							<?php } ?>
							<td>
								<div class="btn-group-vertical"><a class="btn btn-success text-white" data-toggle="modal"
										data-target="#modalEdit" data-id="<?php echo $masalahbelum->id_masalah; ?>"><span
											class="glyphicon glyphicon-edit"></span> Edit</a>

									<a href="<?php echo base_url(); ?>index.php/masalah/viewdetail/<?php echo $masalahbelum->id_masalah; ?>"
										class="btn btn-danger"><span class="glyphicon glyphicon-search"></span>Detail</a></div>
							</td>



							<td>
								<?php if($masalahbelum->status=='Sedang Dikerjakan'){ ?>
								<a href="<?php echo base_url(); ?>index.php/masalah/selesaikan/<?php echo $masalahbelum->id_masalah; ?>"
									class="btn btn-warning"><span class="glyphicon glyphicon-shopping-cart"></span>Selesaikan</a></td>
							<?php } else if($masalahbelum->status=="Belum") { ?>

							<a href="<?php echo base_url(); ?>index.php/masalah/selesaikan/<?php echo $masalahbelum->id_masalah; ?>"
								class="btn btn-warning"><span class="glyphicon glyphicon-shopping-cart"></span>Selesaikan</a></td>
							<!-- <a  href = "<?php echo base_url(); ?>index.php/masalah/updatekerja/<?php echo $masalah->id_masalah; ?>" class = "btn btn-danger"><span class  = "glyphicon glyphicon-pencil"></span>Kerjakan</a></td> -->
							<?php } else { ?>
							<a readonly class="btn btn-info"><span class="glyphicon glyphicon-ok"></span>Aman</a></td>

							<?php } ?>
						</tr>
						<?php
                }
                ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<div class="row">
				<div class="col-10">
					<h6 class="m-0 font-weight-bold text-primary p-2">Sudah Aman</h6>
				</div>
				<div class="col">
					<a href="<?php echo base_url(); ?>index.php/masalah/addnew" class="btn btn-primary btn-icon-split">
						<span class="icon text-white-50">
							<i class="fas fa-flag"></i>
						</span>
						<span class="text">Tambah</span>
					</a>
				</div>
			</div>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-hover text-center" id="dataTable" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>Tanggal Lapor</th>
							<th>Nama Pelapor</th>
							<th>Bidang</th>
							<th>Masalah</th>
							<th>Status</th>
							<th>Aksi</th>
							<th>Perintah Kerja</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>Tanggal Lapor</th>
							<th>Nama Pelapor</th>
							<th>Bidang</th>
							<th>Masalah</th>
							<th>Status</th>
							<th>Aksi</th>
							<th>Perintah Kerja</th>
						</tr>
					</tfoot>
					<tbody>
						<?php
                    foreach($masalah as $masalah){ //menampilkan data dari penjualan
                        ?>
						<tr>
							<td><?php echo $masalah->tanggalmasuk; ?></td>
							<td><?php echo $masalah->namapelapor; ?></td>
							<td><?php echo $masalah->bidang; ?></td>
							<td><?php echo $masalah->masalah; ?></td>

							<!-- <td><?php echo $masalah->jammasuk; ?></td> -->
							<?php if($masalah->status=='Sedang Dikerjakan'){ ?>
							<td><button class="btn btn-warning"><?php echo $masalah->status; ?></span></td>
							<?php } else if($masalah->status=='Belum') {?>
							<td><button class="btn btn-danger"><?php echo $masalah->status; ?></span></td>
							<?php } else { ?>
							<td><button class="btn btn-success"><?php echo $masalah->status; ?></span></td>
							<?php } ?>
							<td>
								<div class="btn-group-vertical"><a class="btn btn-success text-white" data-toggle="modal"
										data-target="#modalEdit" data-id="<?php echo $masalah->id_masalah; ?>"><span
											class="glyphicon glyphicon-edit"></span> Edit</a>

									<a href="<?php echo base_url(); ?>index.php/masalah/viewdetail/<?php echo $masalah->id_masalah; ?>"
										class="btn btn-danger text-white"><span class="glyphicon glyphicon-search"></span>Detail</a></div>
							</td>



							<td>
								<?php if($masalah->status=='Sedang Dikerjakan'){ ?>
								<a href="<?php echo base_url(); ?>index.php/masalah/selesai/<?php echo $masalah->id_masalah; ?>"
									class="btn btn-warning text-white"><span class="con glyphicon-shopping-cart"></span>Selesaikan</a>
							</td>
							<?php } else if($masalah->status=="Belum") { ?>

							<a href="<?php echo base_url(); ?>index.php/masalah/selesai/<?php echo $masalah->id_masalah; ?>"
								class="btn btn-warning text-white"><span class="glyphicon glyphicon-shopping-cart"></span>Selesaikan</a>
							</td>
							<!-- <a  href = "<?php echo base_url(); ?>index.php/masalah/updatekerja/<?php echo $masalah->id_masalah; ?>" class = "btn btn-danger"><span class  = "glyphicon glyphicon-pencil"></span>Kerjakan</a></td> -->
							<?php } else { ?>
							<a readonly class="btn btn-info text-white"><span class="glyphicon glyphicon-ok"></span>Aman</a></td>

							<?php } ?>
						</tr>
						<?php
                }
                ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- MODAL ADD -->
	<form method="POST" action="<?= base_url('masalah/save'); ?>">
		<div class="modal fade" id="Modal_Add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
			aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Tambah Masalah Baru</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group row">
							<label class="col-md-2 col-form-label">Nama Pelapor</label>
							<div class="col-md-10">
								<input type="text" name="namapelapor" id="namapelapor" class="form-control" placeholder="Masukkan Nama" autofocus>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-md-2 col-form-label">Bidang</label>
							<div class="col-md-10">

								<select class="form-control show-tick" name="bidang">
									<option value="">Please select</option>
									<option value="A">A</option>
									<option value="B">B</option>
									<option value="C">C</option>
									<option value="Front Office">Front Office</option>
									<option value="Back Office">Back Office</option>
									<option value="Pengaduan">Pengaduan</option>
									<option value="PKPL">PKPL</option>
								</select> </div>
						</div>
						<div class="form-group row">
							<label class="col-md-2 col-form-label">Masalah</label>
							<div class="col-md-10">
								<textarea rows="4" class="form-control no-resize" placeholder="Please type what you want..."
									name="masalah" required></textarea> 
							</div>
						</div>


					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit"  class="btn btn-primary">Simpan</button>
            <!-- <input type="submit"> -->
					</div>
				</div>
			</div>
		</div>
	</form>
	<!--END MODAL ADD-->
	<!-- Modal Edit -->
	<div class="modal fade" id="modalEdit">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">updatekerja Masalah</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<form method="POST" action="<?php echo base_url(); ?>index.php/masalah/update/">
						<input type="hidden" name="id" id="idmasalah">
						<label>Nama Pelapor</label>
						<div class="form-group">
							<div class="form-line">
								<input type="text" name="namapelapor" id="add_namapelaporEdit" class="form-control"
									placeholder="Masukkan Nama Pelapor" required>
							</div>
						</div>

						<label>Bidang</label>
						<div class="form-group">
							<select class="form-control show-tick" name="bidang" id="add_bidangEdit">
								<option value="">Please select</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="C">C</option>
								<option value="Front Office">Front Office</option>
								<option value="Back Office">Back Office</option>
								<option value="Pengaduan">Pengaduan</option>
								<option value="PKPL">PKPL</option>
							</select>
						</div>
						<label>Masalah</label>
						<!-- text Area -->
						<div class="form-group">
							<div class="form-line">
								<textarea rows="4" class="form-control no-resize" placeholder="Please type what you want..."
									name="masalah" id="add_masalahEdit" required></textarea>
							</div>
						</div>

						<?php date_default_timezone_set("Asia/Jakarta"); ?>
						<input type="hidden" name="tanggalmasuk" value="<?php echo date('Y\-m\-d\ H:i:s A'); ?>">
						<input type="hidden" name="jammasuk" value="<?php echo date('H:i:sa'); ?>">
						<input type="hidden" class="form-control" name="status" value="Belum">
						<div class="modal-footer">
							<button class="btn btn-primary">Add</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>




</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->


