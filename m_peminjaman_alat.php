<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_peminjaman_alat extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('peminjaman_alat');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('peminjaman_alat',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('peminjaman_alat',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('peminjaman_alat');
	}

}
