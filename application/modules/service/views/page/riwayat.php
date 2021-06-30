<div class="">
    <div class="container">
        <?php foreach ($riwayat as $r) { ?>
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-9">
                            <h5><?php echo $r['daftar_keahlian'] ?></h5>
                            <p><?php echo $r['nama_mitra'] ?></p>
                            <small><?php echo $r['tanggal'] ?> <?php echo $r['waktu'] ?></small>
                        </div>
                        <div class="col-md-3">
                            <img src="<?php echo base_url() ?>assets/gambar/mitra/<?php echo $r['foto_mitra'] ?>">
                        </div>

                    </div>
                </div>
                <div class="card-footer">
                    <?php if ($r['status_order'] == 'selesai') { ?>
                        <button type="submit" class="btn btn-success">Bayar</button>
                    <?php } else if ($r['status_order'] == 'sedang diproses') { ?>
                        <p><?php echo $r['status_order'] ?></p>
                    <?php } else {
                    } ?>
                </div>
            </div>
        <?php } ?>
    </div>
</div>