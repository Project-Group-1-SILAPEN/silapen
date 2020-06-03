<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pengajuan_alat extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('pengajuan_alat ');
		$this->db->order_by('pengajuan_alat.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('pengajuan_alat',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('pengajuan_alat',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('m_pengajuan_alat');
	}

}

/* End of file m_nama_alat.php */
/* Location: ./application/models/master/m_nama_alat.php */