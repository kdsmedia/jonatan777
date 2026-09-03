<?php
  date_default_timezone_set("Asia/Jakarta");
  $nama_website = 'Nexus77';
  $alamat_website = 'http://localhost/slot/'; //ganti domain.com -> diakhiri dengan slash /
  $alamat_website_admin = 'http://localhost/slot/mimintop/'; //ganti domain.com -> diakhiri dengan slash /
  $qris_link = '';
  
  $host = "localhost";
  $username = "root";
  $password = "";
  $database = "slot";
  $koneksi = mysqli_connect($host, $username, $password, $database);
  if (!$koneksi) {
    echo "Kesalahan : Tidak dapat terhubung ke database." . PHP_EOL;
    echo "Kode Kesalahan : " . mysqli_connect_errno() . PHP_EOL;
    echo "Pesan Kesalahan : " . mysqli_connect_error() . PHP_EOL;
    exit;
  }
?>