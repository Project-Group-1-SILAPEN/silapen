<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class satuan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_satuan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('satuan');
		$data['satuan'] = $this->m_satuan->getData();
		$this->load->view('master/satuan/v_satuan_list',$data);
    }
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Satuan";
		$subheader = "satuan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/satuan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/satuan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('satuan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'satuan',
					'label' => 'satuan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/satuan/v_satuan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_satuan','keterangan','id_status'));
			$this->m_satuan->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/satuan","#content")');
			$this->fungsi->message_box("Data Master Satuan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master satuan dengan data sbb:",true);
		}
	}
}