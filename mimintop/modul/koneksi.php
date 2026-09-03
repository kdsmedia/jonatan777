<?php
  date_default_timezone_set("Asia/Jakarta");
  $nama_website = 'JONATAN777';
  $alamat_website = 'https://domain-anda.com/'; //ganti dengan domain hosting -> diakhiri dengan slash /
  $alamat_website_admin = 'https://domain-anda.com/mimintop/'; //ganti dengan domain hosting -> diakhiri dengan slash /
  $qris_link = '';
  
  $host = "localhost";
  $username = "USER_DATABASE"; //ganti dengan username database hosting
  $password = "PASS_DATABASE"; //ganti dengan password database hosting
  $database = "NAMA_DATABASE"; //ganti dengan nama database yang dibuat di hosting (contoh: jonatan777,)
  $koneksi = mysqli_connect($host, $username, $password, $database);
  if (!$koneksi) {
    echo "Kesalahan : Tidak dapat terhubung ke database." . PHP_EOL;
    echo "Kode Kesalahan : " . mysqli_connect_errno() . PHP_EOL;
    echo "Pesan Kesalahan : " . mysqli_connect_error() . PHP_EOL;
    exit;
  }
?>