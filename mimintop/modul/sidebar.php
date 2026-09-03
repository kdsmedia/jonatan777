<div class="offcanvas offcanvas-end text-white bg-king w-75" data-bs-backdrop="static" tabindex="-1" id="menunya">
  <div class="offcanvas-header">
    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    <h5 class="offcanvas-title d-block mx-auto">
      <?php
        if (isset($_SESSION['id_akun'])) {
          echo 'Profil Saya';
        } else {
          echo 'Login';
        }
      ?>
    </h5>
    <?php
  if (isset($_SESSION['id_akun'])) {
    echo '<a href="' . $alamat_website . 'keluar.php">
      <img src="' . $alamat_website_admin . 'assets/images/svg/logout.svg" class="me-2" id="keluar" width="18" height="18" style="cursor: pointer;">
    </a>';
  }
?>

  </div>
  <div class="offcanvas-body">
    <?php
      if (isset($_SESSION['id_akun'])) {
    ?>
    <div class="border border-secondary p-2" style="font-size: 16px;">
      <span class="me-1">IDR</span>
      <span class="text-white"><?php echo number_format($total_saldo).'.00'; ?></span>
    </div>
    <div class="user-menu">
      <div class="user-menu-item">
        <a href="<?php echo $alamat_website.'deposit'; ?>">
          <img src="<?php echo $alamat_website_admin; ?>assets/images/svg/deposit.svg" alt="Deposit">
          DEPOSIT
        </a>
      </div>
      <div class="user-menu-item border border-top-0 border-bottom-0">
        <a href="<?php echo $alamat_website.'withdraw'; ?>">
          <img src="<?php echo $alamat_website_admin; ?>assets/images/svg/withdrawal.svg" alt="Deposit">
          WITHDRAW
        </a>
      </div>
      <div class="user-menu-item">
        <a href="<?php echo $alamat_website.'akun_saya'; ?>">
          <img src="<?php echo $alamat_website_admin; ?>assets/images/svg/profile.svg" alt="Deposit">
          AKUN SAYA
        </a>
      </div>
    </div>
        <div class="d-flex justify-content-between align-items-center text-white my-3" id="menu" style="cursor: pointer;">
      <div class="d-flex align-items-center"><img src="<?php echo $alamat_website_admin; ?>assets/images/svg/hot-games.svg" class="me-2" width="18" height="18"> Games</div>
      <i class="ri-arrow-right-s-line" id="panah"></i>
    </div>
    <div class="text-white ps-4" id="expand_menu">
      <?php
        $query_menu_games = mysqli_query($koneksi, "SELECT * FROM menu_games");
        while ($data_menu_games = mysqli_fetch_array($query_menu_games)) {
          $id_menu_games = $data_menu_games['id_menu_games'];
          $judul_menu_games = $data_menu_games['judul_menu_games'];
          $link_menu_games = $data_menu_games['link_menu_games'];
      ?>
      <div class="d-flex justify-content-between align-items-center text-white my-3" id="menu_<?php echo $id_menu_games; ?>" style="cursor: pointer;">
        <?php echo $judul_menu_games; ?>
        <i class="ri-arrow-right-s-line" id="panah_<?php echo $id_menu_games; ?>"></i>
      </div>
      <div class="text-white ps-4" id="expand_menu_<?php echo $id_menu_games; ?>">
        <?php
          $query_sub_menu_games = mysqli_query($koneksi, "SELECT * FROM sub_menu_games WHERE id_menu_games_sub_menu_games = '$id_menu_games'");
          while ($data_sub_menu_games = mysqli_fetch_array($query_sub_menu_games)) {
            $id_sub_menu_games = $data_sub_menu_games['id_sub_menu_games'];
            $judul_sub_menu_games = $data_sub_menu_games['judul_sub_menu_games'];
            $link_sub_menu_games = $data_sub_menu_games['link_sub_menu_games'];
        ?>
        <a href="<?php echo $alamat_website.$link_menu_games.'/'.$link_sub_menu_games; ?>" class="d-block text-white text-decoration-none mb-3"><?php echo $judul_sub_menu_games; ?></a>
        <?php
          }
        ?>
      </div>
      <?php
        }
      ?>
    </div>
    <div class="d-flex justify-content-between align-items-center text-white my-3" id="beranda1" style="cursor: pointer;">
      <div class="d-flex align-items-center"><img src="<?php echo $alamat_website_admin; ?>assets/images/svg/message.svg" class="me-2" width="18" height="18"> Pesan</div>
    </div>
    <div class="d-flex justify-content-between align-items-center text-white my-3" id="beranda2" style="cursor: pointer;">
      <div class="d-flex align-items-center"><img src="<?php echo $alamat_website_admin; ?>assets/images/svg/reporting.svg" class="me-2" width="18" height="18"> Riwayat Taruhan</div>
    </div>

    <div class="d-flex justify-content-between align-items-center text-white my-3" id="beranda4" style="cursor: pointer;">
      <div class="d-flex align-items-center"><img src="<?php echo $alamat_website_admin; ?>assets/images/svg/download.svg" class="me-2" width="18" height="18"> Download Game APK</div>
    </div>
<?php
$query_akun_masuk = mysqli_query($koneksi, "SELECT * FROM akun WHERE id_akun = '$id_akun_masuk'");
    $data_akun_masuk = mysqli_fetch_array($query_akun_masuk);
    $nama_pengguna_akun_masuk = $data_akun_masuk['nama_pengguna_akun'];
?>
           <div class="d-flex justify-content-between align-items-center text-white my-3" id="beranda3" style="cursor: pointer;">
            <div class="d-flex align-items-center"><img src="<?php echo $alamat_website_admin; ?>assets/images/svg/referral.svg" class="me-2" width="18" height="18"> Referensi</div>
    </div>

        <div class="input-group mb-3">

        <input type="text" name="referensi" class="form-control text-white bg-white bg-opacity-50 border-0 rounded-0" id="referensi" value="<?php echo $alamat_website; ?>daftar?referensi=<?php echo $nama_pengguna_akun_masuk; ?>" readonly>
        <span class="input-group-text text-white btn-utama bg-opacity-50 border-0 rounded-0" id="tombol-salin-<?php echo $alamat_website; ?>daftar?referensi=<?php echo $nama_pengguna_akun_masuk; ?>" style="cursor: pointer;">
          <span class="ri-file-fill me-1" onclick="copy_affiliate()" data-clipboard-text="<?php echo $alamat_website; ?>daftar?referensi=<?php echo $nama_pengguna_akun_masuk; ?>"></span>
        </span>
      </div>

    <?php
      } else {
    ?>

    <form method="post">
      <label class="form-label fs-6">Nama Pengguna</label>
      <div class="input-group mb-3">
        <span class="input-group-text text-white bg-white bg-opacity-50 border-0 rounded-0">
          <i class="ri-user-line"></i>
        </span>
        <input type="text" name="nama_pengguna_akun" class="form-control text-white bg-white bg-opacity-50 border-0 rounded-0">
      </div>
      <label class="form-label fs-6">Kata Sandi</label>
      <div class="input-group mb-3">
        <span class="input-group-text text-white bg-white bg-opacity-50 border-0 rounded-0">
          <i class="ri-lock-line"></i>
        </span>
        <input type="password" name="kata_sandi_akun" class="form-control text-white bg-white bg-opacity-50 border-0 rounded-0" id="input-kata-sandi">
        <span class="input-group-text text-white bg-white bg-opacity-50 border-0 rounded-0" id="peralihan-kata-sandi" style="cursor: pointer;">
          <i id="kata-sandi" class="ri-eye-off-line"></i>
        </span>
      </div>
      <button type="submit" name="masuk" class="btn btn-utama rounded-0 fs-6 w-100">Masuk</button>
      <span class="d-block text-center fs-6">Lupa kata sandi? <i class="ri-share-forward-fill"></i></span>
      <span class="d-block fs-6 mt-5">Tidak terdaftar? <a href="<?php echo $alamat_website.'daftar'; ?>" class="fw-bold">Daftar</a></span>
    </form>
   <?php
    }
  ?>
  </div>
</div>