<?php
include('../models/min/proses_edit_pemesanan.php');
class c_edit_pemesanan

{
	private $config;

	function edit(){
		$id_pemesanan = $_POST['id_pemesanan'];
		$nama_pemesan = $_POST['nama_produk'];
		$email = $_POST['email'];
		$alamat = $_POST['alamat'];
		$kota = $_POST['kota'];
		$no_telepon = $_POST['no_telepon'];
		$total = $_POST['total'];
		$tanggal = $_POST['tanggal'];
		$nama_produk = $_POST['nama_produk'];
		$proses_edit_pemesanan = new proses_edit_pemesanan();
		$proses_edit_pemesanan->update($id_pemesanan,$nama_pemesan,$email,$alamat,$kota,$no_telepon,$total,$tanggal,$nama_produk);
		$this->config['router']->redirect('c_edit_pemesanan','index');
	}
}
?>