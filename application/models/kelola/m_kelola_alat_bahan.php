<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_alat_bahan extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('kelola_alat_bahan');
		$this->db->order_by('kelola_alat_bahan.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('kelola_alat_bahan',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('kelola_alat_bahan',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_alat_bahan');
	}

}
