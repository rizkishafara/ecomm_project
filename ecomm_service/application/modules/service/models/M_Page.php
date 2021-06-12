<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class M_Page extends CI_Model
{
    public function getAllData($id){
        return $this->db->get('pelanggan');
    }

    public function get_keahlian(){
        return $this->db->get('keahlian')->result();
    }

    public function Add_mitra($data, $table){
        $this->db->insert($table, $data);
    }

    public function edit_jenis_pelanggan($id_pelanggan, $data1, $table){
        $this->db->where($id_pelanggan);
        $this->db->update($table, $data1);
    }
}
