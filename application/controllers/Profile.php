<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

	function __construct(){
		parent::__construct();
				// is_logged_in();

		$this->load->helper('url');
		$this->load->model('masalah_model');
        date_default_timezone_set("Asia/Jakarta");
        $this->load->library('form_validation');

	}
	public function index()
	{
		$data['user'] = $this->db->get_where('user', ['name' => $this->session->userdata('name')])->row_array();
		$data['title'] = 'My Profile';
        $this->load->view('templates/sidebar.php', $data);
        $this->load->view('templates/topbar.php', $data);
        $this->load->view('pages/profile.php', $data); //MENAMPILKAN KE HALAMAN profiel LIST BESERTA DATA YANG TELAH DITANGKAP
        $this->load->view('templates/footer.php');
	}
}
