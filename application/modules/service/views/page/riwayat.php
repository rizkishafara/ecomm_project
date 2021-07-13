<div class="">
    <!-- <?php echo json_encode($riwayat) ?> -->
    <div class="container pb-5">
        <?php foreach ($riwayat as $r) {
            $biaya_admin = 10 / 100 * $r['harga_jasa'];
            $total = $biaya_admin + $r['harga_jasa'];
            $date = new DateTime($r['waktu']);
            //$tanggal = new DateTime($r['tanggal'])
        ?>
            <div class="card">
                <div class="card-body">
                    <table>
                        <tr>
                            <td>Jenis Jasa</td>
                            <td>:</td>
                            <td>
                                <?php echo $r['daftar_keahlian'] ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Nama Pelanggan</td>
                            <td>:</td>
                            <td><?php echo $r['nama_mitra'] ?></td>
                        </tr>
                        <tr>
                            <td>Biaya</td>
                            <td>:</td>
                            <td>Rp.<?php echo number_format($total) ?></td>
                        </tr>
                        <tr>
                            <td>Waktu Pengerjaan</td>
                            <td>:</td>
                            <td><?php echo $date->format('H:i') ?></td>
                        </tr>
                        <tr>
                            <td>Tanggal Pengerjaan</td>
                            <td>:</td>
                            <td><?php echo $r['tanggal'] ?></td>
                        </tr>

                    </table>
                </div>
                <div class="card-footer">
                    <?php if ($r['status_order'] == 'selesai' && $r['status_bayar'] == 'Belum Terbayar') { ?>
                        <?php echo form_open_multipart('service/page/status_bayar') ?>
                        <input type="hidden" name="id_order" d value="<?php echo $r['id_order'] ?>">
                        <input type="hidden" name="total" value="<?php echo $total ?>">
                        <table>
                            <tr>
                                <td>Status</td>
                                <td>:</td>
                                <td><?php echo $r['status_order'] ?></td>
                            </tr>
                            <tr>
                                <td>Total Tagihan</td>
                                <td>:</td>
                                <td>Rp.<?php echo number_format($total) ?></td>
                            </tr>
                            <tr>
                                <td>Nomor Rekening</td>
                                <td>:</td>
                                <td><?php echo 281848919 ?></td>
                            </tr>

                        </table>
                        <input type="file" name="bukti_tf"><br><br>
                        <button type="submit" class="btn btn-success">Upload Bukti Pembayaran</button>
                        </form>
                    <?php } else if ($r['status_order'] == 'sedang diproses') { ?>
                        <p><?php echo $r['status_order'] ?></p>
                    <?php } else if ($r['status_order'] == 'selesai' && $r['status_bayar'] == 'Sudah Terbayar') { ?>
                        <div class="align-item-center">
                            <p align="center">Transaksi Telah Selesai, Silahkan Memberikan review</p>
                            <div style="margin-left: 505px; margin-top:5px;">

                                <div class="input-group flex-column flex-sm-row mb-3">
                                    <div class="input-group-append">
                                        <button class="btn btn-success btn-block" id="button-addon2" data-toggle="modal" data-target="#exampleModal">Beri Ulasan </button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        <?php } ?>
    </div>



    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Review</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <?php foreach ($riwayat as $r) { ?>
                        <?php echo form_open_multipart('service/page/review_mitra'); ?>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="nama_produk">Nama Petugas</label>
                                <input type="hidden" name="id_order" value="<?php echo $r['id_order'] ?>">
                                <input type="hidden" name="id_mitra" value="<?php echo $r['id_mitra'] ?>">
                                <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $r['nama_mitra'] ?>" readonly>
                                <?php echo form_error('nama_produk', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                            <div class="form-group">
                                <label for="nama_produk">Jenis Jasa</label>
                                <input type="text" class="form-control" id="keahlian" name="keahlian" value="<?php echo $r['daftar_keahlian'] ?>" readonly>
                            </div>
                            <div class="form-group">
                                <label for="nama_produk">Status Pengerjaan</label>
                                <input type="text" class="form-control" id="status" name="status" value="<?php echo $r['status_order'] ?>" readonly>
                            </div>
                            <div class=" form-group">
                                <label for="deskripsi">Ulasan</label>
                                <textarea type="text" class="form-control" id="review" name="review" rows="4" placeholder="Ulasan"></textarea>
                                <?php echo form_error('deskripsi', '<small class="text-danger pl-3">', '</small>'); ?>
                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">
                            <button type="submit" name="btnSubmit" class="btn btn-primary">Submit</button>
                        </div>
                        <?php echo form_close(); ?>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>