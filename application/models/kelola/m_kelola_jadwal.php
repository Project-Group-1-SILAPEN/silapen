<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_jadwal extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('kelola_jadwal');
		$this->db->order_by('kelola_jadwal.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('kelola_jadwal',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('kelola_jadwal',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_jadwal');
	}

}
