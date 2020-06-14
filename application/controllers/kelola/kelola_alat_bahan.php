<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_alat_bahan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_alat_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_alat_bahan');
		$data['kelola_alat_bahan'] = $this->m_kelola_alat_bahan->getData();
		$this->load->view('kelola/kelola_alat_bahan/v_kelola_alat_bahan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Kelola Alat Bahan";
		$subheader = "kelola_alat_bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_alat_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_alat_bahan');
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
			$this->load->view('kelola/kelola_alat_bahan/v_kelola_alat_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_alat','nama_bahan',));
			$this->m_kelola_alat_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat_bahan","#content")');
			$this->fungsi->message_box("Kelola Alat dan Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Kelola Alat dan Bahan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_alat_bahan');
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
			$data['edit'] = $this->db->get_where('kelola_alat_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/kelola_alat_bahan/v_kelola_alat_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_alat','nama_bahan',));
			$this->m_kelola_alat_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat_bahan","#content")');
			$this->fungsi->message_box("Kelola Alat dan Bahan diperbarui...","success");
			$this->fungsi->catat($datapost,"Kelola Alat dan Bahan dengan data sbb:",true);
		}
	}
	public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_kelola_alat_bahan->deleteData($id);
				redirect('admin');
				$this->load->view('kelola/kelola_alat_bahan/v_kelola_alat_bahan_list');
			}	
}