<?php
class Pelanggan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('simple_login');
        $this->simple_login->cek_login();
        $this->load->model('m_data');
        $this->load->helper('url');
    }
    public function index()
    {
        $data['title'] = "Data Pelanggan";
        $data['pelanggan'] = $this->m_data->tampil_pelanggan()->result();
        $this->load->view('template/auth/head', $data);
        $this->load->view('template/auth/navbar');
        $this->load->view('template/auth/sidebar');
        $this->load->view('pelangganv', $data);
        $this->load->view('template/auth/footer');
    }
    public function editPelanggan($id = null)
    {
        $data['title'] = "Edit Data";
        $edit = $this->m_data;
        $validation = $this->form_validation;
        
        if ($validation->run()) {
            $edit->ubahPelanggan();;
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["pelanggan"] = $edit->getIdPelanggan($id);

        //Telah Diubah
        $data["kota"] = $edit->get_kota();
       

        $this->load->view('template/auth/head', $data);
        $this->load->view('template/auth/navbar');
        $this->load->view('template/auth/sidebar');
        $this->load->view('editpelangganv', $data);
        $this->load->view('template/auth/footer');

    }


    //Menambah Function Ini
    public function kecamatan()
    {
        $id = $this->input->post('id');
        $data = $this->m_data->get_kec($id);
        echo json_encode($data);
    }
}
