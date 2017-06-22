<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Feedback extends MY_Controller {
	public function index()
	{
			
		$data = $this->_common(108);
		$data['list']=$this->db->get('feedback')->result_array();
		$this->load->view('feedback/index',$data);
	}
	public function edit(){
		$id=intval($this->input->get('id',true));
		
		$row=$this->db->where('id',$id)->get('feedback')->first_row('array');
		$data = $this->_common(108);
		$data['row']=$row;
		$this->load->view('feedback/edit',$data);
	}

	public function del(){
		$id=intval($this->input->get('id',true));
		$this->db->delete('feedback', array('id' => $id)); 
		echo "<script>location.href='".MANAGE_URL.base_url()."feedback/index';</script>";
	}

}
