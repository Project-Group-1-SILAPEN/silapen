<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class anggota_lab extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_anggota_lab');
	}

	public function index()
	{
		$this->fungsi->check_previleges('anggota_lab');
		$data['anggota_lab'] = $this->m_anggota_lab->getData();
		$this->load->view('kelola/anggota_lab/v_anggota_lab_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Anggota Lab";
		$subheader = "anggota_lab";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/anggota_lab/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/anggota_lab/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('anggota_lab');
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
			$this->load->view('kelola/anggota_lab/v_anggota_lab_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_anggota','nama_anggota','status'));
			$this->m_anggota_lab->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/anggota_lab","#content")');
			$this->fungsi->message_box("Tambah anggota Lab sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah anggota_lab dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('anggota_lab');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'id_anggota',
					'label' => 'id_anggota',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('anggota_lab',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/anggota_lab/v_anggota_lab_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_anggota','nama_anggota','status'));
			$this->m_anggota_lab->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/anggota_lab","#content")');
			$this->fungsi->message_box("Anggota lab sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit anggota_lab dengan data sbb:",true);
		}
	}
	public function delete($id)
	{
		$this->fungsi->check_previleges('anggota_lab');
		if($id == '' || !is_numeric($id)) die;
		$this->m_anggota_lab->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/anggota_lab","#content")');
		$this->fungsi->message_box("Data anggota lab berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus anggota lab dengan id ".$id);
	}		
}