<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class pengumuman extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_pengumuman');
	}

	public function index()
	{
		$this->fungsi->check_previleges('pengumuman');
		$data['pengumuman'] = $this->m_pengumuman->getData();
		$this->load->view('kelola/pengumuman/v_pengumuman_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form pengumuman";
		$subheader = "pengumuman";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/pengumuman/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/pengumuman/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('pengumuman');
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
			$this->load->view('kelola/pengumuman/v_pengumuman_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama','nomor_induk','status','kategori_pinjam','tanggal_pinjam','tanggal_kembali'));
			$this->m_pengumuman->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/pengumuman","#content")');
			$this->fungsi->message_box("Tambah pengumuman sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah pengumuman dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('pengumuman');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'nama',
					'label' => 'nama',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('pengumuman',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/pengumuman/v_pengumuman_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama','nomor_induk','status','kategori_pinjam','tanggal_pinjam','tanggal_kembali'));
			$this->m_pengumuman->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/pengumuman","#content")');
			$this->fungsi->message_box("pengumuman sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit pengumuman dengan data sbb:",true);
		}
	}
}