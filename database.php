<?php
	// Konfigurasi koneksi database
	$host = 'localhost'; // Nama host database
	$username = 'root'; // Nama pengguna database
	$password = ''; // Kata sandi database
	$database = 'calaya_food'; // Nama database
	
	// Membuat koneksi ke database
	$conn = mysqli_connect($host, $username, $password, $database);
	
	// Memeriksa koneksi
	if (!$conn) {
		die("Koneksi gagal: " . mysqli_connect_error());
	}
?>
	