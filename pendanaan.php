<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pendanaan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_pendanaan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('pendanaan');
		$data['row'] = $this->m_pendanaan->getEdit('1')->row();
		$this->load->view('master/pendanaan/v_pendanaan',$data);
	}
}
/* End of file pendanaan.php */
/* Location: ./application/controllers/master/pendanaan.php */
