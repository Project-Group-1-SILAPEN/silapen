<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class mata_kuliah extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_mata_kuliah');
	}

	public function index()
	{
		$this->fungsi->check_previleges('mata_kuliah');
		$data['mata_kuliah'] = $this->m_mata_kuliah->getData(); 
		$this->load->view('master/mata_kuliah/v_mata_kuliah_list', $data);
    }
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Mata Kuliah";
		$subheader = "mata_kuliah";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/mata_kuliah/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/mata_kuliah/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('mata_kuliah');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_mata_kuliah',
					'label' => 'nama_mata_kuliah',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/mata_kuliah/v_mata_kuliah_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_mk','jml_sks','keterangan'));
			$this->m_mata_kuliah->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/mata_kuliah","#content")');
			$this->fungsi->message_box("Data Master Mata Kuliah sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master Mata Kuliah dengan data sbb:",true);
		}
    }
    public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('mata_kuliah');
		$this->load->library('form_validation');
		$config = array(
				
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
			$data['edit'] = $this->db->get_where('mata_kuliah',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/mata_kuliah/v_mata_kuliah_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_mk','jml_sks','keterangan'));
			$this->m_tipe_lab->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/mata_kuliah","#content")');
			$this->fungsi->message_box("Data Master mata kuliah sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit mata kuliah dengan data sbb:",true);
		}
	}
}