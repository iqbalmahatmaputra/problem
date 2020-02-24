-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 01:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `masalah`
--

CREATE TABLE `masalah` (
  `id_masalah` int(11) NOT NULL,
  `namapelapor` varchar(50) NOT NULL,
  `bidang` varchar(50) NOT NULL,
  `masalah` text NOT NULL,
  `tanggalmasuk` timestamp NULL DEFAULT NULL,
  `jammasuk` time NOT NULL,
  `status` varchar(50) NOT NULL,
  `waktudikerjakan` timestamp NULL DEFAULT NULL,
  `penyelesaian` text NOT NULL,
  `waktuselesai` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masalah`
--

INSERT INTO `masalah` (`id_masalah`, `namapelapor`, `bidang`, `masalah`, `tanggalmasuk`, `jammasuk`, `status`, `waktudikerjakan`, `penyelesaian`, `waktuselesai`) VALUES
(13, 'Raymond', 'Datacenter', 'Tidak dapat melakukan upload file permohonan', '2019-02-19 17:00:00', '10:38:39', 'Selesai', '2019-03-04 03:40:27', 'Sudah dilakukan perbaikan', '2019-03-03 21:40:27'),
(14, 'Unknown', 'Dan Lainnya', 'Nama Perusahaan Marzuki dan Rahma Sindo bermasalah', '2019-02-19 17:00:00', '10:41:08', 'Selesai', '2019-03-04 03:43:07', 'Sudah dilakukan perbaikan', '2019-03-03 21:43:07'),
(15, 'Pak Iga', 'C', 'Data pada tanggal 20 Februari hilang dari database simpel', '2019-02-19 17:00:00', '10:43:09', 'Selesai', '2019-03-04 03:44:23', 'sudah dilakukan backup data dan restore data\r\n', '2019-03-03 21:44:23'),
(16, 'Kabid C', 'C', 'Tanggal di halaman Kabid C belum terganti', '2019-02-19 17:00:00', '10:44:25', 'Selesai', '2019-03-04 03:45:31', 'Sudah dilakukan perbaikan\r\n', '2019-03-03 21:45:31'),
(17, 'Petugas BO', 'Back Office', 'input izin, dari teknis belum di Approve', '2019-02-19 17:00:00', '10:45:33', 'Selesai', '2019-03-04 03:46:36', 'Sudah dilakukan perbaikan', '2019-03-03 21:46:36'),
(18, 'Petugas BO', 'Back Office', 'Perubahan kata-kata pada dokumen PDF', '2019-02-19 17:00:00', '10:46:43', 'Selesai', '2019-03-04 03:50:02', 'Sudah dilakukan perbaikan\r\n', '2019-03-03 21:50:02'),
(19, 'Petugas BO', 'Back Office', 'Riset, Tembusan pada surat salah', '2019-02-19 17:00:00', '10:50:15', 'Selesai', '2019-03-04 03:51:18', 'Sudah dilakukan perbaikan', '2019-03-03 21:51:18'),
(20, 'Kabid C', 'C', 'Terusan pada bu Kadis ada kesalahan sistem', '2019-02-01 17:00:00', '10:51:21', 'Selesai', '2019-03-04 03:52:05', 'Sudah dilakukan perbaikan\r\n', '2019-03-03 21:52:05'),
(21, 'Petugas BO Riset', 'A', 'Kampus tidak dapat melakukan upload berkas, di Admin namanya gak ada', '2019-02-19 17:00:00', '10:53:39', 'Selesai', '2019-03-04 07:07:39', 'Sudah dilakukan perbaikan \r\n', '2019-03-04 07:07:39'),
(22, 'Pak Anton', 'Back Office', 'Data dari BO ke KASI tidak terinput.\r\nRumah Sakit umum Petala BUMI tidak di temukan ', '2019-02-21 17:00:00', '10:55:47', 'Selesai', '2019-03-04 03:56:52', 'Sudah dilakukan perbaikan ', '2019-03-03 21:56:52'),
(23, 'Tuty', 'C', 'PT Riau Andalan Pulp & Paper gak ada blok. Data berada di tanggal 20', '2019-02-21 17:00:00', '10:57:10', 'Selesai', '2019-03-04 03:58:29', 'Sudah dilakukan perbaikan ', '2019-03-03 21:58:29'),
(24, 'Iwan', 'C', 'Salah input menggunakan id FO, penghapusan data entri GO atas nama Iwan_c3. Perubahan PT Citra City Pasific (MAL SKA)', '2019-02-21 17:00:00', '10:58:32', 'Selesai', '2019-03-04 04:00:02', 'Sudah dilakukan perbaikan ', '2019-03-03 22:00:02'),
(25, 'Rian', 'C', 'Izin Pra Riset ROTVA BATU BATA Double Save.', '2019-02-21 17:00:00', '11:00:15', 'Selesai', '2019-03-04 04:01:47', 'Penghapusan salah satu data\r\n', '2019-03-03 22:01:47'),
(26, 'Pak Saddat', 'C', 'Perbaikan: NO Pendaftaran 180112001 tgl 12 Januari 2018 (PUPR). Posisi : Status Pengurusan', '2019-03-04 07:10:41', '11:04:51', 'Selesai', '2019-03-04 07:10:41', 'Sudah dilakukan perbaikan', '2019-03-04 07:10:41'),
(27, 'Pak Saddat', 'C', 'Perbaikan pada data Sosial. NOMOR PENDAFTARAN: 180215033, 180131045, 180130042, 180105036, 171122027. Dalam status pengurusan', '2019-03-04 07:10:46', '11:08:22', 'Selesai', '2019-03-04 07:10:46', 'Sudah dilakukan perbaikan', '2019-03-04 07:10:46'),
(28, 'Petugas BO', 'C', 'Error System. Data sudah ter TTE, harusnya belum TTE. PT SARI DAMAI PERSADA', '2019-02-21 17:00:00', '11:24:52', 'Selesai', '2019-03-04 04:26:23', 'Sudah dilakukan perbaikan\r\n', '2019-03-03 22:26:23'),
(29, 'Petugas BO', 'C', 'PT GARUDA DUMAI NUSANTARA. Permohonan rekomendasi sudah ter TTE padahal harusnya belum di TTE', '2019-02-21 17:00:00', '11:27:05', 'Selesai', '2019-03-04 04:28:25', 'Sudah dilakukan perbaikan\r\n', '2019-03-03 22:28:25'),
(30, 'Pak Anton', 'Back Office', 'Kesalahan tanggal pada RSUD Petala Bumi.', '2019-02-21 17:00:00', '11:28:27', 'Selesai', '2019-03-04 04:29:36', 'Data sudah dirubah', '2019-03-03 22:29:36'),
(31, 'Petugas BO', 'Back Office', 'Naikkan pada KOP Surat', '2019-02-21 17:00:00', '11:29:39', 'Selesai', '2019-03-04 04:31:24', 'Ternyata settingan pada printer\r\n', '2019-03-03 22:31:24'),
(32, 'Kak Yesi', 'C', 'Pengubahan tanggal pada surat izin SIPPA (tanggal di TTE), penambahan syarat surat izin pada SIPPA, TTE SIPPA', '2019-02-24 17:00:00', '11:32:18', 'Selesai', '2019-03-04 04:33:56', 'Sudah dilakukan perbaikan dan penambahan fitur TTE', '2019-03-03 22:33:56'),
(33, 'Pak Firman', 'A', 'Bumi Lancang Kuning, CItra Bumi Argo dipindahkan ke A3', '2019-02-24 17:00:00', '11:38:28', 'Selesai', '2019-03-04 04:39:56', 'Sudah dilakukan perbaikan', '2019-03-03 22:39:56'),
(34, 'Hidayat', 'Back Office', 'Penguploadan pertek untuk izin Indosat dan XL melalui login SKPD PUPR melalui SUPERADMIN', '2019-02-24 17:00:00', '11:39:58', 'Selesai', '2019-03-04 04:42:12', 'Sudah dilakukan perbaikan', '2019-03-03 22:42:12'),
(35, 'Pak Rogie ', 'A', 'Tembusan pada surat izin pada penambahan dan perubahan ', '2019-03-04 07:03:20', '11:42:29', 'Selesai', '2019-03-04 07:03:20', 'Merubah formatan pada halaman printer', '2019-03-04 07:03:20'),
(36, 'Petugas BO', 'Back Office', 'Menghilangkan syarat pada point B. Surat izin operasional Rumah Sakit kelas B', '2019-02-24 17:00:00', '11:44:36', 'Selesai', '2019-03-04 04:46:06', 'Sudah dilakukan perbaikan', '2019-03-03 22:46:06'),
(37, 'Kasi A', 'A', 'Data di database ditambahkan karena adanya data yang hilang', '2019-02-24 17:00:00', '11:46:09', 'Selesai', '2019-03-04 04:47:01', 'Sudah dilakukan perbaikan', '2019-03-03 22:47:01'),
(38, 'Pak Anton', 'Back Office', 'Mengubah tanggal ke 25 Februari 2019. KASI-> Kirim ke Tim Teknis. Nama Perusahaan : United Tractor, Brillian, Indah Sukses, Mandala Jaya Mandiri', '2019-02-24 17:00:00', '11:47:04', 'Selesai', '2019-03-04 04:53:25', 'Sudah dilakukan perbaikan', '2019-03-03 22:53:25'),
(39, 'Pak Saddat', 'A', 'Dihapus No Pendaftaran 190116075 An PT Capella Dinamik Nusantara yang di pakai No Pendaftaran 190116076', '2019-03-04 07:13:58', '11:50:31', 'Selesai', '2019-03-04 07:13:58', 'Sudah dilakukan perbaikan', '2019-03-04 07:13:58'),
(40, 'Petugas BO', 'A', 'Merubah format dari persetujuan pemenuhan izin usaha industri dan memperbaiki format syarat daru suatu jenis izin.', '2019-02-25 17:00:00', '11:53:55', 'Selesai', '2019-03-04 04:58:25', 'Sudah dilakukan perbaikan', '2019-03-03 22:58:25'),
(41, 'Pak Aprianthama', 'A', 'Penambahan jurusan SMK dijadikan satu halaman (tambahan optional). Perubahan tulisan di produk izin usaha industri', '2019-02-25 17:00:00', '11:58:45', 'Selesai', '2019-03-04 05:00:23', 'Sudah dilakukan perbaikan', '2019-03-03 23:00:23'),
(42, 'Bu Nunung', 'PKPL', 'Mengubah tampilan Dashboard pada TV Ruang tunggu', '2019-02-25 17:00:00', '12:00:27', 'Selesai', '2019-03-04 05:02:03', 'Sudah dilakukan perubahan tampilan pada TV Ruang Tunggu', '2019-03-03 23:02:03'),
(43, 'DIMAS', 'Front Office', 'Pergantian penanggung jawab PAK Permohonan Izin Pengakuan Penyalur Kesehatan cabang PT. INDOFARMA GLOBAL MEDIKA', '2019-02-25 17:00:00', '12:02:07', 'Selesai', '2019-03-04 05:04:34', 'Sudah dilakukan perbaikan', '2019-03-03 23:04:34'),
(44, 'Bu Eva', 'Back Office', 'Izin Usaha Penyelenggara Angkutan Orang (AJDP) tanggal-> Bukti Upload Pertek PT. Raja Online', '2019-02-25 17:00:00', '12:04:36', 'Selesai', '2019-03-04 05:06:34', 'Sudah dilakukan perbaikan', '2019-03-03 23:06:34'),
(45, 'Dimas', 'Front Office', 'Perubahan Syarat ada yang dihilangkan beberapa syarat ketika di inputan sesuaikan dengan ketika mau ngeprint (pdf)', '2019-02-25 17:00:00', '12:06:52', 'Selesai', '2019-03-04 05:08:24', 'Sudah dilakukan perbaikan', '2019-03-03 23:08:24'),
(46, 'Kak Yezi', 'Pengaduan', 'Tidak bisa input nomor registrasi di akun pengaduan', '2019-02-26 17:00:00', '12:08:28', 'Selesai', '2019-03-04 05:09:35', 'Sudah dilakukan perbaikan', '2019-03-03 23:09:35'),
(47, 'Bu Eva', 'Back Office', 'Perubahan tanggal dan status izin teknis (8 izin)', '2019-02-26 17:00:00', '12:09:40', 'Selesai', '2019-03-04 05:11:04', 'Sudah dilakukan perbaikan', '2019-03-03 23:11:04'),
(48, 'Dolly', 'Front Office', 'TTE, status di simpel di bu Kasi belum diserahkan', '2019-02-26 17:00:00', '12:11:08', 'Selesai', '2019-03-04 05:12:42', 'Sudah dilakukan perbaikan', '2019-03-03 23:12:42'),
(49, 'Bu Kasi A', 'A', 'Lampiran halaman ketika mau di TTE tidak ada isi', '2019-02-26 17:00:00', '12:12:45', 'Selesai', '2019-03-04 05:13:25', 'Sudah dilakukan perbaikan', '2019-03-03 23:13:25'),
(50, 'Pak Anton', 'Back Office', 'No Surat Izin tidak ada isi dikarenakan data yang di refresh sudah selsai', '2019-02-26 17:00:00', '12:13:27', 'Selesai', '2019-03-04 05:14:29', 'Sudah dilakukan perbaikan', '2019-03-03 23:14:29'),
(51, 'Bu Eva', 'Back Office', 'Perubahan format penulisan izin Trayek AJDP (Perpanjangan)', '2019-02-27 17:00:00', '12:14:32', 'Selesai', '2019-03-04 05:15:32', 'Sudah dilakukan perbaikan', '2019-03-03 23:15:32'),
(52, 'Pak Jonrinal', 'A', 'Perubahan format penilisan izin penambahan dan perubahan program keahlian SMK', '2019-02-27 17:00:00', '12:15:33', 'Selesai', '2019-03-04 05:17:00', 'Sudah dilakukan perbaikan', '2019-03-03 23:17:00'),
(53, 'Kak Yesi', 'Back Office', 'Minta tambahkan kolom input no surat izin. Meter per kubik minta dibakukan', '2019-02-27 17:00:00', '12:17:04', 'Selesai', '2019-03-04 05:18:35', 'Sudah dilakukan penambahan ', '2019-03-03 23:18:35'),
(54, 'Bu Dina', 'Back Office', 'Penginputan izin Indofarma ke login Back Office', '2019-02-27 17:00:00', '12:18:48', 'Selesai', '2019-03-04 05:19:42', 'Sudah dilakukan perbaikan', '2019-03-03 23:19:42'),
(55, 'Kabid C', 'C', 'Permintaan untuk menghapus data', '2019-02-28 17:00:00', '13:39:15', 'Selesai', '2019-03-04 06:41:10', 'Sudah dilakukan perbaikan', '2019-03-04 00:41:10'),
(56, 'Kak Yesi', 'Back Office', 'Permintaan untuk mengubah status menjadi di terima Tim Teknis', '2019-02-28 17:00:00', '13:41:13', 'Selesai', '2019-03-04 06:42:36', 'Sudah dilakukan perubahan data sesuai permintaan', '2019-03-04 00:42:36'),
(57, 'Bu Dina', 'Back Office', 'Penambahan perihal izin dan pemunculan tombol print', '2019-02-28 17:00:00', '13:42:39', 'Selesai', '2019-03-04 06:44:01', 'Data sudah ditambahkan dan tombol sudah dimunculkan', '2019-03-04 00:44:01'),
(58, 'Pak Anton', 'B', 'Merubah jenis izin PT Pulau Sambu', '2019-02-28 17:00:00', '13:44:07', 'Selesai', '2019-03-04 06:45:04', 'Data sudah dirubah sesuai dengan permintaan', '2019-03-04 00:45:04'),
(59, 'Widya FO', 'Back Office', 'Permintaan penambahan ID Front Office dan Back Office atas nama widya_FO dan widya_BO', '2019-03-02 17:00:00', '13:45:07', 'Selesai', '2019-03-04 06:46:42', 'Data user widya sudah ditambahkan dan diberi akses', '2019-03-04 00:46:42'),
(60, 'Kak Yesi', 'Back Office', 'Lampiran sudah di TTE, tetapi HAL nya salah', '2019-03-03 17:00:00', '13:47:45', 'Selesai', '2019-03-04 06:48:44', 'Sudah dilakukan perbaikan', '2019-03-04 00:48:44'),
(61, 'Bu Dina', 'A', 'Tanggal tidak masuk kedalam KOP Surat Permintaan Pertimbangan Teknis Pergantian Penanggung Jawab Teknis Distribusi Alat Kesehatan Cabang', '2019-03-04 07:05:25', '13:48:46', 'Selesai', '2019-03-04 07:05:25', 'Sudah dilakukan perbaikan', '2019-03-04 07:05:25'),
(62, 'Kak Yesi', 'Back Office', 'Tanggal tidak tercetak dan ada beberapa data yang juga tidak tercetak', '2019-03-03 17:00:00', '13:50:54', 'Selesai', '2019-03-04 06:52:22', 'Sudah dilakukan perbaikan', '2019-03-04 00:52:22'),
(63, 'Pak Saddat', 'C', 'PT Citra City Pasifik (Dinas Sosial). Log Permohonan no.04 = ada kesalahan aplikasi seharusnya tanggal 1 Maret bukan 22 Februari 2019', '2019-03-04 07:11:02', '13:52:28', 'Selesai', '2019-03-04 07:11:02', 'Sudah dilakukan perbaikan', '2019-03-04 07:11:02'),
(64, 'Pak Saddat', 'C', 'PT Medco Batch Power Riau no Pendaftaran 180705051 (Dinas PUPR) diteruskan ke KABID 27 Februari 2019.', '2019-03-03 17:00:00', '13:55:38', 'Selesai', '2019-03-04 06:56:49', 'Sudah dilakukan perbaikan', '2019-03-04 00:56:49'),
(67, 'Dolly', 'Front Office', 'Tidak bisa merubah password di Submission.', '2019-03-04 07:20:11', '14:17:53', 'Selesai', '2019-03-04 07:20:11', 'Password sudah dirubah di akun SuperAdmin', '2019-03-04 07:20:11'),
(68, 'Pak Saddat', 'C', 'Memperbaiki PDF', '2019-03-04 07:24:23', '14:23:55', 'Selesai', '2019-03-04 07:24:23', 'Sudah dilakukan perbaikan', '2019-03-04 07:24:23'),
(71, 'Dimas ', 'Front Office', 'Merubah list perubahan di IZIN PENGAKUAN PENYALUR ALAT KESEHATAN CABANG (PAK).  PT.PARIT PADANG GLOBAL\r\n', '2019-03-04 08:26:06', '15:26:06', 'Selesai', '2019-03-04 08:30:51', 'Data sudah selesai dirubah', '2019-03-05 03:56:23'),
(72, 'Idrian', 'Front Office', 'Perubahan nama Idrian menjadi lebih singkat', '2019-03-04 08:42:56', '15:42:56', 'Selesai', '2019-03-04 08:43:18', 'Sudah dilakukan perubahan nama pada user di database evo maupun di dpmptsp', '2019-03-04 08:43:40'),
(76, 'Pak Rogie', 'A', 'Nomor dibawah barcode tidak tampil pada tampilan Pak Jon', '2019-03-04 10:01:01', '17:01:01', 'Selesai', '2019-03-04 10:01:45', 'Sudah dilakukan perbaikan sehingga nomor kembali muncul di halaman pdf', '2019-03-05 01:27:06'),
(77, 'Agus ', 'Front Office', 'Password di laman Google dan Mozilla selalu tersimpan. Ingin menghapus semua password yang tersimpan', '2019-03-05 01:11:07', '08:11:07', 'Selesai', '2019-03-05 01:18:32', 'Data password yang tesimpan sudah berhasil di hapus', '2019-03-05 01:20:35'),
(78, 'Kak Widya', 'Back Office', 'Ada perbedaan hak akses. Minta disetarakan dengan akun yang lain dalam level yang sama\r\n', '2019-03-05 01:22:03', '08:22:03', 'Selesai', '2019-03-05 01:23:19', 'Sudah disetarakan dengan akun yang lain dengan level akses yang sama', '2019-03-05 01:23:39'),
(79, 'Kak Yesi', 'Back Office', 'Perbaikan persyaratan IUP OP Khusus Pengolahan dan Permurnian (Badan Usaha)', '2019-03-05 02:14:12', '09:14:12', 'Selesai', '2019-03-05 02:47:30', 'Data sudah diperbaiki dengan mengubah isian dari surat jenis izin', '2019-03-05 02:48:08'),
(80, 'Tessa', 'Front Office', 'perbaikan printer', '2019-03-05 02:32:56', '09:32:56', 'Selesai', '2019-03-05 02:33:40', 'Sudah dilakukan penginstalan driver', '2019-03-05 02:33:44'),
(82, 'Kak Yesi', 'Back Office', 'PT Tiga Dua  Delapan ,	Izin Usaha Penyediaan Tenaga Listrik untuk Kepentingan Sendiri (Izin Operasi) Kapasitas Diatas 200 kVA seharusnya sudah kirim Tim Teknis', '2019-03-05 03:32:25', '10:32:25', 'Selesai', '2019-03-05 03:37:43', 'Sudah di ubah melalui database', '2019-03-05 03:37:52'),
(83, 'Pak Anton', 'Back Office', 'Rumah Sakit Petala Bumi, merubah tanggal pengiriman menjadi tanggal 31 Januari 2019', '2019-03-05 03:41:57', '10:41:57', 'Selesai', '2019-03-05 03:43:44', 'Data tanggal sudah diubah', '2019-03-05 03:56:11'),
(84, 'Back Office', 'Back Office', 'OPD minta di diterima PT. MITRA PRAMITA MEDIKA', '2019-03-05 03:56:26', '10:56:26', 'Selesai', '2019-03-05 03:57:32', 'Data sudah dirubah dari database karena di sistem superadmin tidak berfungsi dengan semestinya', '2019-03-05 03:57:56'),
(85, 'Pak Anton', 'Back Office', 'Belum diterima di OPD, PT KARYA MUDA', '2019-03-05 04:15:19', '11:15:19', 'Selesai', '2019-03-05 04:15:46', 'Data sudah dirubah melalui database', '2019-03-05 04:17:03'),
(86, 'Bu Nunung ', 'PKPL', 'Dolly ke OSS, Endang ke Submission', '2019-03-05 04:30:42', '11:30:42', 'Selesai', '2019-03-05 04:31:20', 'Sudah dilakukan penambahan akun ', '2019-03-05 04:48:34'),
(87, 'Bu Nunung', 'PKPL', 'Pada laporan di Pelaporan excel, tanda tangan terlalu ke kanan sehingga mengganggu nilai estetika', '2019-03-05 04:35:44', '11:35:44', 'Selesai', '2019-03-05 04:36:33', 'sudah dibuat', '2019-03-08 02:58:06'),
(88, 'Bu Nunung', 'PKPL', 'Permintaan penambahan akun Endang jadi FO Loket 5 dan Dolly akun OSS', '2019-03-06 02:58:56', '09:58:56', 'Selesai', '2019-03-06 03:01:08', 'Sudah ditambahkan akun', '2019-03-06 03:01:21'),
(89, 'Rudy', 'PKPL', 'Pembuatan akun Submission', '2019-03-06 03:00:01', '10:00:01', 'Selesai', '2019-03-06 03:00:41', 'Sudah ditambahkan akunnya', '2019-03-06 03:00:51'),
(90, 'Bang Rudi', 'A', 'Izin Permohonan Sertifikat Distribusi Farmasi Cabang a.n. PT Talang Gugun Sari Nusantara Cabang Pekanbaru (tidak muncul di simpel)', '2019-03-06 03:21:32', '10:21:32', 'Selesai', '2019-03-06 03:23:29', 'Salah presepsi antara tanda terima lama dan tanda terima baru', '2019-03-06 05:05:57'),
(91, 'Bang Rudi', 'PKPL', 'Perusahaan Malacca hilang di simpel', '2019-03-06 03:32:02', '10:32:02', 'Selesai', '2019-03-06 05:05:01', 'Salah presepsi antara tanda terima lama dan tanda terima baru', '2019-03-06 05:05:53'),
(92, 'Tuty', 'Front Office', 'Riset tanggal tidak muncul izin', '2019-03-06 05:09:09', '12:09:09', 'Selesai', '2019-03-06 05:10:32', 'FO lupa input tanggal', '2019-03-06 05:13:33'),
(93, 'Agus', 'Front Office', 'Ganti nama pemohon : Yolannda', '2019-03-06 06:03:45', '13:03:45', 'Selesai', '2019-03-06 06:04:10', 'Sudah diganti ke Yolanda', '2019-03-06 06:04:18'),
(94, 'Kak Yesi', 'Back Office', 'Operasi Produksi  PT Quasa Inti Nusantara, melihat jenis izin dan persyaratan', '2019-03-06 07:05:42', '14:05:42', 'Selesai', '2019-03-06 07:08:03', 'Aman ', '2019-03-06 07:08:13'),
(95, 'kak yessi', 'B', 'mengganti nama izin yang ada di sdm', '2019-03-06 07:35:33', '14:35:33', 'Selesai', '2019-03-06 07:36:12', 'sudah diganti menjadi Persetujuan Pemenuhan Komitmen Izin Operasi', '2019-03-06 07:36:46'),
(96, 'kk yessi', 'B', 'tanggalnya tidak sesuai', '2019-03-08 02:56:29', '09:56:29', 'Selesai', '2019-03-08 02:57:05', 'sudah diganti', '2019-03-08 02:57:26'),
(97, 'Pak Farman', 'A', 'Perubahan format PDF pada PT Bumi Lancang Kuning', '2019-03-08 04:11:25', '11:11:25', 'Selesai', '2019-03-08 04:12:08', 'Sudah dilakukan perbaikan', '2019-03-08 07:18:52'),
(98, 'Pak Farman', 'A', 'Merapikan Halaman PDF di bagian ttd Gubernur', '2019-03-08 07:17:54', '14:17:54', 'Selesai', '2019-03-08 07:18:30', 'Sudah dilakukan perbaikan', '2019-03-08 07:48:14'),
(99, 'Bu Enda', 'A', 'Perubahan format pdf pada izin di bidang A', '2019-03-08 07:46:57', '14:46:57', 'Selesai', '2019-03-08 07:48:03', 'Sudah dilakukan perbaikan', '2019-03-11 01:40:00'),
(100, 'Pak Riyan', 'A', 'Perubahan format SMK (pdf)', '2019-03-08 07:48:40', '14:48:40', 'Selesai', '2019-03-08 07:49:15', 'Sudah dilakukan perbaikan', '2019-03-08 07:49:22'),
(101, 'Kak Widya', 'Back Office', 'Persetujuan Pemenuhan Komitmen Izin Operasional Perusahaan Penyedia Jasa Pekerja / Buruh', '2019-03-08 07:59:51', '14:59:51', 'Selesai', '2019-03-08 08:01:12', 'Sudah dilakukan perbaikan', '2019-03-11 01:39:45'),
(102, 'Pak Erick', 'Back Office', 'Tambahkan di Pekanbaru pada format PDF . Persetujuan Pemenuhan Komitmen Izin Usaha Jasa Terkait dengan Angkutan di Perairan (Izin Usaha Bongkar Muat Barang) PT. Anak Bangsa Cekatan', '2019-03-11 01:35:41', '08:35:41', 'Selesai', '2019-03-11 01:40:04', 'Sudah dilakukan perbaikan', '2019-03-11 02:12:25'),
(103, 'Kak Dina', 'Back Office', 'Minta perbaikan format pdf pada kalimat yang harusnya huruf depannya kapital', '2019-03-11 03:37:15', '10:37:15', 'Selesai', '2019-03-11 03:38:15', 'sudah diganti', '2019-03-11 04:26:28'),
(104, 'Bu Enda', 'A', 'melihat izin lama sudah ter tanda tangan elektronik atau belum\r\ndan mengubah font laporan izin disesuaikan dengan font yang ada di tte', '2019-03-11 04:23:09', '11:23:09', 'Selesai', '2019-03-11 04:24:52', 'sudah', '2019-03-11 04:29:23'),
(105, 'Pak Anton', 'Back Office', 'teknik bilang izin belum sampai padahal sudah terkirim', '2019-03-11 04:24:54', '11:24:54', 'Selesai', '2019-03-11 04:26:34', 'adanya kesalahpahaman', '2019-03-11 04:27:58'),
(106, 'kak marlina', 'Back Office', 'minta perubahan tanggal izin jadi tanggal yang sekarang\r\npada PT. Garuda Dumai Nusantara\r\nPT. Prima Wijaya Perkasa\r\nPT. Sari Damai Persada\r\nPT. Rajita Auza Prima', '2019-03-11 05:11:13', '12:11:13', 'Selesai', '2019-03-11 05:12:42', 'sudah dirubah menjadi tanggal yang sekarang yaitu 11 maret 2018', '2019-03-11 05:13:18'),
(107, 'Pak Iga', 'C', 'Merubah password id shtp_507', '2019-03-11 07:07:55', '14:07:55', 'Selesai', '2019-03-11 07:08:20', 'sudah selesai dirubah', '2019-03-11 07:08:41'),
(108, 'Kak Dina', 'Back Office', 'Mengubah perihal di izin kesehatan cabang', '2019-03-11 07:08:50', '14:08:50', 'Selesai', '2019-03-11 07:09:39', 'Sudah dilakukan perubahan pada perihal sesuai yang diinginkan kak dina', '2019-03-11 07:48:24'),
(109, 'Pak Anton', 'Back Office', 'Melakukan persetujuan tim teknis pada PT Greentech dan PT Malindo (izin operasi)', '2019-03-12 01:56:09', '08:56:09', 'Selesai', '2019-03-12 01:57:55', 'sudah di lakukan eksekusi karena sudah mendapatkan pertek OPD Teknis, OPD (operasi), Memenuhi Syarat', '2019-03-12 01:59:07'),
(110, 'Pak Anton', 'Back Office', 'izin tidak muncul di akun bo', '2019-03-12 05:11:22', '12:11:22', 'Selesai', '2019-03-12 05:11:57', 'id bo ditambahkan untuk jenis izin yang tidak muncul', '2019-03-12 05:12:41'),
(111, 'Kak Dina', 'Back Office', 'Mengubah isian dari format pdf ', '2019-03-12 08:28:50', '15:28:50', 'Selesai', '2019-03-12 08:30:03', 'Sudah dilakukan perubahan', '2019-03-12 08:30:13'),
(112, 'Bu Nunung', 'PKPL', 'Menambah fitur pada waktu dan menampilkan jumlah voting pada tanggal tertentu', '2019-03-12 08:29:16', '15:29:16', 'Selesai', '2019-03-12 08:31:09', 'Sudah dikerjakan', '2019-03-13 09:01:04'),
(113, 'Kak Yesi', 'Back Office', 'Mengubah ceklis pada izin perubahan Kelengkapan Persyaratan Permohonan Perpanjangan Izin Pengusahaan Air Tanah', '2019-03-12 08:30:15', '15:30:15', 'Selesai', '2019-03-12 08:31:12', 'Sudah dilakukan perubahan', '2019-03-12 08:42:30'),
(114, 'Kak Riana', 'A', 'Perubahan syarat di izin perkebunan dan pertanian', '2019-03-12 08:42:32', '15:42:32', 'Selesai', '2019-03-12 08:49:33', 'Sudah dilakukan perubahan', '2019-03-12 08:50:39'),
(115, 'Bang Yuki', 'Back Office', 'Merubah syarat surat izin SIUP B2', '2019-03-12 08:43:28', '15:43:28', 'Selesai', '2019-03-12 08:49:39', 'Sudah dilakukan perubahan', '2019-03-12 08:50:50'),
(116, 'Kak Yesi', 'Back Office', 'Merubah tanggal habis', '2019-03-12 08:44:15', '15:44:15', 'Selesai', '2019-03-12 08:50:08', 'Sudah dilakukan perubahan', '2019-03-12 08:50:54'),
(117, 'Kak Yesi', 'Back Office', 'Merubah status dari OPD, karena OPD lupa merubah status', '2019-03-12 08:44:50', '15:44:50', 'Selesai', '2019-03-12 08:50:12', 'Sudah dilakukan perubahan', '2019-03-12 08:51:00'),
(118, 'Pak Jonrinal', 'A', 'Perubahan syarat di penambahan dan perubahan SMK', '2019-03-12 08:47:38', '15:47:38', 'Selesai', '2019-03-12 08:50:15', 'Sudah dilakukan perubahan', '2019-03-12 08:51:05'),
(119, 'Pak Aprianthama', 'A', 'Perubahan syarat izin SMK', '2019-03-12 08:48:04', '15:48:04', 'Selesai', '2019-03-12 08:50:19', 'Sudah dilakukan perubahan', '2019-03-12 08:51:23'),
(120, 'Bu Enda', 'A', 'Perubahan format izin PBF', '2019-03-12 08:48:38', '15:48:38', 'Selesai', '2019-03-12 08:50:22', 'Sudah dilakukan perubahan', '2019-03-12 08:51:38'),
(121, 'Kak DIna', 'Back Office', 'Perubahan format izin PBF', '2019-03-12 08:49:07', '15:49:07', 'Selesai', '2019-03-12 08:50:05', 'Sudah dilakukan perubahan', '2019-03-12 08:51:33'),
(122, 'Pak Erick', 'Back Office', 'Menghapus Tembusan PT Anak Bangsa Cekatan', '2019-03-13 01:05:41', '08:05:41', 'Selesai', '2019-03-13 01:06:23', 'Sudah di hapus dari coding', '2019-03-13 01:06:51'),
(123, 'Apriantama', 'A', 'Ganti Bidang Perdagangan dan koperasi jadi B1', '2019-03-13 03:37:22', '10:37:22', 'Selesai', '2019-03-13 09:00:45', 'Sudah dikerjakan sesuai kebutuhan', '2019-03-13 09:01:16'),
(124, 'Bang Robby', 'A', 'tambah izin untuk perubahan di operasional smk dan menambah hari kerja menjadi 60 hari di operasional sma dan smk', '2019-03-13 03:38:13', '10:38:13', 'Selesai', '2019-03-13 09:00:48', 'Sudah dikerjakan sesuai kebutuhan', '2019-03-13 09:01:23'),
(125, 'kak dina', 'Back Office', 'ubah kata2 di format pdf\r\n\r\n', '2019-03-13 03:39:29', '10:39:29', 'Selesai', '2019-03-13 03:41:10', 'sudah diganti', '2019-03-13 03:41:22'),
(126, 'pak erik', 'Back Office', 'bg joe', '2019-03-13 03:40:34', '10:40:34', 'Selesai', '2019-03-13 09:00:51', 'Sudah dikerjakan sesuai kebutuhan', '2019-03-13 09:01:27'),
(127, 'Bu Nunung', 'Pengaduan', 'dapat mencetak laporan per hari', '2019-03-13 03:42:01', '10:42:01', 'Selesai', '2019-03-13 03:42:30', 'Sudah dikerjakan sesuai kebutuhan', '2019-03-13 09:01:33'),
(128, 'Kak Dina', 'Back Office', 'Mengubah format pada tembusan , membenarkan tulisan menjadi Kota Pekanbaru', '2019-03-13 08:57:54', '15:57:54', 'Selesai', '2019-03-13 09:00:54', 'Sudah dikerjakan sesuai kebutuhan', '2019-03-13 09:01:37'),
(129, 'Bu Uun', 'Back Office', 'Merubah tanggal pada PT Waletindo Setia Persada pada tanggal diteruskan', '2019-03-13 09:02:53', '16:02:53', 'Selesai', '2019-03-13 09:03:35', 'Sudah dirubah menjadi hari ini pada tanggal 13 Maret 2019', '2019-03-13 09:03:58'),
(130, 'Pak Farman', 'A', 'menambah kata kata provinsi riau di izin perusahaan lancang kuning kode (per7)', '2019-03-13 09:13:56', '16:13:56', 'Selesai', '2019-03-13 09:15:00', 'selesai', '2019-03-13 09:15:14'),
(131, 'Pak Farman', 'A', 'Menambahkan kata\" Provinsi Riau pada permohonan PT  Wira dan memindahkan izin ke akun Pak Farma pada PT Bunga', '2019-03-14 03:21:41', '10:21:41', 'Selesai', '2019-03-14 03:23:07', 'Sudah dilakukan perubahan', '2019-03-14 03:23:19'),
(132, 'Kak Yesi', 'Back Office', 'Mengubah yang syarat izin yang baru menjadi perpanjangan pada PT. Indofood CBP Sukses Makmur TBK', '2019-03-14 07:55:28', '14:55:28', 'Selesai', '2019-03-14 07:57:02', 'Sudah dilakukan perubahan sesuai permintaan', '2019-03-14 07:57:15'),
(133, 'Pak Hidayat', 'Back Office', 'Kehilangan huruf \"t\" pada perizinan PT Medco', '2019-03-14 08:37:04', '15:37:04', 'Selesai', '2019-03-14 08:37:41', 'Sudah dilakukan perbaikan', '2019-03-14 08:37:54'),
(134, 'Aditya', 'Back Office', 'Menambahkan akun B2 perikanan dan kelautan', '2019-03-14 09:09:36', '16:09:36', 'Selesai', '2019-03-14 09:09:58', 'sudah ditambahkan akun aditya_b2', '2019-03-14 09:10:12'),
(135, 'Pak Desrian', 'Back Office', 'Menambahkan Persetujuan pemenuhan komitmen izin usaha jasa terkait dengan angkutan di perairan (izin usaha bongkar muat barang) *Kantor Cabang* dan menambahakan point ke 8 dalam Mengigat yaitu : 8. Persetujuan pemenuhan izin usaha jasa terkait dengan angkutan di perairan (Izin usaha bongkar muat barang) PT... Nomor..... tanggal......', '2019-03-15 02:24:43', '09:24:43', 'Selesai', '2019-03-15 02:28:59', 'Telah diselesaikan sesuai dengan permintaan', '2019-05-24 07:38:57'),
(136, 'Kak Yesi', 'Back Office', 'Mohon perbaikan pada fitur setelah klik command pada permohonan, klik kembali maka tampilan aksi hanya tinggal icon \"kaca pembesar\" ', '2019-03-15 02:27:36', '09:27:36', 'Selesai', '2019-03-15 02:28:55', 'SUdah dilakukan perbaikan', '2019-03-15 02:29:12'),
(137, 'Dimas ', 'Front Office', 'Merubah cheklis izin pada PT United ', '2019-03-15 04:37:04', '11:37:04', 'Selesai', '2019-03-15 04:37:45', 'Sudah dilakukan perubahan\r\n', '2019-03-15 04:37:57'),
(138, 'Bu Nunung', 'Front Office', 'Membuat akun SUB_TESSA', '2019-03-15 08:06:33', '15:06:33', 'Selesai', '2019-03-15 08:07:32', 'Akun SUB_TESSA sudah ditambahkan', '2019-03-15 08:08:06'),
(139, 'Bu Erta', 'Back Office', 'Menambah point nama persuahaan di izin yang sudah di TTE', '2019-03-15 08:06:49', '15:06:49', 'Selesai', '2019-03-15 08:07:36', 'Sudah dilakukan perbaikan', '2019-03-15 08:08:27'),
(140, 'Bu Erta', 'Back Office', 'Menambah Izin \r\n1. Sertifikat Distribusi Cabang Pedagang Besar Farmasi \r\n2. Sertifikat Distribusi Cabang Penyalur alat Kesehatan\r\n3. Sertifikat produksi usaha kecil mikro obat tradisional', '2019-03-18 04:36:20', '11:36:20', 'Selesai', '2019-03-18 04:40:51', 'sudah diselesaikan dengan cara \r\n1. Menambah izin tersebut di pelayanan dan di loket', '2019-03-18 04:41:51'),
(141, 'Bu Dina', 'Back Office', 'tanggal di tanda tangan formatnya rusak', '2019-03-18 04:42:00', '11:42:00', 'Selesai', '2019-03-18 04:43:52', 'Sudah dilakukan perbaikan', '2019-03-18 04:44:04'),
(142, 'Bu Enda', 'A', 'Perihal di buat manual pada file PBF dan pada PAK menghilangkan alamat untuk izin Penyaluar Alat Kesehatan dan Pedagang Besar Farmasi', '2019-03-19 08:34:13', '15:34:13', 'Selesai', '2019-03-19 08:35:45', 'Telah dilakukan perbaikan', '2019-03-19 08:36:03'),
(143, 'Kak Dina', 'Back Office', 'Minta teknis sudah diterima', '2019-03-19 08:36:56', '15:36:56', 'Selesai', '2019-03-19 08:37:42', 'Sudah dilakukan perbaikan', '2019-03-19 08:37:59'),
(144, 'Bu Erta', 'Back Office', 'Ganti perihal PAK', '2019-03-19 08:37:15', '15:37:15', 'Selesai', '2019-03-19 08:37:38', 'Sudah dilakukan perbaikan', '2019-03-19 08:37:53'),
(145, 'Kak Yesi', 'Back Office', 'salah nama kepala bidang b di surat rekom', '2019-03-20 04:01:47', '11:01:47', 'Selesai', '2019-03-20 04:17:58', 'Sudah dilakukan perbaikan', '2019-03-20 04:18:47'),
(146, 'Bu Eva', 'A', 'Perubahan penulisan pada laporan di PDF', '2019-03-20 04:14:54', '11:14:54', 'Selesai', '2019-03-20 04:17:52', 'Sudah dilakukan perbaikan', '2019-03-20 04:18:36'),
(147, 'Pak Riyan', 'A', 'Menambah tembusan baku pada permohonan Industri', '2019-03-20 04:15:35', '11:15:35', 'Selesai', '2019-03-20 04:17:46', 'Sudah dilakukan perbaikan', '2019-03-20 04:18:24'),
(148, 'Kasi A', 'A', 'status kabid menyetujui pengiriman pertek, 3 izin parit padang dan strttk 2 biji', '2019-03-20 09:02:56', '16:02:56', 'Selesai', '2019-03-20 09:03:49', 'di ubahhh', '2019-03-20 09:03:59'),
(149, 'Pak Herman', 'C', 'Pada aksi edit dalam RPO bermasalah, ID tidak dapat ditemukan', '2019-03-21 01:53:52', '08:53:52', 'Selesai', '2019-03-21 01:54:29', 'Sudah dilakukan perbaikan dalam coding, hal tersebut terjadi karena ada tambahan dari sistem rpo', '2019-03-21 01:54:53'),
(150, 'Pak Rudi', 'PKPL', 'Ingin mengetahui izin yang telah diambil pada bulan febuari 2019', '2019-03-21 03:33:59', '10:33:59', 'Selesai', '2019-03-21 03:34:44', 'Sebanyak 1115 SELECT COUNT(*) FROM `detailpermohonan` WHERE `dmhnTelahAmbil` = 1 AND `dmhnTglAmbil` like \'%2019-02%\'', '2019-03-21 03:35:01'),
(151, 'Pak Anton', 'B', 'Nomor Izin pada pdf yang sudah di TTE = 0 harusnya 28. PEMBERIAN IZIN USAHA JASA PERTAMBANGAN ATAS NAMA PT. GEOGREEN AERO SOLUSI\r\nKEPALA DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU PROVINSI RIAU', '2019-03-21 03:58:50', '10:58:50', 'Selesai', '2019-03-21 04:27:51', 'sudah dilakukan perbaikan melalui database', '2019-03-21 04:28:29'),
(152, 'Bu Nunung', 'PKPL', 'Menambah fitur Employee of the Month pada tampilan TV di slide Terakhir', '2019-03-21 05:12:31', '12:12:31', 'Selesai', '2019-03-21 05:13:08', 'Sudah dilakukan penambahan fitur', '2019-03-26 02:21:34'),
(153, 'Bu Nunung', 'PKPL', 'Menambahkan akun Submission atas nama Sarah, Iskandar, Rahmadina, Tessa, Rudi. Mengubah tampilan laporan pada print perhari di dev. Mmeperbaiki sistem E-Voting', '2019-03-22 03:14:24', '10:14:24', 'Selesai', '2019-03-22 03:16:06', 'Sudah dilakukan penambahan akun', '2019-03-26 02:20:50'),
(154, 'Bu Nunung', 'PKPL', 'Ada HUMAN ERROR pada Idrian dan Agustian terkait permohonan', '2019-03-22 09:44:13', '16:44:13', 'Selesai', '2019-03-22 09:44:48', 'Sudah dilakukan perbaikan pada permohonan yang terkait', '2019-03-26 02:21:14'),
(155, 'Bu Eva', 'Back Office', 'Menambahkan point pada pdf AJDP pada point 9 tidak muncul', '2019-03-25 02:10:09', '09:10:09', 'Selesai', '2019-03-25 02:10:50', 'Sudah dilakukan perbaikan', '2019-03-25 02:11:00'),
(156, 'Pak Farman', 'A', 'Mengubah point pada file pdf', '2019-03-26 01:31:02', '08:31:02', 'Selesai', '2019-03-26 01:31:28', 'sudah dilakukan perubahan', '2019-03-26 01:31:40'),
(157, 'Bu Yuli ', 'C', 'TTE PT Rahma Sindo minta diteruskan ke Kadis', '2019-03-26 02:18:41', '09:18:41', 'Selesai', '2019-03-26 02:20:10', 'SUdah dilakukan perbaikan', '2019-03-26 02:20:20'),
(158, 'Pak Anton', 'B', 'Menyesuaikan Perda dengan yang di TTE serta yang Non TTE', '2019-03-26 02:19:16', '09:19:16', 'Selesai', '2019-03-26 02:19:52', 'Sudah dilakukan perubahan', '2019-03-26 02:20:05'),
(159, 'Pak Saddat', 'C', 'Mengahpus kata \"Keterangan Untuk\" pada perizinan acts gali', '2019-03-26 02:52:20', '09:52:20', 'Selesai', '2019-03-26 02:53:08', 'Sudah dilakukan perbaikan sebelum tte dan sesudah tte', '2019-03-26 02:53:33'),
(160, 'Kak Yesi', 'Back Office', 'Mengubah izin perusahaan air tanah, menghapus salah satu poin di putusan ketiga dan kelima. Dan menambah inputan tanggal', '2019-03-26 04:05:38', '11:05:38', 'Selesai', '2019-03-26 04:10:21', 'sudah dirubah', '2019-03-27 02:12:04'),
(161, 'Iskandar', 'Front Office', 'Meubah password pada akun Submission', '2019-03-26 06:18:23', '13:18:23', 'Selesai', '2019-03-26 06:18:44', 'sudah dilakukan perubhaan password melalui akun superadmin', '2019-03-26 06:19:04'),
(162, 'Pak Riyan', 'A', 'SMK Pembangunan Bagan Batu tidak terlihat di submission', '2019-03-27 01:28:48', '08:28:48', 'Selesai', '2019-03-27 01:29:27', 'Menagganti statusnya karena permohonan sekarang sudah memakai alur yang baru', '2019-03-27 01:30:15'),
(163, 'Pak Riyan', 'A', 'Menambahkan izin Produksi Benih untuk di TTE', '2019-03-27 01:58:19', '08:58:19', 'Selesai', '2019-03-27 01:58:59', 'Sudah ditambahkan TTE pada izin Produksi Benih', '2019-03-27 01:59:20'),
(164, 'kk uun', 'Back Office', 'tidak muncul pop up pemberitahuan', '2019-03-27 02:10:35', '09:10:35', 'Selesai', '2019-03-27 02:11:05', 'sudah muncul', '2019-03-27 02:11:16'),
(165, 'Agus', 'Front Office', 'Menanyakan ke sistem pada saat menginputkan data, tanggal otomatis terisi. Apakah tanggal tersebut sudah tersimpan ke sistem secara otomatis?', '2019-03-27 02:10:55', '09:10:55', 'Selesai', '2019-03-27 03:02:40', 'Sudah diterangkan kepada yang bersangkutan', '2019-04-09 02:16:30'),
(166, 'Norita', 'A', 'Filter di FO tidak nampil dari bidang A', '2019-03-27 03:43:33', '10:43:33', 'Selesai', '2019-03-27 03:45:18', 'ganti di koding', '2019-03-27 03:45:37'),
(167, 'Bu Sri', 'Back Office', 'Rubah tanggal di TTE, atas nama Iswan dan Mcd', '2019-03-27 03:44:02', '10:44:02', 'Selesai', '2019-03-27 03:45:48', 'ganti tanggal melalui database', '2019-03-27 03:46:01'),
(168, 'kk tuty', 'Front Office', 'minta ubah syarat2 di izin cabang farmasi\r\n', '2019-03-27 04:09:49', '11:09:49', 'Selesai', '2019-03-27 04:10:46', 'Sudah dilakukan perubahan pada syarat\"', '2019-04-09 02:16:13'),
(169, 'Tessa', 'Front Office', 'mengubah password akun tessa bidang Submission', '2019-03-28 07:25:34', '14:25:34', 'Selesai', '2019-03-28 07:32:03', 'sudah dirubah password akun SUB_TESSA', '2019-03-28 07:32:25'),
(170, 'Bu Eva', 'Back Office', 'Terdapat permohonan yang ingin diperiksa dan diteruskan ke Kasi bila sudah rapi', '2019-03-28 07:30:47', '14:30:47', 'Selesai', '2019-03-28 07:31:54', 'Sudah diselesaikan ', '2019-03-28 07:32:42'),
(171, 'Kak marlina', 'C', 'Mengubah tanggal pada permohonan yang sudah di tte', '2019-04-05 08:38:33', '15:38:33', 'Selesai', '2019-04-05 08:41:31', 'Sudah di lakukan perubahan di tabel Buper', '2019-04-05 08:41:44'),
(172, 'Pak Andi', 'A', 'Mengubah persyaratan yang dilampirkan pada permohonan persetujuan pemenuhan komitmen izin operasional pendidikan menengah yang diselenggarakan oleh masyarakat (SMA)', '2019-04-05 08:39:09', '15:39:09', 'Selesai', '2019-04-05 08:41:18', 'SUdah dilakukan perubahan', '2019-04-05 08:41:28'),
(173, 'Bu Nunung', 'PKPL', 'Menghapus data e-vote \"CUKUP\" pada user FO DIMAS', '2019-04-08 01:12:44', '08:12:44', 'Selesai', '2019-04-08 01:13:25', 'sudah dilakukan penghapusan\r\n', '2019-04-08 01:13:39'),
(174, 'Pak Anton', 'Back Office', 'PT. KUANTAN TEKHNIK PERKASA permintaan OPD Teknis sudah diterima, tapi sistem belum', '2019-04-08 01:41:34', '08:41:34', 'Selesai', '2019-04-08 01:57:30', 'sudah dilakukan perubahan', '2019-04-08 01:57:40'),
(175, 'Pak Erick', 'Back Office', 'Pada tembusan PT. Baruna Siak tidak mucul pada point kedua, sementara sudah di inputkan oleh Back Office', '2019-04-08 02:15:19', '09:15:19', 'Selesai', '2019-04-08 02:16:13', 'Sudah dilakukan perbaikan melalui coding, coding yg lama tidak berjalan karena variabel tidak di panggil dan coding tidak aktif', '2019-04-08 03:11:13'),
(176, 'Bu Enda', 'A', 'Merubah tanggal pada permohonan kesehatan atas nama : 1. Lailatul Badria 2. Hefniati 3. Siti Maidarnis 4. Nurhamidah 5. Resty Widya Hersa 6. Elna Defitri 7. Annisa Juwita Dalimunthe. ', '2019-04-08 02:39:21', '09:39:21', 'Selesai', '2019-04-08 03:02:08', 'Sudah dilakukan perubahan didalam database', '2019-04-08 03:02:25'),
(177, 'Dolly', 'Front Office', 'Tidak bisa masuk ke akun Submission', '2019-04-08 03:14:44', '10:14:44', 'Selesai', '2019-04-08 03:15:12', 'Sudah dilakukan perubahan password', '2019-04-08 03:15:32'),
(178, 'Agus Tianto', 'Front Office', 'Salah menginputkan nama pemohon Santi Jayanti', '2019-04-08 04:23:00', '11:23:00', 'Selesai', '2019-04-08 04:23:41', 'Sudah dilakukan perubahan nama', '2019-04-08 04:23:51'),
(179, 'Pak Anton', 'Back Office', 'Merubah tampilan pdf pada Persetujuan Pemenuhan Komitmen Izin Usaha Jasa Penunjang Tenaga Listrik Atas Nama PT. Kuantan Tekhnik Perkasa', '2019-04-08 07:26:52', '14:26:52', 'Selesai', '2019-04-08 07:28:10', 'sudah dirubah melalui acts/ipiujptl10', '2019-04-08 07:28:51'),
(180, 'Idrian', 'Front Office', 'Menginputkan permohonan riset menggunakan akun pak Yuki dan Pak Masdefi. Terjadi kesalahan karena Idrian terburu-buru dalam menginputkan data atas nama pemohon Cindy Mayangsari dan Desmer Aritha Manurung.', '2019-04-08 07:41:22', '14:41:22', 'Selesai', '2019-04-08 07:42:56', 'Sudah dilakukan perubahan pada diadministrasikan oleh Idrian', '2019-04-08 07:43:18'),
(181, 'Bu Erta', 'Back Office', 'Merubah format pada header dan merubah kata\" pada point ketiga file pdf di PAK', '2019-04-09 02:14:42', '09:14:42', 'Selesai', '2019-04-09 02:15:37', 'Sudah dilakukan perubahan pada format PDF PAK', '2019-04-09 02:15:54'),
(182, 'Pak Irwan Yanofrizon', 'A', 'pada format pdf PT Capella, NIP Bu Yul (Kabid C) tidak menampilkan data yang benar, hanya 0 000 000 00', '2019-04-09 04:04:20', '11:04:20', 'Selesai', '2019-04-09 04:14:22', 'Sudah dilakukan perubahan dan pembenaran', '2019-04-10 07:40:19'),
(183, 'Kak Widya', 'C', 'Mengubah format pdf Buper, kata-kata mengalami pergantian', '2019-04-09 04:15:19', '11:15:19', 'Selesai', '2019-04-09 04:25:24', 'Sudah dilakukan perubahan', '2019-04-09 04:25:36'),
(184, 'buk erta', 'A', 'sertifikat distribusi cabang pedagang besar farmasi, mengecilkan font di bawah memutuskan', '2019-04-09 07:43:58', '14:43:58', 'Selesai', '2019-04-09 07:51:21', 'Sudah dilakukan perbaikan pada kata\" dan penggunaan huruf kapital pada format pdf', '2019-04-09 07:52:22'),
(185, 'Pak Erick', 'Back Office', 'PT. Translindo, pada format pdf tolong dijadikan 1 halaman dan terdapat kesalahan pada atas nama tanda tangan yang harusnya bu Yuli , tetapi yang tercantum ialah Bu Vera', '2019-04-09 07:49:56', '14:49:56', 'Selesai', '2019-04-09 07:51:19', 'Sudah dilakukan perbaikan dan perubahan pada format pdf', '2019-04-09 07:51:50'),
(186, 'Bu Erta', 'Back Office', 'Merubah pada Memutuskan Kesatu : menjadi pakPerihal pada permohonan PT.Parit Padang Global tentang Sertifikat Distribusi Cabang Penyalur Alat Kesehatan dan Pergantian Penanggung Jawab Teknis', '2019-04-09 08:39:30', '15:39:30', 'Selesai', '2019-04-09 08:41:27', 'Sudah dirubah menjadi Dinamis yang sebelumnya hanya statis', '2019-04-09 08:41:47'),
(187, 'Idrian', 'Front Office', 'Merubah beberapa point pada Checklist Permohonan Surat Persetujuan Pemenuhan Komitmen Rekomendasi Pemasukan dan Pengeluaran Produk Hewan (Pemasukan Produk Pangan Asal Hewan Antar Provinsi)', '2019-04-10 07:36:02', '14:36:02', 'Selesai', '2019-04-10 07:38:26', 'Sudah dilakukan perubahan pada point\" tertentu sesuai dengan permintaan', '2019-04-10 07:39:07'),
(188, 'Agus Tianto', 'Front Office', 'Pada permohonan Riset Online pada pemohon Toni Panas Lawolo, pada kolom tanggal tertutupi dengan TTE', '2019-04-11 04:14:26', '11:14:26', 'Selesai', '2019-04-11 04:15:35', 'Sudah dilakukan perbaikan', '2019-04-11 04:15:48'),
(189, 'Pak Hidayat', 'Back Office', 'Ingin melihat email pemohon pada PT Indosat', '2019-04-11 04:26:56', '11:26:56', 'Selesai', '2019-04-11 04:27:26', 'Dapat dilihat di fitur Ubah Permohonan', '2019-04-11 04:27:45'),
(190, 'Endang', 'Front Office', 'Perbaikan E-voting, pemohon salah menekan tidak puas padahal pemohon ingin menekan tombol PUAS', '2019-04-11 04:34:50', '11:34:50', 'Selesai', '2019-04-11 04:35:44', 'Sudah dilakukan perubahan data', '2019-04-11 04:36:05'),
(191, 'Pak Hidayat', 'Back Office', 'Mengalami masalah pada text editor jika ingin membuat text dengan bullet & numbering type alfabet', '2019-04-11 09:37:00', '16:37:00', 'Selesai', '2019-04-11 09:37:54', 'Sudah dilakukan perbaikan ', '2019-04-11 09:38:11'),
(192, 'dimas', 'Front Office', 'penambahan beberapa syarat\r\n', '2019-04-12 09:10:08', '16:10:08', 'Selesai', '2019-04-12 09:10:42', 'sudah ditambah\r\n', '2019-04-12 09:11:00'),
(193, 'Bu Eva', 'Back Office', 'Mengubah jenis dari Baru menjadi Perpanjangan PT. Nusantara Repi', '2019-04-15 01:37:32', '08:37:32', 'Selesai', '2019-04-15 01:38:38', 'Sudah dilakukan perubahan', '2019-04-15 01:38:51'),
(194, 'Endang', 'Front Office', 'Internet tidak berjalan ', '2019-04-15 01:46:16', '08:46:16', 'Selesai', '2019-04-15 02:24:45', 'Sudah dilakukan perbaikan dengan mengganti IP', '2019-04-15 02:25:11'),
(195, 'Kak Yesi', 'Back Office', 'Enter pada Titik Koordinat (sippa) terlalu banyak sehingga terjadi perubahan pada surat pdf PT. Mallindo', '2019-04-15 03:57:26', '10:57:26', 'Selesai', '2019-04-15 03:59:38', 'Sudah di lakukan perubahan', '2019-04-15 03:59:48'),
(196, 'Bu Erta', 'Back Office', 'Merubah tanggal pada LOG Permohonan point 3 sampai 5 pada PT United', '2019-04-15 04:19:16', '11:19:16', 'Selesai', '2019-04-15 04:31:32', 'Sudah dilakukan perubahan', '2019-04-15 04:31:48'),
(197, 'Bu Erta', 'Back Office', 'PT Parit Padang Global pada Log Permohonan Perubahan pada point ke 3,4,dan 5. Perubahan pada tanggal', '2019-04-15 04:43:56', '11:43:56', 'Selesai', '2019-04-15 04:45:35', 'Sudah dilakukan perubahan', '2019-04-15 04:45:43'),
(198, 'Kak Yezi', 'Pengaduan', 'Terjadi kesalahan filter tahun pada Laporan', '2019-04-15 07:52:52', '14:52:52', 'Selesai', '2019-04-15 07:53:30', 'Sudah dilakukan perbaikan', '2019-04-15 07:54:55'),
(199, 'Pak Sadat', 'C', 'Permohonan PT Indosat di PUPR terjadi keunikan, 1 permohonan memuat 2 survey beda lokasi', '2019-04-15 08:10:38', '15:10:38', 'Selesai', '2019-04-15 08:11:31', 'SUdah diselesaikan', '2019-04-16 02:22:57'),
(200, 'Bu Erta', 'Back Office', 'Pada Pergantian Penanggung Jawab Teknis Distribusi Cabang Penyalur Alat Kesehatan (PAK) di tab PAK Pergantian Penganggung Jawab setelah text Sehubungan dengan surat permohonan saudara Nomor 038/III/2019/APL-PKB tanggal 26 Maret 2019 Perihal di kolom inputan tidak dapat di simpan dan di edit', '2019-04-16 02:21:25', '09:21:25', 'Selesai', '2019-04-16 02:22:49', 'Terjadi bentrokan pada variabel pakhaldua', '2019-04-16 02:23:25'),
(201, 'Pak Sadat', 'C', 'PT. Indosat Tbk pada permohonan Izin Pemanfaatan Ruang Pada Ruas Jalan Provinsi. Menghilangkan keterangan untuk pada pdf tte seblum kata\" \"telah memenuhi syarat-syarat sebagaimana mestinya.\"', '2019-04-16 03:13:54', '10:13:54', 'Selesai', '2019-04-16 03:18:22', 'Keterangan unutk di view dan untuk di pdf tte sudah dihilangkan', '2019-04-16 03:18:49'),
(202, 'Pak Sadat', 'C', 'Terdapat 2 data yang memiliki nomor urut yang sama = 190116076 PT. CAPELLA DINAMIK NUSANTARA', '2019-04-16 03:27:30', '10:27:30', 'Selesai', '2019-04-16 03:28:51', 'Menghapus data `dmhnID` = 1265663 dan `mhnID` = 54882 karena data tersebut tidak ditindak lanjuti', '2019-04-16 03:29:56'),
(203, 'Kak Dina', 'Back Office', 'Mengubah tanggal pada TTE STTRK', '2019-04-16 04:18:57', '11:18:57', 'Selesai', '2019-04-16 04:19:23', 'Sudah di selesaikan', '2019-04-16 04:19:33'),
(204, 'Bu Erta', 'A', 'Menghilangkan persyaratan pada Permohonan izin Cabang Distribusi Alat Kesehatan (Baru) a.n. PT. AMANAH JAYA BERSAMA.  Menghilangkan : Surat Pengunduran Diri PJT lama, Berita Acara Serah Terima antara Penanggung Jawab yang ke yang baru, Jika Pengurusan diwakilkan, Nomor Induk Pegawai (NIP), Izin Usaha, Izin Usaha, Izin Lokasi, dan Nomor Induk Berusaha (NIB)', '2019-04-16 04:31:18', '11:31:18', 'Selesai', '2019-04-16 04:35:10', 'Sudah dihilangkan sesuai dengan permintaan', '2019-04-16 04:35:33'),
(205, 'Bu Erta', 'A', 'Tri Sapta tidak muncul notifikasi pada Back Office Kesehata (Dina)', '2019-04-16 04:39:05', '11:39:05', 'Selesai', '2019-04-16 04:39:34', 'Sudah muncul', '2019-04-16 04:39:39'),
(206, 'Bu Erta', 'A', 'Menghilangkan persyaratan pada Permohonan izin Cabang Distribusi Alat Kesehatan (Baru) a.n. PT. AMANAH JAYA BERSAMA. Menghilangkan : Daftar Nama dan salinan ijazah terknisi (bila perlu), daftar buku kepustakaan tentang akses yang disalurkan dan peraturan, Salinan izin PAK yang lama untuk perubahan dan perpanjangan izin PAK', '2019-04-16 05:02:24', '12:02:24', 'Selesai', '2019-04-16 05:03:49', 'Telah dilakukan unceklis pada entri permohonan', '2019-04-16 05:04:16'),
(207, 'buk erta', 'A', 'merubah status keterangan pada perusahaan bina san prima menjadi dikembalikan', '2019-04-16 05:07:39', '12:07:39', 'Selesai', '2019-04-16 08:26:35', 'Sudah dilakukan Perubahan', '2019-04-16 08:26:45'),
(208, 'Bu Erta', 'Back Office', 'Perubahan pada PBF di perihal dan penambahan menu inputan pada point kedua di entri permohonan. Pengapusan point kelima pada PDF Permintaan Pertimbangan Teknis Pergantian Penanggung Jawab Teknis Distributor Cabang PBF dan merubah nama perihal menjadi itu.', '2019-04-16 08:23:14', '15:23:14', 'Selesai', '2019-04-16 08:26:04', 'Sudah diselesaikan dengan aman dan tentram. ubah di view pbf', '2019-04-16 08:26:26'),
(209, 'Pak Masdepi', 'A', 'izinnya ga pakai simpel, jadi penyerahannya secara lgsg', '2019-04-16 07:39:03', '14:39:03', 'Selesai', '2019-04-18 01:54:12', 'Sudah di selesaikan', '2019-04-18 01:54:42'),
(210, 'Pak Anton', 'Back Office', 'Pada laporan di TTE ,PT Kuantan Teknik. Nomor Barcode serta TTE turun kebawah hingga membuat halaman baru. Pak Anton ingin menjadi 1 halaman saja.', '2019-04-18 01:42:15', '08:42:15', 'Selesai', '2019-04-18 01:47:57', 'sudah dirubah dari coding, merubah ukuran.', '2019-04-18 01:49:41'),
(211, 'Bu Eldesni Hayati', 'Back Office', 'Memindahkan permohonan dari BO Yendrawati ke Eldesni Hayati  pada permohonan PT. Rekso National Food (Mc\'D)', '2019-04-18 03:04:36', '10:04:36', 'Selesai', '2019-04-18 03:06:14', 'Sudah dilakukan perubahan BO', '2019-04-18 03:06:24'),
(212, 'Pak Anton', 'Back Office', 'PT. Quasar Inti Nusantara sudah di upload, tapi tidak muncul di BO', '2019-04-18 04:27:08', '11:27:08', 'Selesai', '2019-04-18 04:27:45', 'Sudah dilakukan perbaikan', '2019-04-18 07:06:22'),
(214, 'Pak Erick', 'Back Office', 'PT. Pertamina Persero dan PT Translindo Abadi Makmur pada tembusan di PDF (laporan),  tembusan turun ke bawah sehingga membuat halaman baru dibawah.', '2019-04-18 07:13:40', '14:13:40', 'Selesai', '2019-04-18 07:46:03', 'Sudah dilakukan perubahan', '2019-04-18 07:46:14'),
(215, 'pak BO', 'Back Office', 'syarat di checklist permohonan surat izin operasional pendidikan khusus yang diselenggarakan oleh masyarakat', '2019-04-18 09:14:38', '16:14:38', 'Selesai', '2019-04-23 02:40:02', 'sudah di selesaikan', '2019-04-23 02:40:23'),
(216, 'sss', 'B', 'ssss', '2019-05-24 06:39:51', '13:39:51', 'Selesai', NULL, 'Telah diselesaikan sesuai dengan permintaan', '2019-05-24 07:39:02'),
(217, 'Idrian', 'A', 'dwa', '2019-05-24 06:41:44', '13:41:44', 'Selesai', NULL, 'Telah diselesaikan sesuai dengan permintaan', '2019-05-24 07:41:26'),
(218, 'da', 'B', 'dad', '2019-05-24 06:43:59', '13:43:59', 'Selesai', NULL, 'Telah diselesaikan sesuai dengan permintaan', '2019-05-24 07:43:06'),
(219, 'ad', 'B', 'adad', '2019-05-24 06:45:22', '13:45:22', 'Belum', NULL, '', NULL),
(220, 'dwad', 'B', 'dwdwadwad', '2019-05-24 06:46:20', '13:46:20', 'Belum', NULL, '', NULL),
(221, 'dddd', 'B', 'ddd', '2019-05-24 07:19:23', '14:19:23', 'Belum', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `penjualanname` varchar(30) NOT NULL,
  `pembeli` varchar(30) NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `penjualanname`, `pembeli`, `harga`) VALUES
(3, 'Dell PC Rakitanaaa', 'Politeknik Caltex Riau', '900000'),
(4, 'ROG', 'Kantin', '2000000'),
(5, 'HP', 'Sarana', '900000'),
(6, 'oi', 'iqbal', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(4, 'ika', 'ika@gmail.com', 'default.jpg', '$2y$10$VaSyNYsNDjat1UgBaJJYx.eaQCndmIPxioe0wqHdksKvFNoAC.2Mi', 2, 1, '2019-05-23 16:02:27'),
(5, 'iqbal', 'ironskycruise@gmail.com', 'default.jpg', '$2y$10$VaSyNYsNDjat1UgBaJJYx.eaQCndmIPxioe0wqHdksKvFNoAC.2Mi', 1, 1, '2019-05-24 02:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fname`) VALUES
(1, 'nurhodelta', 'iamnurhodelta', 'Neovic Devierte'),
(2, 'gemacep', 'mypassword', 'Gemalyn Cepe');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'Cobaan');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 2, 'Dashboard', 'masalah', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'profile', 'fas fa-fw fa-user-ninja', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(6, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(8, 1, 'Percobaan di admin', 'coba/coba', 'fab fa-fw fa-youtube', 1),
(9, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masalah`
--
ALTER TABLE `masalah`
  ADD PRIMARY KEY (`id_masalah`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `masalah`
--
ALTER TABLE `masalah`
  MODIFY `id_masalah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
