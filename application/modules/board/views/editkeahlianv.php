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
                        <li class="breadcrumb-item">Pelanggan</li>
                        <li class="breadcrumb-item active">Edit</li>
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
                        <div class="card-header">
                            <h3 class="card-title">Tabel Pelanggan</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <?php echo form_open('board/data/keahlian/editKeahlian'); ?>
                        <form role="form" enctype="multipart/form-data">
                            <div class="card-body">
                                <input type="" class="form-control" id="inputName" name="id_keahlian" value="<?php echo $keahlian->id_keahlian ?>">
                                <div class="form-group">
                                    <label for="daftar_keahlian">Daftar Keahlian</label>
                                    <input type="text" class="form-control" id="daftar_keahlian" name="daftar_keahlian" placeholder="Daftar Keahlian" value="<?php echo $keahlian->daftar_keahlian ?>">
                                    <?php echo form_error('daftar_keahlian', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="form-group">
                                        <label for="">Gambar Keahlian</label>
                                        <input class="form-control-file <?php echo form_error('gambar_keahlian') ? 'is-invalid':'' ?>"
                                        type="file" name="gambar_keahlian" />
                                        <input type="hidden" name="old_image" value="<?php echo $keahlian->gambar_keahlian ?>" />
                                        <div class="invalid-feedback">
                                            <?php echo form_error('gambar_keahlian') ?>
                                        </div>
                                    </div>

                                <div class="form-group">
                                    <label for="deskripsi">Deskripsi</label>
                                    <textarea type="text" class="form-control" id="deskrips" name="deskrips" placeholder="Deskripsi" value=""><?php echo $keahlian->deskripsi ?></textarea>
                                    <?php echo form_error('deskripsi', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer">
                                <button type="submit" name="btnSubmit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
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