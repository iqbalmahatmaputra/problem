<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-4 text-gray-800"><?= $title  ?></h1>


	<div class="row">
		<div class="col-lg-6">
    <?= form_error('role', '<div class="alert alert-danger" role="alert">','</div>'); ?>
    <?= $this->session->flashdata('message'); ?>
			<a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newRoleModal">Tambah Menu</a>
			<table class="table table-hover text-center">
				<thead>
					<tr>
						<th scope="col">No</th>
						<th scope="col">Menu</th>
						<th scope="col">Akses</th>
					</tr>
				</thead>
				<tbody>
					<?php $i = 1 ?>
					<?php foreach ($menu as $m) : ?>
					<tr>
						<th scope="row"><?= $i; ?></th>
						<td><?= $m['menu']; ?></td> 
                        <!-- ssss -->
						<td>
							<a href="<?= base_url('admin/roleaccess/'). $r['id']; ?>" class="badge badge-pill badge-primary">Akses</a>
							<a href="" class="badge badge-pill badge-success">Ubah</a>
							<a href="" class="badge badge-pill badge-danger">Hapus</a>
						</td>
					</tr>
					<?php $i++; ?>
					<?php endforeach; ?>
				</tbody>
			</table>
		</div>
	</div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Modal -->

<!-- Modal -->
<div class="modal fade" id="newRoleModal" tabindex="-1" role="dialog" aria-labelledby="newRoleModalLabel"
	aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="newRoleModalLabel">Tambah Menu baru</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
            <form action="<?= base_url('admin/role'); ?>" method="POST">
			<div class="modal-body">
				<div class="form-group">
    <input type="text" class="form-control" id="role" name="role" placeholder="Nama Role">
  </div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Tambah</button>
			</div>
		</form>
        </div>
	</div>
</div>
