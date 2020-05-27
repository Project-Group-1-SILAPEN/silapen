<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class peminjaman_alat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('peminjaman/m_peminjaman_alat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('peminjaman_alat');
		$data['peminjaman_alat'] = $this->m_peminjaman_alat->getData();
		$this->load->view('peminjaman/v_peminjaman_alat_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Peminjaman Alat";
		$subheader = "peminjaman_alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_alat/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('peminjaman_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_alat',
					'label' => 'nama_alat',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('peminjaman/v_peminjaman_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_alat','nama_peminjam','tanggal_pinjam', 'satuan'));
			$this->m_peminjaman_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_alat","#content")');
			$this->fungsi->message_box("Data Peminjaman Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah peminjaman_alat dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('peminjaman_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_alat',
					'label' => 'nama_alat',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('peminjaman_alat',array('id'=>$id));
			$data['status']='';
			$this->load->view('peminjaman/v_peminjaman_alat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_alat','nama_peminjam','tanggal_pinjam','satuan'));
			$this->m_peminjaman_alat->updateData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_alat","#content")');
			$this->fungsi->message_box("Data Peminjaman Alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Peminjaman_alat dengan data sbb:",true);
		}
	}
}