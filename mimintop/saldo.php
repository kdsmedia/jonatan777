<?php
// Cek apakah form telah disubmit
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Tangkap data dari form
    $nama_pengguna = $_POST['nama_pengguna'];
    $nominal = $_POST['nominal'];
    $jenis = $_POST['jenis'];

    // Query untuk mendapatkan id_akun berdasarkan nama pengguna
    $query_akun = mysqli_query($koneksi, "SELECT id_akun FROM akun WHERE nama_pengguna_akun = '$nama_pengguna'");
    $row_akun = mysqli_fetch_assoc($query_akun);
    $id_akun = $row_akun['id_akun'];

    // Query untuk mendapatkan total saldo berdasarkan id_akun
    $query_saldo = mysqli_query($koneksi, "SELECT total_saldo FROM saldo WHERE id_akun_saldo = '$id_akun'");
    $row_saldo = mysqli_fetch_assoc($query_saldo);
    $total_saldo = $row_saldo['total_saldo'];

    // Hitung saldo baru
    if ($jenis == "tambah") {
        $saldo_baru = $total_saldo + $nominal;
    } elseif ($jenis == "kurangi") {
        $saldo_baru = $total_saldo - $nominal;
    }

    // Update saldo di tabel saldo
    $update_saldo = mysqli_query($koneksi, "UPDATE saldo SET total_saldo = '$saldo_baru' WHERE id_akun_saldo = '$id_akun'");

    if ($update_saldo) {
        echo "Saldo berhasil diperbarui.";
    } else {
        echo "Gagal memperbarui saldo.";
    }
}
?>


<!-- Judul Saldo Member -->
<h4 class="mb-3">Saldo Member</h4>

<!-- Form Saldo Member -->
<form method="post">
<div class="mb-3">
    <label for="nama_pengguna" class="form-label">Nama Pengguna Akun</label>
    <select class="form-select" id="nama_pengguna" name="nama_pengguna" required>
        <option value="">Pilih Nama Pengguna</option>
        <?php
        // Query untuk mengambil data nama pengguna dan nama lengkap dari tabel akun
        $query = mysqli_query($koneksi, "SELECT a.nama_pengguna_akun, a.nama_lengkap_akun, s.total_saldo FROM akun a LEFT JOIN saldo s ON a.id_akun = s.id_akun_saldo");
        while ($row = mysqli_fetch_array($query)) {
            // Format saldo sebagai Rupiah
            $saldo_formatted = "Rp. " . number_format($row['total_saldo'], 0, ',', '.');
            // Gabungkan nama pengguna, nama lengkap, dan saldo dalam satu opsi dropdown
            echo '<option value="' . $row['nama_pengguna_akun'] . '">(' . $row['nama_pengguna_akun'] . ') - ' . $row['nama_lengkap_akun'] . ' - ' . $saldo_formatted . '</option>';
        }
        ?>
    </select>
</div>


  <div class="mb-3">
    <label for="nominal" class="form-label">Nominal</label>
    <input type="number" class="form-control" id="nominal" name="nominal" required>
  </div>
  <div class="mb-3">
    <label for="jenis" class="form-label">Jenis</label>
    <select class="form-select" id="jenis" name="jenis" required>
      <option value="">Pilih Jenis</option>
      <option value="tambah">Tambah Saldo</option>
      <option value="kurangi">Kurangi Saldo</option>
    </select>
  </div>
  <button type="submit" class="btn btn-primary">Simpan</button>
</form>
