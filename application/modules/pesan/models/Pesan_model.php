<?php defined('BASEPATH') or exit('No direct script access allowed');

class Pesan_model extends CI_Model
{
    private $_table = "order_service";

    public $id_order;
    public $tanggal;
    public $id_pelanggan;
    public $provinsi;
    public $kota;
    public $kecamatan;
    public $lokasi_pelanggan;
    public $id_keahlian;
    

    public function rules()
    {
        return [
            [
                'field' => 'id_order',
                'label' => 'Id',
                'rules' => 'numeric'
            ],

            [
                'field' => 'tanggal',
                'label' => 'tanggal',
                'rules' => 'required'
            ],

            [
                'field' => 'waktu',
                'label' => 'waktu',
                'rules' => 'required'
            ],

            [
                'field' => 'id_pelanggan',
                'label' => 'id_pelanggan',
                'rules' => 'numeric'
            ],

            [
                'field' => 'provinsi',
                'label' => 'provinsi',
                'rules' => 'required'
            ],

            [
                'field' => 'kota',
                'label' => 'kota',
                'rules' => 'required'
            ],
            [
                'field' => 'kecamatan',
                'label' => 'kecamatan',
                'rules' => 'required'
            ],
            [
                'field' => 'lokasi_pelanggan',
                'label' => 'lokasi_pelanggan',
                'rules' => 'required'
            ]
        ];
    }
    public function get_keahlian_id($keahlian){
        $this->db->from('keahlian');
        $this->db->where('id_keahlian', $keahlian);
        return $this->db->get()->row_array();

    }

    public function pesan()
    {
        $post = $this->input->post();
        $this->id_order;
        $this->tanggal = $post["tanggal"];
        $this->waktu = $post["waktu"];
        $this->id_pelanggan = $this->session->userdata('id');
        $this->provinsi = $post["provinsi"];
        $this->kota = $post["kota"];
        $this->kecamatan = $post["kecamatan"];
        $this->lokasi_pelanggan = $post["lokasi_pelanggan"];
        $this->id_keahlian = $post['keahlian'];
        return $this->db->insert($this->_table, $this);
    }
}