<!-- Footer -->
<footer class="sticky-footer bg-white">
	<div class="container my-auto">
		<div class="copyright text-center my-auto">
			<span>Didesain untuk dipermasalahkan</span>
			<br><small><?= date('Y') ?></small>
		</div>
	</div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
	<i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
			<div class="modal-footer">
				<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
				<a class="btn btn-primary" href="<?= base_url('auth/logout'); ?>">Logout</a>
			</div>
		</div>
	</div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="<?= base_url('assets/'); ?>vendor/jquery/jquery.min.js"></script>
<script src="<?= base_url('assets/'); ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="<?= base_url('assets/'); ?>vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="<?= base_url('assets/'); ?>js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="<?= base_url('assets/'); ?>vendor/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url('assets/'); ?>vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="<?= base_url('assets/'); ?>js/demo/datatables-demo.js"></script>
<script>
	$(document).ready(function () {
		$('#table1').DataTable();
	});

</script>
<script type="text/javascript">

	// $(document).ready(function () {
	// 	$('#modalEdit').on('shown.bs.modal', function (a) {
	// 		var id = $(a.relatedTarget).data('id');
	// 		$.ajax({
	// 			type: 'GET',
	// 			url: '<?php echo base_url(' / ');?>index.php/masalah/asegedew/' + id,

	// 			dataType: 'json',
	// 			success: function (data) {
	// 				$('#add_namapelaporEdit').val(data['namapelapor']);
	// 				$('#add_masalahEdit').val(data['masalah']);
	// 				$('#idmasalah').val(data['id_masalah']);
	// 			}
	// 		});
	// 	});
	// });
	//Save product
	$('#btn_save').on('click', function () {
		var namapelapor = $_POST["namapelapor"].val();
		var bidang = $_POST['bidang'].val();
		var masalah = $_POST['masalah'].val();
		$.ajax({
			type: "POST",
			url: "<?php echo base_url('masalah/save');?>",
			dataType: "JSON",
			data: {
				namapelapor: namapelapor,
				bidang: bidang,
				masalah: masalah
			},
			success: function (data) {
				$('[name="namapelapor"]').val("");
				$('[name="bidang"]').val("");
				$('[name="masalah"]').val("");
				$('#Modal_Add').modal('hide');
				show_product();
			}
		});
		return false;
  });
  
  

</script>
</body>

</html>
