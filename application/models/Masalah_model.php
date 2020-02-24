<?php
// @Iqbal Mahatma Putra
// Sertifikasi
// 27 Desember 2019
	class Masalah_model extends CI_Model {
		function __construct(){ // fungsi yang dijalankan di awal pada saat penjualan_model diakses
			parent::__construct();
			$this->load->database();
			date_default_timezone_set("Asia/Jakarta");

		}
		// INHIRITANCE
// UNTUK MENAMPILKAN DATA PENJUALAN
		public function getAllmasalah(){
			$this->db->from('masalah');
			// $this->db->order_by("tanggalmasuk", "desc");
			$this->db->where('status = "Selesai"');
			$query = $this->db->get();
			return $query->result(); 
		}
		public function getAllbelum(){
			$this->db->from('masalah');
			$this->db->where('status = "Belum" or status = "Sedang Dikerjakan"');
			$query = $this->db->get();
			return $query->result(); 
		}
		public function getJumlahData(){
			// $this->db->from('masalah');
			$jumlah = $this->db->query("select count(*) as hitung from masalah");
			return $jumlah->row_array();
		}
// MEMASUKKAN DATA BARU
		public function insertmasalah($masalah){
			return $this->db->insert('masalah', $masalah);
		}
// UNTUK MENGAMBIL ID PENJUALAN
		public function getmasalah($id_masalah){
			$query = $this->db->get_where('masalah',array('id_masalah'=>$id_masalah));
			return $query->row_array();
		}
		public function getBelumSelesai(){
			$jumlahbelum = $this->db->query("select * from masalah where status = 'Belum' or status = 'Sedang Dikerjakan'");
			return $jumlahbelum->num_rows();
		}
		public function getHariIni(){
			$jumlahharini = $this->db->query("select * from masalah where tanggalmasuk >= CURDATE()");
			return $jumlahharini->num_rows();
		}
		public function getHariKemarin(){
			$jumlahharikemarin = $this->db->query("select * from masalah where tanggalmasuk = DATE(NOW() - INTERVAL 1 DAY);");
			return $jumlahharikemarin->num_rows();
		}
		public function getBulanIni(){
			$jumlahbulanini = $this->db->query("select * from masalah where MONTH(tanggalmasuk) = MONTH(CURRENT_DATE()) and YEAR(tanggalmasuk) = YEAR(CURRENT_DATE())");
			return $jumlahbulanini->num_rows();
		}
		public function getBulanLalu(){
			$jumlahbulanlalu = $this->db->query("select * from masalah where MONTH(tanggalmasuk) = MONTH(NOW() - INTERVAL 1 MONTH) and YEAR(tanggalmasuk) = YEAR(CURRENT_DATE())");
			return $jumlahbulanlalu->num_rows();
		}
// MENGUBAH DATA PENJUALAN BERDASARKAN ID YANG DITANGKAP
		public function updatemasalah($masalah, $id_masalah){
			$this->db->where('masalah.id_masalah', $id_masalah);
			return $this->db->update('masalah', $masalah);
		}
// MENGHAPUS DATA PENJUALAN BERDASARKAN ID YANG TELAH DITANGKAP
		public function deletemasalah($id_masalah){
			$this->db->where('masalah.id_masalah', $id_masalah);
			return $this->db->delete('masalah');
		}

    function save_masalah(){
        $data = array(
                'namapelapor'  => $this->input->post('namapelapor'), 
                'bidang'  => $this->input->post('bidang'), 
                'masalah' => $this->input->post('masalah'), 
                'tanggalmasuk' => date('Y\-m\-d\ H:i:s A'), 
                'jammasuk' => date('H:i:s A'), 
                'status' => 'Belum', 
            );
        $result=$this->db->insert('masalah',$data);
        return $result;
    }
	}
?>