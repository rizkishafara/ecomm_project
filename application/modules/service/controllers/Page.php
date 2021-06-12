<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Page extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('upload');
        $this->load->helper(array('form', 'url'));
        $this->load->model('M_Page');
    }
    public function index()
    {
        $data['title'] = "Home";
        $data['id'] = $this->M_Page->get_keahlian('id');
        $this->load->view('template/shop/header_shop', $data);
        $this->load->view('template/shop/navbar_shop');
        $this->load->view('page/home', $data);
        $this->load->view('template/shop/footer_shop', $data);
    }

    public function tambah_mitra(){
        $this->form_validation->set_rules('nik', 'NIK', 'required');
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required');
        $this->form_validation->set_rules('keahlian', 'Keahlian', 'required');
        $this->form_validation->set_rules('gambar', 'Foto', 'required');

        
            $nik = $this->input->post('nik');
            $nama = $this->input->post('nama');
            $alamat = $this->input->post('alamat');
            $id = $this->session->userdata['id'];
            $foto = $this->input->post('gambar');
            $keahlian = $this->input->post('keahlian');
            if ($foto == '') {
                
            } else {
                $config['upload_path']          = 'C:\xampp\htdocs\ecomm_service\assets\gambar\mitra';
                $config['allowed_types']        = 'jpg|png|jpeg';
                $config['max_size']             = 100;
                $config['max_width']            = 1024;
                $config['max_height']           = 768;
                $this->load->library('upload', $config);

                if (!$this->upload->do_upload('gambar')) {
                    echo "upload Gagal";
                } else {
                    $foto = $this->upload->data('file_name');
                }
            }

            $data = array(
                'id_pelanggan' => $id,
                'id_keahlian' => $keahlian,
                'nama_mitra' =>$nama,
                'foto_mitra' => $foto,
                'alamat_mitra' => $alamat,
                'no_ktp' => $nik
            );

            $jenis = 'mitra';
            $data1 = array(
                'jenis' => $jenis
            );

            $id_pelanggan = array(
                'id_pelanggan' => $id
            );

           
            $this->M_Page->Add_mitra($data, 'mitra');
            $this->M_Page->edit_jenis_pelanggan($id_pelanggan, $data1, 'pelanggan');
            $this->session->set_flashdata('pesan', 'ditambahkan');
        

    }

    public function layanan()
    {
        $data['title'] = "Layanan";
        $this->load->view('template/shop/header_shop', $data);
        $this->load->view('template/shop/navbar_shop');
        $this->load->view('template/shop/sidebar_shop');
        $this->load->view('page/layanan');
        $this->load->view('template/shop/footer_shop', $data);
    }

    public function detail()
    {
        $data['title'] = "Layanan";
        $this->load->view('template/shop/header_shop', $data);
        $this->load->view('template/shop/navbar_shop');
        $this->load->view('page/detail');
        $this->load->view('template/shop/footer_shop', $data);
    }

    public function about(){
        $data['title'] = "About";
        $this->load->view('template/shop/header_shop', $data);
        $this->load->view('template/shop/navbar_shop');
        $this->load->view('page/about');
        $this->load->view('template/shop/footer_shop');
    }
}
