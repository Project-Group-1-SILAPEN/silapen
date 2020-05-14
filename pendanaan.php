<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class pendanaan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_pendanaan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('pendanaan');
		$data['pendanaan'] = $this->m_pendanaan->getData();
		$this->load->view('master/pendanaan/v_pendanaan_list',$data);
    }
}