<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pendanaan extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('lab_pendanaan ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('lab_pendanaan',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('lab_pendanaan',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('lab_pendanaan');
	}

}

/* End of file m_pendanaan.php */
/* Location: ./application/models/lab/m_pendanaan.php */
