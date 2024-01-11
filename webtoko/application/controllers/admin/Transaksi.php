<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transaksi extends CI_Controller {

	// load model
	public function __construct()
	{
		parent::__construct();
		$this->load->model('transaksi_model');
		$this->load->model('rekening_model');
		$this->load->model('header_transaksi_model');
	}

	// load data transaksi
	public function index()
	{
		$header_transaksi = $this->header_transaksi_model->listing();

		$data 		= array(	'title'		=> 'Data Transaksi',
								'header_transaksi' => $header_transaksi,
								'isi'		=> 'admin/transaksi/list'
								);
		$this->load->view('admin/layout/wrapper', $data, FALSE);
	}

	// detail
	public function detail($kode_transaksi)
	{		
		$header_transaksi 	= $this->header_transaksi_model->kode_transaksi($kode_transaksi);
		$transaksi 			= $this->transaksi_model->kode_transaksi($kode_transaksi);
		
		$data = array(	'title'				=> 'Detail Belanja',
						'header_transaksi' 	=> $header_transaksi,
						'transaksi'			=> $transaksi,
						'isi'				=> 'admin/transaksi/detail'
					);	
		$this->load->view('admin/layout/wrapper', $data, FALSE);	
	}




	public function editMenu($id)
    {
        
       
        $data['header_transaksi'] = $this->header_transaksi_model->getMenuById($id);


		$valid 		= $this->form_validation;

		$valid->set_rules('status_bayar','Status_bayar','required',
			array(	'required'		=>	'%s harus diisi'));


		if($valid->run()===FALSE) {
		// end validasi

		$data = array(	'title'					=>	'Status Bayar',
						'header_transaksi'		=> $header_transaksi,
						'isi'					=> 	'admin/transaksi/tampil'
					);
		$this->load->view('admin/layout/wrapper', $data, FALSE);

		}else{
			
			$this->header_transaksi_model->edit($data);
			$this->session->set_flashdata('sukses', 'Data telah diedit');
			redirect(base_url('admin/transaksi'),'refresh'); 
			}

			
	}

}
/* End of file Transaksi.php */
/* Location: ./application/controllers/admin/Transaksi.php */