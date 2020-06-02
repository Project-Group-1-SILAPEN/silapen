<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class pengajuan_alat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('pengajuan/m_pengajuan_alat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$data['pengajuan_alat'] = $this->m_pengajuan_alat->getData();
		$this->load->view('pengajuan_alat/v_pengajuan_alat_list',$data);
    }
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form pengajuan alat";
		$subheader = "pengajuan alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'pengajuan_alat',
					'label' => 'pengajuan_alat',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('pengajuan_alat/v_pengajuan_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_alat','jenis_alat','tahun_alat','keterangan'));
			$this->m_pengajuan_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
			$this->fungsi->message_box("Data pengajuan_alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah pengajuan_alat dengan data sbb:",true);
		}
	}
	
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
				),
				array(
					'field'	=> 'pengajuan_alat',
					'label' => 'pengajuan_alat',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('pengajuan_alat',array('id'=>$id));
			$data['status']='';
			$this->load->view('pengajuan_alat/v_pengajuan_alat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_alat', 'jenis_alat','tahun_alat','keterangan'));
			$this->m_pengajan_alat->updateData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
			$this->fungsi->message_box("Data pengajuan_alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit pengajuan_alat dengan data sbb:",true);
	
		}
	}
}
