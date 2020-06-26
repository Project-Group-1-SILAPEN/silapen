<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class gambar_depan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_gambar_depan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('gambar_depan');
		$data['gambar_depan'] = $this->m_gambar_depan->getData();
		$this->load->view('master/gambar_depan/v_gambar_depan_list',$data);
	}
	
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Gambar Depan";
		$subheader = "gambar_depan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/gambar_depan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/gambar_depan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('gambar_depan');
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
			$this->load->view('master/gambar_depan/v_gambar_depan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','gambar_depan','act'));
			$this->m_gambar_depan->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/gambar_depan","#content")');
			$this->fungsi->message_box("Data gabar depan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah gambar_depan dengan data sbb:",true);
		}
	}
	
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('gambar_depan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'gambar_depan',
					'label' => 'gambar_depan',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('gambar_depan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/gambar_depan/v_gambar_depan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','gambar_depan','act'));
			$this->m_gambar_depan->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/gambar_depan","#content")');
			$this->fungsi->message_box("Data gambar depan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit gambar_depan dengan data sbb:",true);
	
		}
    }
    function delete($id){
        $row = $this->db->where('id',$id)->get('gambar_depan')->row();
        unlink(''.$row->gambar_depan);
        $id = $this->uri->segment(4);
        $this->m_gambar_depan->deleteData($id);
        redirect('admin');
      } 

}