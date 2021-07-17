<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
        <img src="<?php echo base_url('assets/gambar/img/logo_sidebar.png') ?>" alt="Tama.id Logo" class="brand-image img-rectangle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="<?php echo base_url('assets/gambar/img/user.png') ?>" alt="User Image">
            </div>
            <div class="info">
                <a class="d-block">Halo,&nbsp;<?php echo ucfirst($this->session->userdata('username')); ?>&nbsp;!</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
                <li class="nav-item has-treeview">
                    <a href="<?php echo base_url('board/dashboard') ?>" class="nav-link <?php if ($this->uri->segment(2) == "dashboard") {
                         echo 'active'; } ?>">
                        <i class="nav-icon fas fa-home"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link <?php if ($this->uri->segment(2) == "data") {
                            echo 'active'; } ?>">
                        <i class="nav-icon fas fa-file-alt"></i>
                        <p>
                            Data
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo base_url('board/data/pelanggan') ?>" class="nav-link <?php if ($this->uri->segment(3) == "pelanggan") {
                                  echo 'active'; } ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Pelanggan</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('board/data/mitra') ?>" class="nav-link <?php if ($this->uri->segment(3) == "mitra") {
                                    echo 'active'; } ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Mitra</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('board/data/keahlian') ?>" class="nav-link <?php if ($this->uri->segment(3) == "keahlian") {
                                    echo 'active'; } ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Keahlian</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo base_url('board/data/order') ?>" class="nav-link <?php if ($this->uri->segment(3) == "order") {
                                    echo 'active'; } ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Order</p>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>