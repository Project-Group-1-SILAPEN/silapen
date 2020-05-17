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
		$data['pendanaan'] = $this->m_pendanaan->getData();
		$this->load->view('master/pendanaan/v_pendanaan_list',$data);
    }

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Pendanaan";
		$subheader = "pendanaan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/pendanaan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/pendanaan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('pendanaan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'pendanaan',
					'label' => 'pendanaan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/pendanaan/v_pendanaan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','sumber_pendanaan','jumlah','keterangan'));
			$this->m_pendanaan->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/pendanaan","#content")');
			$this->fungsi->message_box("Data Master Pendanaan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master pendanaan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('pendanaan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'pendanaan',
					'label' => 'pendanaan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_pendanaan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/pendanaan/v_pendanaan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','sumber_pendanaan','jumlah','keterangan'));
			$this->m_pendanaan->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/pendanaan","#content")');
			$this->fungsi->message_box("Data Master Pendanaan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master pendanaan dengan data sbb:",true);
		}
	}
}

/* End of file pendanaan.php */
/* Location: ./application/controllers/master/pendanaan.php */
