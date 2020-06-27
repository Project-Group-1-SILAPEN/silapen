<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class skripsi extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_skripsi');
	}

	public function index()
	{
		$this->fungsi->check_previleges('skripsi');
		$data['skripsi'] = $this->m_skripsi->getData();
		$this->load->view('kelola/skripsi/v_skripsi_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Skripsi";
		$subheader = "skripsi";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/skripsi/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/skripsi/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('skripsi');
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
			$this->load->view('kelola/skripsi/v_skripsi_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','judul_skripsi','nama_penulis','dosen_pembimbing1','dosen_pembimbing2','link_file','tahun_skripsi','status skripsi'));
			$this->m_skripsi->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/skripsi","#content")');
			$this->fungsi->message_box("Tambah Skripsi Sukses Disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Skripsi Dengan Data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('skripsi');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'judul_skripsi',
					'label' => 'judul_skripsi',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('skripsi',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/skripsi/v_skripsi_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','judul_skripsi','nama_penulis','dosen_pembimbing1','dosen_pembimbing2','link_skripsi','tahun_skripsi','status_skripsi'));
			$this->m_skripsi->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/skripsi","#content")');
			$this->fungsi->message_box("Daftar Skripsi Sukses Diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Daftar Skripsi Dengan Data sbb:",true);
		}
	}
	public function delete($id)
	{
		$this->fungsi->check_previleges('skripsi');
		if($id == '' || !is_numeric($id)) die;
		$this->m_skripsi->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/skripsi","#content")');
		$this->fungsi->message_box("Data Skripsi berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus Skripsi dengan id ".$id);
	}		
}