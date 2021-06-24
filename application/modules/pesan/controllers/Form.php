<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Form extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
		$this->load->model("Pesan_model");
		$this->load->library('form_validation');
    }
	public function index()
	{
		$data['title'] = "Pesan";
		$this->load->view('template/shop/header_shop', $data);
        $this->load->view('template/shop/navbar_shop');
		$this->load->view('form_view');
        $this->load->view('template/shop/footer_shop', $data);
	}
	public function postPesan()
    {
        $pesan = $this->Pesan_model;
        $validation = $this->form_validation;
        $validation->set_rules($pesan->rules());

        if ($validation->run()) {
            $pesan->pesan();
            $this->session->set_flashdata('success', 'Berhasil disimpan');  
            $this->index();          
        }else{
            $pesan->pesan();
            $this->session->set_flashdata('failed', 'Berhasil disimpan');  
            $this->index();          
        }
        
    }
}
