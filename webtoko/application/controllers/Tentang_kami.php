<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tentang_kami extends CI_Controller {

	public function index()
	{
		$data = array(	'title'		=> 'Tentang Kami',
						'isi'		=> 'tentang_kami/list'
					);
		$this->load->view('layout/wrapper', $data, FALSE);
	}

}

/* End of file Tentang_kami.php */
/* Location: ./application/controllers/Tentang_kami.php */