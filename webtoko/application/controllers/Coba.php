<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Coba extends CI_Controller {

	public function index()
	{
		$data = array(	'title'		=> 'Login',
						'isi'		=> 'coba/list'
					);
		$this->load->view('layout/wrapper', $data, FALSE);
	}

}

/* End of file Tentang_kami.php */
/* Location: ./application/controllers/Tentang_kami.php */