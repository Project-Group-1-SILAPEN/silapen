<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pengajuan_bahan extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('pengajuan_bahan ');
		$this->db->order_by('pengajuan_bahan.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('pengajuan_bahan',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('pengajuan_bahan',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('m_pengajuan_bahan');
	}

}

