<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_tipe_lab extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('tipe_lab ');
		$this->db->order_by('tipe_lab.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('tipe_lab',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('tipe_lab',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('tipe_lab');
	}

}

