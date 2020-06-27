<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class cek_status_peminjaman extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('peminjaman/m_cek_status_peminjaman');
	}

	public function index()
	{
		$this->fungsi->check_previleges('cek_status_peminjaman');
		$data['cek_status_peminjaman'] = $this->m_cek_status_peminjaman->getData();
		$this->load->view('peminjaman/v_cek_status_peminjaman_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Cek Status Peminjaman";
		$subheader = "cek status peminjaman";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("peminjaman/cek_status_peminjaman/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("peminjaman/cek_status_peminjaman/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('cek_status_peminjaman');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id_peminjaman',
					'label' => 'id_peminjaman',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('peminjaman/v_cek_status_peminjaman_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id_peminjaman','jenis_peminjaman','status'));
			$this->m_cek_status_peminjaman->insertData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/cek_status_peminjaman","#content")');
			$this->fungsi->message_box("Data status peminjaman sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah status peminjaman dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('cek_status_peminjaman');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
				),
				array(
					'field'	=> 'id_peminjaman',
					'label' => 'id_peminjaman',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('cek_status_peminjaman',array('id'=>$id));
			$data['status']='';
			$this->load->view('peminjaman/v_cek_status_peminjaman_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_peminjaman','jenis_peminjaman','status'));
			$this->m_cek_status_peminjaman->updateData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/cek_status_peminjaman","#content")');
			$this->fungsi->message_box("Data status peminjaman sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit status peminjaman dengan data sbb:",true);
		}
	}
	public function delete($id)
	{
		$this->fungsi->check_previleges('cek_status_peminjaman');
		if($id == '' || !is_numeric($id)) die;
		$this->m_cek_status_peminjaman->deleteData($id);
		$this->fungsi->run_js('load_silent("peminjaman/cek_status_peminjaman","#content")');
		$this->fungsi->message_box("Data status peminjaman berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus status peminjaman dengan id ".$id);
	}		
}