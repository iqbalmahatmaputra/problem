<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title><?= $title ?></title>

	<!-- Custom fonts for this template -->
	<link href="<?= base_url('assets/'); ?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link
		href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
		rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="<?= base_url('assets/'); ?>css/sb-admin-2.min.css" rel="stylesheet">

	<!-- Custom styles for this page -->
	<link href="<?= base_url('assets/'); ?>vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">Masalah <sup>3.0</sup></div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider">




			<!-- QUERY MENU -->
			<?php
      $role_id   = $this->session->userdata('role_id');
      $queryMenu = "SELECT `user_menu`.`id`, `menu`
      FROM `user_menu`
      JOIN `user_access_menu` 
      ON    `user_menu`.`id`             = `user_access_menu`.`menu_id`
      WHERE `user_access_menu`.`role_id` = $role_id
      ORDER BY `user_access_menu`.`menu_id` ASC
      ";
      $menu = $this->db->query($queryMenu)->result_array();
      ?>


			<!-- QUERY MENU END -->


			<!-- LOOPING MENU -->
			<?php foreach ($menu as $m) : 
        # code...
      ?>
			<div class="sidebar-heading">
				<?= $m['menu']; ?>
			</div>

			<!-- sub menu -->
      <?php 
      $menuId       = $m['id'];
      $querySubMenu = "SELECT *
                          FROM `user_sub_menu` JOIN `user_menu`
                            ON    `user_sub_menu`.`menu_id`  = `user_menu`.`id`
                            WHERE `user_sub_menu`.`menu_id` = $menuId 
                            AND `user_sub_menu`.`is_active` = 1 ";
      $subMenu = $this->db->query($querySubMenu)->result_array();
      ?>

          <?php foreach ($subMenu as $sm ) : ?>
            			<!-- Nav Item - Dashboard -->
                  <?php if ($title == $sm['title']) : ?>
			<li class="nav-item active">
      <?php else : ?>
			<li class="nav-item">
      <?php endif; ?>
				<a class="nav-link pb-0" href="<?= base_url($sm['url']); ?>">
					<i class="<?= $sm['icon']; ?>"></i>
					<span><?= $sm['title']; ?></span></a>
			</li>

    			<?php endforeach; ?>
          		<!-- Divider -->
			<hr class="sidebar-divider mt-3">
			<?php endforeach; ?>


	

			<hr class="sidebar-divider">
			<!-- Nav Item - Charts -->
			<li class="nav-item">
				<a class="nav-link" href="<?= base_url('auth/logout'); ?>">
					<i class="fas fa-fw fa-sign-out-alt"></i>
					<span>Logout</span></a>
			</li>


			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->
