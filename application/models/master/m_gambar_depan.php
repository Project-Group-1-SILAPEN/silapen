<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_gambar_depan extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('gambar_depan  ');
		$this->db->order_by('gambar_depan.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('gambar_depan',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('gambar_depan',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('gambar_depan');
	}

}

/* End of file m_nama_alat.php */
/* Location: ./application/models/master/m_nama_alat.php */