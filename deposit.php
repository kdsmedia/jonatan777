<?php
error_reporting(0);
session_start();

if (empty($_SESSION['id_akun'])) {
    echo '<script>window.location.replace("'.$alamat_website.'masuk");</script>';
    exit;
}

include_once "qris.php";
