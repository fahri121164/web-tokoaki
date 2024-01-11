<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dasbor extends CI_Controller {

	// load model
	public function __construct()
	{
		parent::__construct();
		$this->load->model('produk_model');
				// proteksi halaman
		$this->simple_login->cek_login();
	}
	
	//halaman utama dasbor
	public function index()
	{
		$produk = $this->produk_model->listing();
		$data = array( 'title'		=> 'Produk Yang Dijual',
						'produk'		=> $produk,
						'isi'		=> 'admin/dasbor/list'
					);
		$this->load->view('admin/layout/wrapper', $data, FALSE);
	}

}

/* End of file Dasbor.php */
/* Location: ./application/controllers/admin/Dasbor.php */