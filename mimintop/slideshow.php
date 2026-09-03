<div class="row">
  <div class="col-12">
    <div class="page-title-box d-sm-flex align-items-center justify-content-between">
      <h4 class="mb-sm-0">Slideshow</h4>
      <div class="page-title-right">
        <ol class="breadcrumb m-0">
          <li class="breadcrumb-item">
            <a href="#tambah_data" class="d-flex justify-content-center align-items-center btn btn-sm btn-primary text-white" data-bs-toggle="modal">
              <i class="ri-add-fill fw-bold me-1"></i>
              Tambah Data
            </a>
          </li>
        </ol>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="h-100">
      <div class="row">
        <div class="col-12">
          <!-- card -->
          <div class="card">
            <div class="card-body">
              <table id="datatables" class="table table-hover table-striped nowrap align-middle" style="width:100%">
                <thead>
                  <tr>
                    <th scope="col">Judul</th>
                    <th scope="col">Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                    $slideshow = mysqli_query($koneksi, "SELECT * FROM slideshow");
                    while ($data_slideshow = mysqli_fetch_array($slideshow)) {
                      $id_slideshow = $data_slideshow['id_slideshow'];
                      $gambar_slideshow = $data_slideshow['gambar_slideshow'];
                      $judul_slideshow = $data_slideshow['judul_slideshow'];

                  ?>
                  <tr>
                    <td><?php echo $judul_slideshow; ?></td>
                    <td>
                      <div class="dropdown d-inline-block dropstart">
                        <button class="btn btn-soft-primary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                          <i class="ri-settings-3-fill align-middle"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end me-2">
                          <li>
                            <a href="#ubah_data_<?php echo $id_slideshow; ?>" class="dropdown-item edit-item-btn" data-bs-toggle="modal">
                              <i class="ri-pencil-fill align-bottom me-2 text-muted"></i>
                              Ubah Data
                            </a>
                          </li>
                          <li>
                            <a href="#hapus_data_<?php echo $id_slideshow; ?>" class="dropdown-item remove-item-btn" data-bs-toggle="modal">
                              <i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i>
                              Hapus Data
                            </a>
                          </li>
                        </ul>
                      </div>
                    </td>
                  </tr>
                  <!-- Modal Ubah Data -->
                  <div id="ubah_data_<?php echo $id_slideshow; ?>" class="modal flip" tabindex="-1" aria-hidden="true" style="display: none;">
                    <form method="post" enctype="multipart/form-data">
                      <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Ubah Data</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
                          </div>
                          <div class="modal-body">
                            <input type="hidden" name="id_slideshow" value="<?php echo $id_slideshow; ?>">
                            <div class="mb-2 text-center">
                              <img src="assets/images/slideshow/<?php echo $gambar_slideshow; ?>" class="img-fluid rounded">
                            </div>
                            <div class="mb-2">
                              <label class="form-label">Gambar</label>
                              <input type="file" name="gambar_slideshow" class="form-control">
                            </div>
                            <div class="mb-2">
                              <label class="form-label">Judul</label>
                              <input type="text" name="judul_slideshow" class="form-control" value="<?php echo $judul_slideshow; ?>" autocomplete="off" required>
                            </div>

                          </div>
                          <div class="modal-footer">
                            <button type="button" class="d-flex justify-content-center align-items-center btn btn-light" data-bs-dismiss="modal">
                              <i class="ri-close-fill fw-bold me-1"></i>
                              Batal
                            </button>
                            <button type="submit" name="ubah_data" class="d-flex justify-content-center align-items-center btn btn-primary">
                              <i class="ri-save-3-line me-1"></i>
                              Simpan
                            </button>
                          </div>
                        </div><!-- /.modal-content -->
                      </div><!-- /.modal-dialog -->
                    </form>
                  </div><!-- /.modal -->
                  <!-- Modal Hapus Data -->
                  <div id="hapus_data_<?php echo $id_slideshow; ?>" class="modal flip" tabindex="-1" aria-hidden="true" style="display: none;">
                    <form method="post">
                      <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title">Hapus Data</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
                          </div>
                          <div class="modal-body">
                            <input type="hidden" name="id_slideshow" value="<?php echo $id_slideshow; ?>">
                            <span class="text-muted">Yakin ingin menghapus data <span class="fw-bold text-danger"><?php echo $judul_slideshow; ?></span>?</span>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="d-flex justify-content-center align-items-center btn btn-light" data-bs-dismiss="modal">
                              <i class="ri-close-fill fw-bold me-1"></i>
                              Batal
                            </button>
                            <button type="submit" name="hapus_data" class="d-flex justify-content-center align-items-center btn btn-danger">
                              <i class="ri-check-fill fw-bold me-1"></i>
                              Yakin
                            </button>
                          </div>
                        </div><!-- /.modal-content -->
                      </div><!-- /.modal-dialog -->
                    </form>
                  </div><!-- /.modal -->
                  <?php
                    }
                  ?>
                </tbody>
              </table>
            </div><!-- end card body -->
          </div><!-- end card -->
        </div><!-- end col -->
      </div>
    </div>
  </div>
</div>

<!-- Modal Tambah Data -->
<div id="tambah_data" class="modal flip" tabindex="-1" aria-hidden="true" style="display: none;">
  <form method="post" enctype="multipart/form-data">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Tambah Data</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
        </div>
        <div class="modal-body">
          <div class="mb-2">
            <label class="form-label">Gambar</label>
            <input type="file" name="gambar_slideshow" class="form-control" required>
          </div>
          <div class="mb-2">
            <label class="form-label">Judul</label>
            <input type="text" name="judul_slideshow" class="form-control" autocomplete="off">
          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="d-flex justify-content-center align-items-center btn btn-light" data-bs-dismiss="modal">
            <i class="ri-close-fill fw-bold me-1"></i>
            Batal
          </button>
          <button type="submit" name="tambah_data" class="d-flex justify-content-center align-items-center btn btn-primary">
            <i class="ri-save-3-line me-1"></i>
            Simpan
          </button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </form>
</div><!-- /.modal -->