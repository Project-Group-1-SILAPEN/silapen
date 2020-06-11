<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class modul extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_modul');
	}

	public function index()
	{
		$this->fungsi->check_previleges('modul');
		$data['modul'] = $this->m_modul->getData();
		$this->load->view('kelola/modul/v_modul_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form modul";
		$subheader = "modul";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/modul/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/modul/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('modul');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('kelola/modul/v_modul_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','mata_kuliah','nama_modul','file_modul','deskripsi_modul','dosen_pengarang','status'));
			$this->m_modul->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/modul","#content")');
			$this->fungsi->message_box("Tambah modul Lab sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah modul dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('modul');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'mata_kuliah',
					'label' => 'mata_kuliah',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('modul',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/modul/v_modul_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','mata_kuliah','nama_modul','file_modul','deskripsi_modul','dosen_pengarang','status'));
			$this->m_modul->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/modul","#content")');
			$this->fungsi->message_box("modul sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit modul dengan data sbb:",true);
		}
	}
}