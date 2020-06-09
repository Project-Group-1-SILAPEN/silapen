<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class peminjaman_bahan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('peminjaman/m_peminjaman_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('peminjaman_bahan');
		$data['peminjaman_bahan'] = $this->m_peminjaman_bahan->getData();
		$this->load->view('peminjaman/v_peminjaman_bahan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Peminjaman Bahan";
		$subheader = "peminjaman_bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('peminjaman_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_bahan',
					'label' => 'nama_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('peminjaman/v_peminjaman_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_bahan','nama_peminjam','tanggal_pinjam', 'satuan'));
			$this->m_peminjaman_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_bahan","#content")');
			$this->fungsi->message_box("Data Peminjaman Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah peminjaman_bahan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('peminjaman_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_bahan',
					'label' => 'nama_bahan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('peminjaman_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('peminjaman/v_peminjaman_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_bahan','nama_peminjam','tanggal_pinjam','satuan'));
			$this->m_peminjaman_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/peminjaman_bahan","#content")');
			$this->fungsi->message_box("Data Peminjaman Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Peminjaman_bahan dengan data sbb:",true);
		}
	}
}