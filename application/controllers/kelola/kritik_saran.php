<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kritik_saran extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kritik_saran');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kritik_saran');
		$data['kritik_saran'] = $this->m_kritik_saran->getData();
		$this->load->view('kelola/kritik_saran/v_kritik_saran_list',$data);
    }
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Lab Kritik dan Saran";
		$subheader = "kritik dan saran";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kritik_saran/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kritik_saran/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kritik_saran');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'pengirim',
					'label' => 'pengirim',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('kelola/kritik_saran/v_kritik_saran_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','pengirim','tgl_pengiriman','lab_tujuan','kritik','saran'));
			$this->m_kritik_saran->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kritik_saran","#content")');
			$this->fungsi->message_box("Data kritik dan saran sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah kritik dan saran dengan data sbb:",true);
		}
	}
	
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kritik_saran');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'pengirim',
					'label' => 'pengirim',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('lab_kritik_saran',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/kritik_saran/v_kritik_saran_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','pengirim','tgl_pengiriman','lab_tujuan','kritik','saran'));
			$this->m_kritik_saran->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kritik_saran","#content")');
			$this->fungsi->message_box("Data kritik dan saran sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit kritik dan saran dengan data sbb:",true);
	
		}
	}
	public function delete_kritik_saran()
	{
		$this->fungsi->check_previleges('kritik_saran');
		$id = $this->uri->segment(4);
		if($id == '' || !is_numeric($id)) die;
		$this->m_kritik_saran->delete_kritik_saran($id);
		$this->show_kritik_saran();
		$this->fungsi->catat("Menghapus kritik dan saran dengan id ".$id);
	}
}
