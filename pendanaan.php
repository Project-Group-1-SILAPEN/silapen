<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pendanaan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_instansi');
	}

	public function index()
	{
		$this->fungsi->check_previleges('instansi');
		$data['row'] = $this->m_instansi->getEdit('1')->row();
		$this->load->view('master/instansi/v_instansi',$data);
	}
}
/* End of file instansi.php */
/* Location: ./application/controllers/master/instansi.php */
