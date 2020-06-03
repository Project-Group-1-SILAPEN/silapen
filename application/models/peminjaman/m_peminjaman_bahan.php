<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_peminjaman_bahan extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('peminjaman_bahan');
		$this->db->order_by('peminjaman_bahan.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('peminjaman_bahan',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('peminjaman_bahan',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('peminjaman_bahan');
	}

}
