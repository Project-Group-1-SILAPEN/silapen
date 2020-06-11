<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_anggota_lab extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('anggota_lab');
		$this->db->order_by('anggota_lab.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('anggota_lab',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('anggota_lab',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('anggota_lab');
	}

}
