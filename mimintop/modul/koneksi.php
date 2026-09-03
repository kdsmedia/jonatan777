<?php
  date_default_timezone_set("Asia/Jakarta");
  $nama_website = 'JONATAN777';
  $alamat_website = 'https://jonatan777.gamer.free/'; //diakhiri dengan slash /
  $alamat_website_admin = 'https://jonatan777.gamer.free/mimintop/'; //diakhiri dengan slash /
  $qris_link = '';
  
  $host = "sql313.infinityfree.com";
  $username = "if0_42823199";
  $password = "Kdsmedia123";
  $database = "if0_42823199_jonatan777";
  $koneksi = mysqli_connect($host, $username, $password, $database);
  if (!$koneksi) {
    echo "Kesalahan : Tidak dapat terhubung ke database." . PHP_EOL;
    echo "Kode Kesalahan : " . mysqli_connect_errno() . PHP_EOL;
    echo "Pesan Kesalahan : " . mysqli_connect_error() . PHP_EOL;
    exit;
  }
?>