<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_user extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('kelola_user ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
    }
    
    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('kelola_user',$data);
       
	}
   //update


	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('kelola_user',$data);
	}
   //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_user');
	}

}