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
        $this->load->view("form_view");
        //$this->load->model("pesan/Pesan_model", $data);
        $this->load->view('template/shop/footer_shop', $data);
	}
    public function pesan($id){
        $keahlian = $this->Pesan_model;
        $data["keahlian"] = $keahlian->get_keahlian_id($id);
        $data1['title'] = "Pesan";
        $this->load->view('template/shop/header_shop', $data1);
        $this->load->view('template/shop/navbar_shop');
        $this->load->view("form_view", $data);
        //$this->load->model("pesan/Pesan_model", $data);
        $this->load->view('template/shop/footer_shop', $data1);
    }
	public function postPesan()
    {
        $pesan = $this->Pesan_model;
        $validation = $this->form_validation;
        $validation->set_rules($pesan->rules());
        $pesan->pesan();
        $this->session->set_flashdata('pesan', ', Pesanan Diproses!');
        $this->pesan($id=null);

        /*if ($validation->run()) {
            $pesan->pesan();
            $this->session->set_flashdata('pesan', ', Pesanan Diproses!');  
           //$this->"service/Page"->layanan();
            $this->load->module("../service/Page/layanan");
            //$this->Page->layanan();
        //}else{
           // $pesan->pesan();
            //$this->session->set_flashdata('pesan', 'Berhasil disimpan');  
          //  $this->load->library("service/controllers/page/layanan");          
        //}*/
        
    }
}
