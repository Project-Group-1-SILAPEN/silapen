<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_jadwal extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_jadwal');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_jadwal');
		$data['kelola_jadwal'] = $this->m_kelola_jadwal->getData();
		$this->load->view('kelola/v_kelola_jadwal_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Jadwal";
		$subheader = "kelola_jadwal";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_jadwal/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_jadwal/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_jadwal');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_jadwal',
					'label' => 'nama_jadwal',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('kelola/v_kelola_jadwal_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_jadwal','file_jadwal','status'));
			$this->m_peminjaman_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_jadwal","#content")');
			$this->fungsi->message_box("Tambah Jadwal Lab sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Jadwal Lab dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_jadwal');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_jadwal',
					'label' => 'nama_jadwal',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_jadwal',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/v_kelola_jadwal_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_jadwal','file_jadwal','status'));
			$this->m_kelola_jadwal->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_jadwal","#content")');
			$this->fungsi->message_box("Jadwal sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Jadwal Lab dengan data sbb:",true);
		}
	}
}