<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {
    public function __construct(){
parent::__construct();
$this->load->library('form_validation');
date_default_timezone_set("Asia/Jakarta");
    }
    public function index(){
        $this->form_validation->set_rules('name', 'Name', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');
        if($this->form_validation->run() == false){
        $data['title'] = 'Login Page';
        $this->load->view('templates/auth_header', $data);
        $this->load->view('auth/login');
        $this->load->view('templates/auth_footer');
    }
else{
    // validasi sukses
    // _ itu private klo di depannya
    $this->_login();
}
}

private function _login(){
    $name = $this->input->post('name');
    $password = $this->input->post('password');

    $user = $this->db->get_where('user', ['name' => $name])->row_array();
        // user ada

    if($user){
        // user aktif
        if($user['is_active'] == 1){
            // cek password
            if(password_verify($password, $user['password'])){
                $data = [
                    'name' => $user['name'],
                    'role_id' => $user['role_id']
                ];
                $this->session->set_userdata($data);
                // redirect('masalah'); klo mau nge gas
                if ($user['role_id'] == 1){
                    redirect('admin');
                }
                else {
                    redirect('masalah');
                }
            } else{
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Password Salah!</div> ');
        redirect('auth');
            }
        } else{
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Akun Belum Pernah Terdaftar!</div> ');
        redirect('auth');
        }

    } else {
        // error
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Akun Belum Pernah Terdaftar!</div> ');
        redirect('auth');

    }
}
public function register()
{
   
$this->form_validation->set_rules('name', 'Name', 'required|trim');
$this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', [
    'is_unique' => 'Email ini sudah pernah daftar'
]);
$this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[3]|matches[password2]',['matches' => 'Password Kok Beda!','min_length' => 'Password pendek kali!']);
$this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');
    

        if( $this->form_validation->run() == false) {
        $data['title'] = 'Registrasi Akun';
        $this->load->view('templates/auth_header', $data);
        $this->load->view('auth/registration');
        $this->load->view('templates/auth_footer');
        } else {
            $data = [
                'name' => htmlspecialchars($this->input->post('name', true)),
                'email' => htmlspecialchars($this->input->post('email', true)),
                'image' =>'default.jpg',
                'password' => password_hash($this->input->post('password1'),PASSWORD_DEFAULT),
                'role_id' => 2,
                'is_active' => 1,
                'date_created' => date('Y\-m\-d\ H:i:s A')
            ];
        $this->db->insert('user', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Selamat Gan! Akun sudah berhasil dibuat!</div> ');
        redirect('auth');
        }
}
    public function logout(){
        $this->session->unset_userdata('name');
        $this->session->unset_userdata('password1');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Selamat Gan! Akun sudah berhasil Logout!</div> ');
        redirect('auth');
    }

    public function blocked(){
         $data['title'] = 'Blocked!';

        $this->load->view('auth/blocked', $data);


    }
}

// letak di controller masalah untuk ambil data session
// di funciotn index 
// $data['user'] = $this->db->get_where('user', ['name' => 
// $this->session->userdata('name')])->row_array();
// echo 'Selama datang' .$data['user']['name'];