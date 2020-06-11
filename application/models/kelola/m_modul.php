<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_modul extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('modul');
		$this->db->order_by('modul.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('modul',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('modul',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('modul');
	}

}
