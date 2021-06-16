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

    public function count_all_data()
    {
        return $this->db->get('mitra')->num_rows();
    }

    public function tampil_mitra($limit,$start){
        $this->db->join('keahlian', 'mitra.id_keahlian=keahlian.id_keahlian', 'left');
        return $this->db->get('mitra', $limit, $start)->result();
    }



    public function find($search)
    {
        $this->db->select('*');
        $this->db->from('mitra');
        $this->db->join('keahlian', 'mitra.id_keahlian=keahlian.id_keahlian', 'left');
        if ($search != '') {
            $this->db->like('keahlian.daftar_keahlian', $search);
        }

        return $this->db->get()->result();
    }
}
