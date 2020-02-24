<?php 

function is_logged_in()
{
    $ci = get_instance(); //manggil libary CI
    if(!$ci->session->userdata('name')) {
        redirect('auth');
    } else {
        $role_id = $ci->session->userdata('role_id');
        $menu = $ci->uri->segment(1);

        $queryMenu = $ci->db->get_where('user_menu' , ['menu' => $menu])->row_array();
        $menu_id = $queryMenu['id'];

        $queryAccess = $ci->db->get_where('user_access_menu' , ['role_id' => $role_id, 'menu_id' => $menu_id]);

        if($queryAccess->num_rows() < 1){
            redirect('auth/blocked');
        }
    }
}