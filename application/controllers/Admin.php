<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	function __construct(){
		parent::__construct();
		// cek login
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
        $this->load->view('pages/admin.php', $data); //MENAMPILKAN KE HALAMAN profiel LIST BESERTA DATA YANG TELAH DITANGKAP
        $this->load->view('templates/footer.php');
	}
	public function role()
		{
			$data['user'] = $this->db->get_where('user', ['name' => $this->session->userdata('name')])->row_array();
		$data['title'] = 'Role';

		$data['role'] = $this->db->get('user_role')->result_array();

		 $this->form_validation->set_rules('role', 'Role', 'required');
        if($this->form_validation->run() == false){
            $this->load->view('templates/sidebar.php', $data);
            $this->load->view('templates/topbar.php', $data);
            $this->load->view('admin/role', $data); //MENAMPILKAN KE HALAMAN profiel LIST BESERTA DATA YANG TELAH DITANGKAP
            $this->load->view('templates/footer.php');
        } else {
            $this->db->insert('user_role', ['role' =>$this->input->post('role')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Role Baru berhasil dibuat!</div> ');
            redirect('admin/role');
		}}
		public function roleAccess($role_id)
		{
			$data['user'] = $this->db->get_where('user', ['name' => $this->session->userdata('name')])->row_array();
		$data['title'] = 'Role';

		$data['role'] = $this->db->get('user_role',['role_id' => $role_id])->result_array();

		$data['menu'] = $this->db->get('user_menu')->result_array();

		 $this->form_validation->set_rules('role', 'Role', 'required');
        if($this->form_validation->run() == false){
            $this->load->view('templates/sidebar.php', $data);
            $this->load->view('templates/topbar.php', $data);
            $this->load->view('admin/role_access', $data); //MENAMPILKAN KE HALAMAN profiel LIST BESERTA DATA YANG TELAH DITANGKAP
            $this->load->view('templates/footer.php');
        } else {
            $this->db->insert('user_role', ['role' =>$this->input->post('role')]);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Role Baru berhasil dibuat!</div> ');
            redirect('admin/role');
        }
       
		}
}
