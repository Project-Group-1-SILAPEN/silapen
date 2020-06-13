<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master_bahan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_master_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('nama_bahan');
		$data['master_bahan'] = $this->m_master_bahan->getData();
		$this->load->view('master/master_bahan/v_master_bahan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Nama Bahan";
		$subheader = "master_bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/master_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/master_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('nama_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'kode',
					'label' => 'kode',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/master_bahan/v_master_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','jenis_bahan','nama_bahan','tahun','pengarang'));
			$this->m_master_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/master_bahan","#content")');
			$this->fungsi->message_box("Data Master Nama_bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master master_bahan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('nama_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
				),
				array(
					'field'	=> 'kode',
					'label' => 'kode',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/master_bahan/v_master_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','nama_bahan','jenis_bahan','keterangan','tahun','pengarang'));
			$this->m_master_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/master_bahan","#content")');
			$this->fungsi->message_box("Data Master Nama Bahan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master master_bahan dengan data sbb:",true);
		}
	}
	public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_master_bahan->deleteData($id);
				redirect('admin');
				$this->load->view('master/master_bahan/v_master_bahan_list');
			}			
}

/* End of file nama_alat.php */
/* Location: ./application/controllers/master/nama_alat.php */