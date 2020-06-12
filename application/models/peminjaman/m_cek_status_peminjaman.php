<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_cek_status_peminjaman extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('cek_status_peminjaman ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('cek_status_peminjaman',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('cek_status_peminjaman',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('cek_status_peminjaman');
	}

}
