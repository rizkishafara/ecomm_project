<?php
defined('BASEPATH') or exit('No direct script access allowed');
class m_data extends CI_Model
{
    
    // Produk //
    private $_pelanggan = "pelanggan";
    private $_kecamatan = "kecamatan";
    private $_kota = "kota";
    public function tampil_produk()
    {
        return $this->db->get('tbl_produk');
    }
    public function tampil_order()
    {
        return $this->db->get('tbl_order');
    }
    public function tampil_kategori()
    {
        return $this->db->get('kategori');
    }
    public function tampil_do()
    {
        return $this->db->get('tbl_detail_order');
    }
    public function tampil_user()
    {
        return $this->db->get('users');
    }


    public function getIdPelanggan($id)
    {
        //return $this->db->get_where($this->_pelanggan, ["id_pelanggan" => $id])->row();

        $this->db->select('*');
        $this->db->from('pelanggan');
        $this->db->join('kecamatan', 'pelanggan.id_kecamatan=kecamatan.id_kec');
        $this->db->where('id_pelanggan', $id);
        return $this->db->get()->row();
    }

    public function getKecamatan($id)
    {
        $this->db->select('*');
        $this->db->from('kecamatan');
        $this->db->join('pelanggan', 'pelanggan.id_kecamatan=kecamatan.id_kec');
        $this->db->where('id_pelanggan', $id);
        return $this->db->get()->row();
    }

    public function get_kota()
    {
        $hasil = $this->db->query("SELECT * FROM kota");
        return $hasil->result_array();
    }

    public function get_kec($id)
    {
        $ambil = $this->db->query("SELECT * FROM kecamatan WHERE id_kota = '$id'");
        return $ambil->result();
    }

    public function ubahPelanggan()
    {
        $post = $this->input->post();
        $this->id_pelanggan = $post["id_pelanggan"];
        $this->nama_pelanggan = $post["nama_pelanggan"];
        $this->email_pelanggan = $post["email_pelanggan"];
        $this->username_pelanggan = $post["username_pelanggan"];
        $this->password_pelanggan = md5($post["pasword_pelanggan"]);
        $this->alamat_pelanggan = $post["alamat_pelanggan"];
        $this->id_kota = $post["kota"];
        $this->id_kecamatan = $post["kecamatan"];
        $this->no_hp = $post["no_hp"];
        $this->jenis = $post["jenis"];
        return $this->db->update($this->pelanggan, $this, array('id_pelanggan' => $post['id']));
    }

    




    public function tambah_produk($data, $table)
    {
        $this->db->insert($table, $data);
    }
    public function edit_id_produk($id)
    {
        $this->db->select('*');
        $this->db->from('produk');
        $this->db->join('kategori', 'produk.kategori=kategori.id', 'left');
        $this->db->where('id_produk', $id);
        return $this->db->get()->row();
    }
    public function edit_id_kategori($id)
    {
        $this->db->select('*');
        $this->db->from('produk');
        $this->db->join('kategori', 'produk.kategori=kategori.id', 'left');
        $this->db->where('id_produk', $id);
        return $this->db->get();
    }

    // User //
    
    public function daftar($data)
    {
        $this->db->insert('users', $data);
    }
    public function get_data_edit($id)
    {
        $this->db->where('id_user', $id);
        $query = $this->db->get('users');
        return $query->result();
    }
    public function update_user($data, $id_user)
    {
        $this->db->where('id_user', $id_user);
        $this->db->update('users', $data);
    }
    public function delete_user($id)
    {
        $this->db->where('id_user', $id);
        $this->db->delete('users');
    }

    // Pelanggan //
    public function tampil_pelanggan()
    {
        $this->db->select('*');
        $this->db->from('pelanggan');
        $this->db->join('kecamatan', 'pelanggan.id_kecamatan=kecamatan.id_kec');
        $this->db->join('kota', 'pelanggan.id_kota=kota.id_kota');
        return $this->db->get();

        //return $this->db->get('pelanggan');
    }
}
