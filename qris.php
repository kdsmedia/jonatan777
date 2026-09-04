<?php
error_reporting(0);
session_start();

$kd = "DP-";

if (isset($_POST['deposit'])) {
    $id_akun_deposit = $id_akun_masuk;
    $kode_deposit = $kd.(generatorRangkaianAcak(10));
    $kategori_rekening_deposit = "qris";
    $id_rekening_anggota_deposit = 0;
    $id_rekening_admin_deposit = 32;
    $jumlah_deposit = $_POST['jumlah_deposit'];
    $nomor_referensi_deposit = isset($_POST['nomor_referensi_deposit']) ? $_POST['nomor_referensi_deposit'] : '';
    $tanggal_deposit = date("Y-m-d H:i:s");

    if ($jumlah_deposit < 10000) {
        echo '
            <script>
                alert("Minimal Deposit Rp 10.000!");
            </script>';
    } else {
        $deposit = mysqli_query($koneksi, "INSERT INTO deposit (id_akun_deposit, kode_deposit, kategori_rekening_deposit, id_rekening_anggota_deposit, id_rekening_admin_deposit, jumlah_deposit, nomor_referensi_deposit, tanggal_deposit) VALUES ('$id_akun_deposit', '$kode_deposit', '$kategori_rekening_deposit', '$id_rekening_anggota_deposit', '$id_rekening_admin_deposit', '$jumlah_deposit', '$nomor_referensi_deposit', '$tanggal_deposit')");
        if ($deposit) {
            echo '
                <script>
                    alert("Deposit Telah Berhasil, silakan tunggu konfirmasi admin");
                    window.location.replace("riwayat_deposit");
                </script>';
        } else {
            echo '
                <script>
                    alert("Deposit Gagal: '.mysqli_error($koneksi).'");
                </script>';
        }
    }
}
?>

<div class="row gy-2 gx-0 d-flex justify-content-center align-items-center mt-5">
  <div class="col-10">
    <div class="deposit-note">
      <div class="deposit-note-icon">
        <img src="<?php echo $alamat_website_admin; ?>assets/images/svg/deposit-note.svg" alt="Deposit Note">
      </div>
      <div class="deposit-note-content">
        <span>Catatan:</span>
        <ol>
          <li>Minimal deposit Rp 10.000.</li>
          <li>Pilih nominal, lalu scan QRIS menggunakan aplikasi e-wallet / mobile banking yang mendukung QRIS.</li>
          <li>Setelah transfer, klik tombol "Saya Sudah Bayar" untuk mempercepat proses konfirmasi.</li>
        </ol>
      </div>
    </div>
  </div>

  <div class="col-10">
    <div class="bg-dark rounded p-2">
      <span class="d-block mb-2" style="font-size: 14px;">Pilih Nominal Deposit</span>
      <input type="text" name="jumlah_deposit" id="amount-input" class="form-control rounded-0 border-0 mb-2" autocomplete="off" placeholder="Minimal Deposit Rp 10.000" readonly>

      <div class="row g-2 mb-2">
        <div class="col-4"><button type="button" class="btn btn-utama w-100 btn-nominal" style="font-size: 12px;" onclick="setNominal(10000)">10.000</button></div>
        <div class="col-4"><button type="button" class="btn btn-utama w-100 btn-nominal" style="font-size: 12px;" onclick="setNominal(20000)">20.000</button></div>
        <div class="col-4"><button type="button" class="btn btn-utama w-100 btn-nominal" style="font-size: 12px;" onclick="setNominal(30000)">30.000</button></div>
        <div class="col-4"><button type="button" class="btn btn-utama w-100 btn-nominal" style="font-size: 12px;" onclick="setNominal(40000)">40.000</button></div>
        <div class="col-4"><button type="button" class="btn btn-utama w-100 btn-nominal" style="font-size: 12px;" onclick="setNominal(50000)">50.000</button></div>
        <div class="col-4"><button type="button" class="btn btn-utama w-100 btn-nominal" style="font-size: 12px;" onclick="setNominal(100000)">100.000</button></div>
      </div>

      <div class="d-grid gap-2">
        <button type="button" class="btn btn-utama w-100 text-uppercase py-3" style="font-size: 12px;" onclick="generateQR()">Generate QRIS</button>
      </div>
    </div>
  </div>

  <div class="col-10">
    <div class="bg-dark rounded p-2" id="qr-container" style="display: none;">
      <div class="text-center">
        <span class="d-block mb-2" style="font-size: 14px;">Scan QRIS Berikut</span>
        <div class="mx-auto" style="max-width: 220px;">
          <div id="qrcode" style="background-color: #fff; padding: 8px; border-radius: 8px;"></div>
        </div>
        <span class="d-block mt-2" id="total-display" style="font-size: 24px;"></span>
        <span class="d-block" id="tr-id" style="font-size: 12px; color: #bda270;"></span>
        <span class="d-block mt-1" id="pay-timer" style="font-size: 14px; color: #ff4d4d;"></span>

        <form method="post" class="mt-3">
          <input type="hidden" name="jumlah_deposit" id="hidden-amount">
          <input type="hidden" name="nomor_referensi_deposit" id="hidden-tr-id">
          <button type="submit" name="deposit" class="btn btn-utama w-100 text-uppercase py-3" style="font-size: 12px;">Saya Sudah Bayar</button>
        </form>

        <a href="#" id="download-qr" onclick="downloadQR(event)" class="d-inline-block mt-3 text-decoration-none" style="font-size: 12px;">Download QRIS</a>
      </div>
    </div>
  </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
