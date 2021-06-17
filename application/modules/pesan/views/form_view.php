<body>
<div class="container" style="padding: 50px;">
<div class="container">
  <div class="row">
    <div class="col-8 form">
	<?php if ($this->session->flashdata('success')) : ?>
         <div class="alert alert-success" role="alert">
    		<?php echo $this->session->flashdata('success'); ?>
    	</div>
		
    <?php endif; ?>
	<form style="padding: 20px; background-color: #e9e9e9;" action="<?php echo base_url()?>pesan/form/postPesan" method="post" enctype="multipart/form-data">
	
		<div class="form-group">
			<label for="provinsi" class="form-label ">Provinsi</label>
			<select class="form-control bootstrap-select <?php echo form_error('provinsi') ? 'is-invalid' : '' ?> type="select" name="provinsi"">
				<option selected>--Pilih--</option>
				<option value="Jawa Tengah">Jawa Tengah</option>
				<option value="Jawa Timur">Jawa Timur</option>
				<option value="Jawa Barat">Jawa Barat</option>
			</select>
			<div class="invalid-feedback">
                <?php echo form_error('provinsi') ?>
            </div>
		</div>

		<div class="form-group">
			<label for="Kota/Kabupaten" class="form-label">Kota/Kabupaten</label>
			<select class=" form-control bootstrap-select <?php echo form_error('kota') ? 'is-invalid' : '' ?>" type="select" name="kota" placeholder="kota" aria-label="Default select example">
                <option value="">Pilih </option>
    			<option value="Semarang">Semarang</option>
                <option value="Ungaran">Ungaran</option>
                <option value="Ambarawa">Ambarawa</option>
            </select>
			<div class="invalid-feedback">
                <?php echo form_error('kota') ?>
            </div>
		</div>

		<div class="form-group">
			<label for="Kecamatan" class="form-label ">Kecamatan</label>
			<select class=" form-control bootstrap-select <?php echo form_error('kecamatan') ? 'is-invalid' : '' ?>" type="select" name="kecamatan" placeholder="kecamatan" aria-label="Default select example">
                <option value="">Pilih </option>
    			<option value="Banyumanik">Banyumanik</option>
                <option value="Gayamsari">Gayamsari</option>
                <option value="Genuk">Genuk</option>
            </select>
			<div class="invalid-feedback">
                <?php echo form_error('kecamatan') ?>
            </div>
		</div>
		<div class="form-group">
			<label for="lokasi_pelanggan" class="form-label">Detail Alamat</label>
			<textarea type="text" class="form-control <?php echo form_error('lokasi_pelanggan') ? 'is-invalid' : '' ?>" name="lokasi_pelanggan"></textarea>
			<div class="invalid-feedback">
                <?php echo form_error('lokasi_pelanggan') ?>
            </div>
		</div>

		<div class="form-group">
			<label for="example-date-input" class="form-label">Tanggal Pengerjaan</label>
			<input class="form-control <?php echo form_error('tanggal') ? 'is-invalid' : '' ?>" type="date" id="example-date-input" name="tanggal">
			<div class="invalid-feedback">
				<?php echo form_error('tanggal') ?>
			</div>
		</div>

		<input class="btn btn-success" type="submit" name="btn" value="Pesan" />
	</form>
	</div>
	<div class="col-4">
		<div class="border mb-3" style="padding: 10px;">
			<label class="fw-bold fs-4" >Kenapa harus menggunakan jasa kami?</label>
			</br>
			<p>(insert nama aplikasi) adalah aplikasi yang menyediakan layanan sewa jasa yang akan mempermudah bagi anda yang sedang mencari jasa tukang. Dengan menggandeng tenaga profesional, kami akan membuat puas pelanggan dengan layanan yang kami berikan</p>
		</div>
		<div class="border mb-3" style="padding: 10px;">
			<label class="fw-bold fs-4" >Butuh bantuan?</label>
			<p>> Hubungi CS kami di 0987987</p>
			<p>> Email ke buildenhome@gmail.com</p>
		</div>
	</div>
    
  </div>
</div>


</div>


<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="<?php echo base_url('assets/js/bootstrap.bundle.min.js') ?>" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
</body>