<?php
  date_default_timezone_set("Asia/Jakarta");
  $nama_website = 'JONATAN777';
  $alamat_website = getenv('ALAMAT_WEBSITE') ?: '/'; //diakhiri dengan slash /
  $alamat_website_admin = getenv('ALAMAT_WEBSITE_ADMIN') ?: '/mimintop/'; //diakhiri dengan slash /
  $qris_link = '';
  
  $host = getenv('DB_HOST') ?: 'localhost';
  $username = getenv('DB_USER') ?: 'root';
  $password = getenv('DB_PASS') ?: '';
  $database = getenv('DB_NAME') ?: 'jonatan777';
  $koneksi = mysqli_connect($host, $username, $password, $database);
  if (!$koneksi) {
    echo "Kesalahan : Tidak dapat terhubung ke database." . PHP_EOL;
    echo "Kode Kesalahan : " . mysqli_connect_errno() . PHP_EOL;
    echo "Pesan Kesalahan : " . mysqli_connect_error() . PHP_EOL;
    exit;
  }
?>