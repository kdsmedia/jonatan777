<div class="app-menu navbar-menu">
  <div class="navbar-brand-box">
    <a href="index.php" class="logo logo-dark">
      <span class="logo-sm">
        <img src="assets/images/logo-sm.png" alt="" height="22">
      </span>
      <span class="logo-lg">
        <img src="assets/images/logo-dark.png" alt="" height="17">
      </span>
    </a>
    <a href="index.php" class="logo logo-light">
      <span class="logo-sm">
        <img src="assets/images/logo-sm.png" alt="" height="22">
      </span>
      <span class="logo-lg">
        <img src="assets/images/logo-light.png" alt="" height="17">
      </span>
    </a>
    <button type="button" class="btn btn-sm p-0 fs-20 header-item float-end btn-vertical-sm-hover" id="vertical-hover">
      <i class="ri-record-circle-line"></i>
    </button>
  </div>
  <div id="scrollbar">
    <div class="container-fluid">
      <div id="two-column-menu">
      </div>
      <ul class="navbar-nav" id="navbar-nav">

        <li class="nav-item">
          <a class="nav-link menu-link" id="dasbor" href="<?php echo $alamat_website_admin.'dasbor'; ?>">
            <i class="ri-dashboard-2-line"></i><span>Dasboard</span>
          </a>
        </li>
       <li class="menu-title"><span>Member</span></li>
       <li class="nav-item">
          <a class="nav-link menu-link" id="anggota" href="<?php echo $alamat_website_admin.'anggota'; ?>">
            <i class="ri-user-line"></i><span>Anggota</span>
          </a>
        </li>
               <li class="nav-item">
          <a class="nav-link menu-link" id="saldo" href="<?php echo $alamat_website_admin.'saldo'; ?>">
            <i class="ri-money-dollar-circle-line"></i><span>Edit Saldo</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link menu-link" id="deposit" href="<?php echo $alamat_website_admin.'deposit'; ?>">
            <i class="ri-money-dollar-circle-line"></i><span>Deposit</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link menu-link" id="withdraw" href="<?php echo $alamat_website_admin.'withdraw'; ?>">
            <i class="ri-money-dollar-circle-line"></i><span>Withdraw</span>
          </a>
        </li>
        <li class="menu-title"><span>Games</span></li>
        <li class="nav-item">
          <a class="nav-link menu-link" id="games" href="<?php echo $alamat_website_admin.'games'; ?>">
            <i class="ri-gamepad-line"></i><span>Games</span>
          </a>
        </li>
        <li class="menu-title"><span>Ads</span></li>
        <li class="nav-item">
          <a class="nav-link menu-link" id="promosi" href="<?php echo $alamat_website_admin.'promosi'; ?>">
            <i class="ri-fire-line"></i><span>Promosi</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link menu-link" id="slideshow" href="<?php echo $alamat_website_admin.'slideshow'; ?>">
            <i class="ri-fire-line"></i><span>Slideshow</span>
          </a>
        </li>
        <li class="menu-title"><span>Pembayaran</span></li>
        <li class="nav-item">
          <a class="nav-link menu-link" id="bank" href="<?php echo $alamat_website_admin.'bank'; ?>">
            <i class="ri-visa-line"></i><span>Bank</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link menu-link" id="rekening" href="<?php echo $alamat_website_admin.'rekening'; ?>">
            <i class="ri-bank-line"></i><span>Rekening</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link menu-link" id="rekening_admin" href="<?php echo $alamat_website_admin.'rekening_admin'; ?>">
            <i class="ri-bank-card-2-line"></i><span>Rekening Admin</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link menu-link" id="rekening_anggota" href="<?php echo $alamat_website_admin.'rekening_anggota'; ?>">
            <i class="ri-bank-card-line"></i><span>Rekening Anggota</span>
          </a>
        </li>
        <li class="menu-title"><span>Lainnya</span></li>
        <li class="nav-item">
          <a class="nav-link menu-link" id="profil" href="<?php echo $alamat_website_admin.'profil'; ?>">
            <i class="ri-user-settings-line"></i><span>Profil</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link menu-link" id="pengaturan" href="<?php echo $alamat_website_admin.'pengaturan'; ?>">
            <i class="ri-settings-3-line"></i><span>Pengaturan</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link menu-link" href="keluar.php" data-bs-toggle="modal">
            <i class="ri-logout-box-line"></i><span>Keluar</span>
          </a>
        </li>
      </ul>
    </div>
  </div>
  <div class="sidebar-background"></div>
</div>