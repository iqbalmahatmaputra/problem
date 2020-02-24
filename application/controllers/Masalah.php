
<?php
defined('BASEPATH') OR exit('No direct script access allowed');
// @Iqbal Mahatma Putra
// Sertifikasi
// 27 Desember 2019
class Masalah extends CI_Controller {
// FUNGSI YANG SELALU BERJALAN DI AWAL
	//UNTUK MENGAKSES DATABASE
	function __construct(){
		parent::__construct();
				// is_logged_in();

		$this->load->helper('url');
		$this->load->model('masalah_model');
        date_default_timezone_set("Asia/Jakarta");
        $this->load->library('form_validation');

	}
// UNTUK MENAMPILKAN BARANG 
	public function index(){
		$data['masalah'] = $this->masalah_model->getAllMasalah();
		$data['masalahbelum'] = $this->masalah_model->getAllBelum();
		$data['jumlahharini'] = $this->masalah_model->getHariIni();
		$data['jumlahharikemarin'] = $this->masalah_model->getHariKemarin();
		$data['jumlahbulanini'] = $this->masalah_model->getBulanIni();
		$data['jumlahbelum'] = $this->masalah_model->getBelumSelesai();
		$data['jumlahbulanlalu'] = $this->masalah_model->getBulanLalu();
		$data['jumlah'] = $this->masalah_model->getJumlahData(); //MENGAMBIL DATA DARI DATABASE
		$data['user'] = $this->db->get_where('user', ['name' => $this->session->userdata('name')])->row_array();
		$data['title'] = 'Dashboard';
        $this->load->view('templates/sidebar.php', $data);
        $this->load->view('templates/topbar.php', $data);
        $this->load->view('pages/masalah_list.php', $data); //MENAMPILKAN KE HALAMAN PENJUALAN LIST BESERTA DATA YANG TELAH DITANGKAP
        $this->load->view('templates/footer.php');
		
	}
	public function masalah_data(){
		$data = $this->masalah_model->getAllmasalahbelum();
		echo json_encode($data);
		}
	
// FUNGSI YANG DIJALANKAN SAAT USER KLIK TOMBOL ADD
	public function addnew(){
		$this->load->view('addformMasalah.php');
	}
//MEMASUKKAN DATA BARU
	public function insert(){
		$masalah['namapelapor'] = $this->input->post('namapelapor');
		$masalah['bidang'] = $this->input->post('bidang');
        $masalah['masalah'] = $this->input->post('masalah');
        $masalah['tanggalmasuk'] = $this->input->post('tanggalmasuk');
		$masalah['jammasuk'] = $this->input->post('jammasuk');
		$masalah['status'] = $this->input->post('status');
		
		$query = $this->masalah_model->insertmasalah($masalah);
// KALAU PROSES BERHASIL, DIKEMBALIKAN KE FUNGSI INDEX
		if($query){
			header('location:'.base_url().$this->index());
		}

	}
// FUNGSI YANG DIJALANKAN SAAT USER KLIK TOMBOL EDIT
	public function edit($id_masalah){
		$data['masalah'] = $this->masalah_model->getmasalah($id_masalah);
		$this->load->view('editformMasalah', $data);
	}
	public function viewdetail($id_masalah){
		$data['masalah'] = $this->masalah_model->getmasalah($id_masalah);
		$this->load->view('viewdetailMasalah', $data);
	}
	// FUNGSI YANG DIJALANKAN SAAT USER KLIK TOMBOL EDIT
	public function selesai($id_masalah){
		$data['masalah'] = $this->masalah_model->getmasalah($id_masalah);
		$this->load->view('selesaiformMasalah', $data);
	}
	
// MENGUBAH DATA
	public function update(){

		$id_masalah = $this->input->post('id');
		$masalah['namapelapor'] = $this->input->post('namapelapor');
		$masalah['bidang'] = $this->input->post('bidang');
        $masalah['masalah'] = $this->input->post('masalah');
        

		$query = $this->masalah_model->updatemasalah($masalah, $id_masalah);
// KALAU PROSES BERHASIL, DIKEMBALIKAN KE FUNGSI INDEX
		if($query){
			header('location:'.base_url().$this->index());
		}
	}
	// MENGUBAH DATA
	public function selesaikan($id_masalah){
		$masalah['status'] = 'Selesai';
		$masalah['penyelesaian'] = 'Telah diselesaikan sesuai dengan permintaan';
		$masalah['waktuselesai'] = date('Y\-m\-d\ H:i:s A');
        

		$query = $this->masalah_model->updatemasalah($masalah, $id_masalah);
// KALAU PROSES BERHASIL, DIKEMBALIKAN KE FUNGSI INDEX
		if($query){
				redirect('masalah');
		}
	}

	public function test(){
		$this->load->view('pages/test.php');
	}

	public function updatekerja($id_masalah){
	
		$masalah['status'] = 'Sedang Dikerjakan';
		$masalah['waktudikerjakan'] = date('Y\-m\-d\ H:i:s A');
		
		$query = $this->masalah_model->updatemasalah($masalah, $id_masalah);
// KALAU PROSES BERHASIL, DIKEMBALIKAN KE FUNGSI INDEX
		if($query){
			header('location:'.base_url().$this->index());
		}
	}
//MENGHAPUS DATA BERDASARKAN PILIHAN USER
	public function delete($id_masalah){
		$query = $this->masalah_model->deletemasalah($id_masalah);
// KALAU PROSES BERHASIL, DIKEMBALIKAN KE FUNGSI INDEX
		if($query){
			header('location:'.base_url().$this->index());
		}
	}

	
    function save(){
        $data = $this->masalah_model->save_masalah();
		echo json_encode($data);
		redirect('masalah');
    }
 

}


?>