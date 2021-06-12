<!-- SHOP LISTING-->
<div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
    <div class="col-md-4">
        <input type="text" name="search_text" id="search_text" placeholder="Search" class="form-control" />

    </div>


    <div id="result"></div>
    <div style="clear:both"></div>
    <div class="row mb-3 align-items-center">

    </div>

    <div class="row" id="container">
        <div class="col-md-4">
            <form method="post" action="<?php echo base_url(); ?>shop/shopping/tambah" accept-charset="utf-8" id="result">
                <div class="product text-center">
                    <div class="mb-3 position-relative">
                        <div class="badge text-white badge"></div>
                        <a class="d-block">
                            <img class="img-fluid" src="<?php echo base_url() . 'assets/gambar/images/montir.jpg' ?>" width="70%">
                        </a>
                        <div class="product-overlay">
                            <ul class="mb-0 list-inline">
                                <li class="list-inline-item m-0 p-0"><button type="submit" class="btn btn-sm btn-dark">Buy Now !</button></li>
                                <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="<?php echo base_url(); ?>service/page/detail/"><i class="fas fa-expand"></i></a></li>

                            </ul>
                        </div>
                    </div>
                    <h6><a class="reset-anchor">Jasa Service Aki</a></h6>
                    <p class="small text-muted">Rp. 200000</p>
                </div>
            </form>
        </div>
        <div class="col-md-4">
            <form method="post" action="<?php echo base_url(); ?>shop/shopping/tambah" accept-charset="utf-8" id="result">
                <div class="product text-center">
                    <div class="mb-3 position-relative">
                        <div class="badge text-white badge"></div>
                        <a class="d-block">
                            <img class="img-fluid" src="<?php echo base_url() . 'assets/gambar/images/montir.jpg' ?>" width="70%">
                        </a>
                        <div class="product-overlay">
                            <ul class="mb-0 list-inline">
                                <li class="list-inline-item m-0 p-0"><button type="submit" class="btn btn-sm btn-dark">Buy Now !</button></li>
                                <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="<?php echo base_url(); ?>service/page/detail/"><i class="fas fa-expand"></i></a></li>

                            </ul>
                        </div>
                    </div>
                    <h6><a class="reset-anchor">Jasa Service Ringan</a></h6>
                    <p class="small text-muted">Rp. 200000</p>
                </div>
            </form>
        </div>
        <div class="col-md-4">
            <form method="post" action="<?php echo base_url(); ?>shop/shopping/tambah" accept-charset="utf-8" id="result">
                <div class="product text-center">
                    <div class="mb-3 position-relative">
                        <div class="badge text-white badge"></div>
                        <a class="d-block">
                            <img class="img-fluid" src="<?php echo base_url() . 'assets/gambar/images/montir.jpg' ?>" width="70%">
                        </a>
                        <div class="product-overlay">
                            <ul class="mb-0 list-inline">
                                <li class="list-inline-item m-0 p-0"><button type="submit" class="btn btn-sm btn-dark">Buy Now !</button></li>
                                <li class="list-inline-item mr-0"><a class="btn btn-sm btn-outline-dark" href="<?php echo base_url(); ?>service/page/detail/"><i class="fas fa-expand"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <h6><a class="reset-anchor">Jasa Service Berat</a></h6>
                    <p class="small text-muted">Rp. 200000</p>
                </div>
            </form>
        </div>

    </div>

    <div style="margin-left: 330px;">
        <?php echo $this->pagination->create_links(); ?>
    </div>

</div>
</div>
</div>
</section>

</div>