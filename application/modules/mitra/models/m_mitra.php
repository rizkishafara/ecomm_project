<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class M_mitra extends CI_Model
{

    public function count_all_data()
    {
        return $this->db->get('order_servis')->num_rows();
    }

    public function tampil_order($limit,$start){
        $this->db->select('*');
        $this->db->from('order_servis');
        $this->db->join('keahlian', 'order_servis.id_keahlian=keahlian.id_keahlian');
        return $this->db->get()->result_array();
    }

    public function get_keahlian_all()
    {
        $this->db->select('*');
        $this->db->from('keahlian');
        return $this->db->get()->result_array();
    }

    public function get_order_id($id){
        $this->db->select('*');
        $this->db->from('order_servis');
        $this->db->join('keahlian', 'order_servis.id_keahlian=keahlian.id_keahlian');
        $this->db->join('mitra', 'order_servis.id_keahlian=mitra.id_keahlian');
        $this->db->join('pelanggan', 'pelanggan.id_pelanggan=mitra.id_pelanggan');
        $this->db->where('mitra.id_pelanggan', $id);
        //$this->db->where('order_servis.id_keahlian', $mitra);
        return $this->db->get()->result_array();
    }

    public function get_mitra_keahlian($id)
    {
        $this->db->select('*');
        $this->db->from('mitra');
        $this->db->join('pelanggan', 'pelanggan.id_pelanggan=mitra.id_pelanggan');
        $this->db->where('mitra.id_pelanggan', $id);
        return $this->db->get()->result();
    }

    public function detail_order($data){
        $this->db->insert('detail_order_service', $data);
       
    }
    public function edit_status_order($id_order,$data1, $table)
    {
        $this->db->where($id_order);
        $this->db->update($table, $data1);
    }

    public function find($search)
    {
        $this->db->select('*');
        $this->db->from('mitra');
        $this->db->join('keahlian', 'mitra.id_keahlian=keahlian.id_keahlian', 'left');
        if ($search != '') {
            $this->db->like('keahlian.daftar_keahlian', $search);
        }

        return $this->db->get()->result_array();
    }
}
