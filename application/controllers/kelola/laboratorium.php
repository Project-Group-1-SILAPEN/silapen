<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class laboratorium extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_laboratorium');
	}

	public function index()
	{
		$this->fungsi->check_previleges('laboratorium');
		$data['laboratorium'] = $this->m_laboratorium->getData();
		$this->load->view('kelola/laboratorium/v_laboratorium_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form laboratorium";
		$subheader = "laboratorium";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/laboratorium/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/laboratorium/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('laboratorium');
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
			$this->load->view('kelola/laboratorium/v_laboratorium_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode_laboratorium','nama_laboratorium','jenis_laboratorium','kondisi','keterangan'));
			$this->m_laboratorium->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/laboratorium","#content")');
			$this->fungsi->message_box("Tambah laboratorium sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah laboratorium dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('laboratorium');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'kode_laboratorium',
					'label' => 'kode_laboratorium',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('laboratorium',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/laboratorium/v_laboratorium_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode_laboratorium','nama_laboratorium','jenis_laboratorium','kondisi','keterangan'));
			$this->m_laboratorium->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/laboratorium","#content")');
			$this->fungsi->message_box("laboratorium sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit laboratorium dengan data sbb:",true);
		}
	}
	public function delete($id)
	{
		$this->fungsi->check_previleges('laboratorium');
		if($id == '' || !is_numeric($id)) die;
		$this->m_laboratorium->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/laboratorium","#content")');
		$this->fungsi->message_box("Data laboratorium berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laboratorium dengan id ".$id);
	}		
}