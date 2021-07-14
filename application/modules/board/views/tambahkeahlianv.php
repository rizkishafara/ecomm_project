<script src="<?php echo base_url('assets/ckeditor/ckeditor.js') ?>"></script>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Data</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item">Data</li>
                        <li class="breadcrumb-item">Produk</li>
                        <li class="breadcrumb-item active">Tambah</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <!-- left column -->
                <div class="col-md-8">
                    <!-- general form elements -->
                    <div class="card card-warning">
                    <?php $this->session->flashdata('success') ?>
                        <div class="card-header">
                            <h3 class="card-title">Tabel Keahlian</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <?php echo form_open('board/data/keahlian/tambahKeahlian'); ?>
                        
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="daftar_keahlian">Nama Keahlian</label>
                                    <input type="text" class="form-control" id="daftar_keahlian" name="daftar_keahlian" placeholder="Nama Keahlian">
                                    <?php echo form_error('daftar_keahlian', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="form-group">
                                        <label for="gambar">Gambar Keahlian</label>
                                        <input class="form-control-file" type="file" name="gambar" />
                                        <div class="invalid-feedback">
                                            <?php echo form_error('gambar') ?>
                                        </div>
                                 </div>
                                <div class=" form-group">
                                    <label for="deskripsi">Deskripsi</label>
                                    <textarea type="text" class="form-control" id="deskripsi" name="deskripsi" rows="12" placeholder="Deskripsi"></textarea>
                                    <?php echo form_error('deskripsi', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer">
                                <button type="submit" name="btnSubmit" class="btn btn-primary">Submit</button>
                            </div>
                        
                        <?php echo form_close(); ?>
                    </div>
                    <!-- /.card -->
                </div>
                <!--/.col (right) -->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<script>
    CKEDITOR.replace('deskripsi');
</script>