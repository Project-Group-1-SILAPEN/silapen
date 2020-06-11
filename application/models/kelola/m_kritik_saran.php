<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kritik_saran extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('lab_kritik_saran ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('lab_kritik_saran',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('lab_kritik_saran',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('lab_kritik_saran');
	}

}

/* End of file m_kritik_saran.php */
/* Location: ./application/models/lab/m_kritik_saran.php */