<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class periode_pengajuan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('pengajuan/m_periode_pengajuan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		$data['periode_pengajuan'] = $this->m_periode_pengajuan->getData();
		$this->load->view('periode_pengajuan/v_periode_pengajuan_list',$data);
	}
	
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form periode pengajuan";
		$subheader = "periode_pengajuan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
    }
    public function show_addForm()
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id_pengajuan',
					'label' => 'id_pengajuan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('periode_pengajuan/v_periode_pengajuan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_pengajuan','semester','bulan','tahun_pengajuan','sumber_pendanaan','tanggal_pendanaan_turun','pajak'));
			$this->m_periode_pengajuan->insertData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan","#content")');
			$this->fungsi->message_box("Data periode pengajuan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah periode_pengajuan dengan data sbb:",true);
		}
	}
	
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'id_pengajuan',
					'label' => 'id_pengajuan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('periode_pengajuan',array('id'=>$id));
			$data['status']='';
			$this->load->view('periode_pengajuan/v_periode_pengajuan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_pengajuan','semester','bulan','tahun_pengajuan','sumber_pendanaan','tanggal_pendanaan_turun','pajak'));
			$this->m_periode_pengajuan->updateData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan","#content")');
			$this->fungsi->message_box("Data periode pengajuan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit periode_pengajuan dengan data sbb:",true);
	
		}
	}
	public function delete($id)
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		if($id == '' || !is_numeric($id)) die;
		$this->m_periode_pengajuan->deleteData($id);
		$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan","#content")');
		$this->fungsi->message_box("Data periode pengajuan berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus periode pengajuan dengan id ".$id);
	}		
}
