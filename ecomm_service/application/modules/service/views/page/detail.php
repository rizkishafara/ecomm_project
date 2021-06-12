<section class="py-5">
    <div class="container">
        <div class="row mb-5">
            <div class="col-lg-6">
                <!-- PRODUCT SLIDER-->
                <div class="row m-sm-0">
                    <div class="col-sm-10 order-1 order-sm-2">
                        <img class="img-fluid" src="<?php echo base_url('assets/gambar/images/montir.jpg') ?>" width="50%">
                    </div>
                </div>
            </div>
            <!-- PRODUCT DETAILS-->
            <div class="col-lg-6">
                <h1>Nama Jasa</h1>
                <p class="text-muted lead">Harga Jasa</p>
               
                <form action="<?php echo base_url(); ?>shop/shopping/tambah" method="post" accept-charset="utf-8">
                    <div class="row align-items-stretch mb-4">
                       
                        <div class="col-sm-3 pl-sm-0"><button type="submit" class="btn btn-dark btn-sm btn-block h-100 d-flex align-items-center justify-content-center px-0">Pesan Sekarang</button></div>
                    </div>
                    
                </form>
                
            </div>
        </div>
        <!-- DETAILS TABS-->
        <ul class="nav nav-tabs border-0" id="myTab" role="tablist">
            <li class="nav-item"><a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a></li>
        </ul>
        <div class="tab-content mb-5" id="myTabContent">
            <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                <div class="p-4 p-lg-5 bg-white">
                    <h6 class="text-uppercase">Product description </h6>
                    <p class="text-muted text-small mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum aspernatur dolorum eaque vero sed harum. Ducimus dolores, 
                    omnis voluptatibus ratione quia fuga quo repellendus, quibusdam exercitationem atque pariatur inventore? Ratione.</p>
                </div>
            </div>
        </div>
    </div>
</section>