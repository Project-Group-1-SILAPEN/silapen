<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_laboratorium extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('laboratorium');
		$this->db->order_by('laboratorium.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('laboratorium',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('laboratorium',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('laboratorium');
	}

}
