<?php
defined('BASEPATH') or exit('No direct script access allowed');
class m_mitra extends CI_Model
{
    // Produk //
    public function tampil_produk()
    {
        return $this->db->get('tbl_produk');
    }
    public function tambah_produk($data, $table)
    {
        $this->db->insert($table, $data);
    }

    public function tampil_kategori(){
        return $this->db->get('tbl_kategori');
    }

    public function delete_produk($id_produk, $table){
        $this->db->where($id_produk);
        $this->db->delete($table);
    }

    public function edit_produk($id_produk, $table)
    {
        return $this->db->get_where($table, $id_produk);
    }
    public function update_data($id_produk, $data, $table){
        $this->db->where($id_produk);
        $this->db->update($table, $data);
    }
}