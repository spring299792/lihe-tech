<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends MY_Controller {
    //获取新闻中同类型的中英文
	public function index()
	{
        $cur = intval($this->input->get('cur'));
		$data = $this->_common($cur);
		$type = addslashes($this->input->get('type',true));
		$data['list']=$this->news_model->getTypes($type);
		$data['cur'] = $cur;
		$this->load->view('page/index',$data);
	}

	public function add(){
		$data = $this->_common(13,1);
		$this->load->view('page/edit',$data);
	}

	public function insert(){
		$id=intval($this->input->post('id',true));
		$data=$this->create();
		//print_r($data);exit;
		if($id>0){
			$this->db->where('id', $id);
			$this->db->update('news',$data);
			$msg="修改信息成功";
		}else{
			$this->db->insert('news',$data);
			$msg="添加信息成功";
		}
		echo "<script>alert('".$msg."');history.back();</script>";
	}

	public function edit(){
		$id=intval($this->input->get('id'));
        $cur=intval($this->input->get('cur'));
		$row=$this->news_model->getNewsInfo($id);
		$data = $this->_common($cur,1);
		$data['row']=$row;
		$this->load->view('page/edit',$data);
	}

	public function del(){
		$id=intval($this->input->get('id'));
		$this->db->delete('page', array('id' => $id)); 
		echo "<script>location.href='".MANAGE_URL.base_url()."page';</script>";
	}

}
