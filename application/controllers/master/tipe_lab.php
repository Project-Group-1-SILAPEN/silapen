<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class tipe_lab extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_tipe_lab');
	}

	public function index()
	{
		$this->fungsi->check_previleges('tipe_lab');
		$data['tipe_lab'] = $this->m_tipe_lab->getData();
		$this->load->view('master/tipe_lab/v_tipe_lab_list',$data);
    }
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form  Tipe Lab";
		$subheader = "tipe lab";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/tipe_lab/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(6);
			$this->fungsi->run_js('load_silent("master/tipe_lab/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('tipe_lab');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_lab',
					'label' => 'nama_lab',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/tipe_lab/v_tipe_lab_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','nama_tipe_lab','keterangan','act'));
			$this->m_tipe_lab->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/tipe_lab","#content")');
			$this->fungsi->message_box("Data tipe_lab sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah  tipe_lab dengan data sbb:",true);
		}
	}
	
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('tipe_lab');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_lab',
					'label' => 'nama_lab',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('tipe_lab',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/tipe_lab/v_tipe_lab_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','nama_tipe_lab','keterangan','act'));
			$this->m_tipe_lab->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/tipe_lab","#content")');
			$this->fungsi->message_box("Data  tipe_lab sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit  tipe_lab dengan data sbb:",true);
	
		}
	}
}