<script>
  const QRIS_BASE = "00020101021126610014COM.GO-JEK.WWW01189360091439663050810210G9663050810303UMI51440014ID.CO.QRIS.WWW0215ID10254671365660303UMI5204549953033605802ID5917ALTOMEDIA, Grosir6008KARAWANG61054136162070703A016304D21A";

  function setNominal(va) {
    document.getElementById('amount-input').value = va;
    document.querySelectorAll('.btn-nominal').forEach(b => b.classList.remove('active'));
    event.currentTarget.classList.add('active');
  }

  function crc16(data) {
    let crc = 0xFFFF;
    for (let i = 0; i < data.length; i++) {
      crc ^= data.charCodeAt(i) << 8;
      for (let j = 0; j < 8; j++) {
        if ((crc & 0x8000) !== 0) crc = (crc << 1) ^ 0x1021;
        else crc <<= 1;
      }
    }
    return (crc & 0xFFFF).toString(16).toUpperCase().padStart(4, '0');
  }

  function generateQR() {
    const amount = document.getElementById('amount-input').value;
    if (!amount || amount < 10000) return alert("Minimal Topup Rp  10.000");

    let qrisTanpaCRC = QRIS_BASE.split("6304")[0];
    let tagNominal = "54" + amount.length.toString().padStart(2, '0') + amount;
    let dataSiapCRC = qrisTanpaCRC + tagNominal + "6304";
    let fullQRIS = dataSiapCRC + crc16(dataSiapCRC);

    document.getElementById('qrcode').innerHTML = "";
    new QRCode(document.getElementById('qrcode'), { text: fullQRIS, width:  200, height:  200, correctLevel: QRCode.CorrectLevel.M });

    document.getElementById('total-display').innerText = "Rp " + parseInt(amount).toLocaleString('id-ID');
    document.getElementById('tr-id').innerText = "TRX-ID: " + Math.floor(Date.now()/1000);
    document.getElementById('hidden-amount').value = amount;
    document.getElementById('hidden-tr-id').value = "TRX-" + Math.floor(Date.now()/1000);
    document.getElementById('qr-container').style.display = 'block';

    let time = 180;
    clearInterval(qrisTimer);
    qrisTimer = setInterval(()  => {
      let m = Math.floor(time/60), s = time%60;
      document.getElementById('pay-timer').innerText = "Selesaikan dalam " + m + ":" + (s<10 ? '0' : '') + s;
      if (time-- <= 0) { clearInterval(qrisTimer); document.getElementById('pay-timer').innerText = "Waktu habis, silakan generate ulang"; }
    },  1000);

    window.scrollTo({ top: document.body.scrollHeight, behavior: 'smooth' });
  }

  function downloadQR(event) {
    event.preventDefault();
    const canvas = document.querySelector('#qrcode canvas');
    if (!canvas) return;
    const link = document.createElement('a');
    link.download = "QRIS-JONATAN777-" + Date.now() + ".png";
    link.href = canvas.toDataURL();
    link.click();
  }
</script>