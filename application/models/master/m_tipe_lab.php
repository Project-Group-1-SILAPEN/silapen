<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_tipe_lab extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('tipe_lab ma ');
		$this->db->order_by('ma.id', 'desc');
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

/* End of file m_nama_alat.php */
/* Location: ./application/models/master/m_nama_alat.php */