<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Lupa_password extends CI_Controller {

  public function ForgotPassword()
   {
         $email = $this->input->post('email');      
         $findemail = $this->usermodel->ForgotPassword($email);  
         if($findemail){
          $this->usermodel->sendpassword($findemail);        
           }else{
          $this->session->set_flashdata('msg',' Email not found!');
          redirect(base_url().'user/Login','refresh');
      }
   }


	public function index()
	{
		
		$data= array(	'title'		=> 'Lupa Password',
						'isi'		=> 'lupa_password/list'
					);
		$this->load->view('layout/wrapper', $data, FALSE);


	}

}



/* End of file Lupa_password.php */
/* Location: ./application/controllers/Lupa_password.php */