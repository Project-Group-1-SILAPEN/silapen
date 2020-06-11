<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_skripsi extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('skripsi');
		$this->db->order_by('skripsi.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('skripsi',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('skripsi',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('skripsi');
	}

}
