<div class="">
    <div class="container">
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
                <div class="form-group">
                    <label for="nama_produk">Rating</label><br>
                    
                    <input type="radio" name="rating" value="1" />
                    <label for="change" class="mr-5">Buruk</label>
                    
                    <input type="radio" name="rating" value="2" />
                    <label for="change" class="mr-5">Kurang Puas</label>
                    
                    <input type="radio" name="rating" value="3" />
                    <label for="change" class="mr-5">Cukup Puas</label>
                    
                    <input type="radio" name="rating" value="4" />
                    <label for="change" class="mr-5">Puas</label>
                    
                    <input type="radio" name="rating" value="5" />
                    <label for="change" class="mr-5">Sangat Puas</label>
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