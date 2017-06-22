<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Node extends MY_Controller {

	
	public function index()
	{
		$data = $this->_common(2);
		$gid=intval($this->input->get('pid'));
		$list=$this->admin_model->getNodes($gid);

		$group=$this->admin_model->getGroupInfo($gid);
		$data['group']=$group;
		$data['list']=$list;
		$data['pid']=$gid;
		$this->load->view('node/index',$data);
	}

	public function add(){
		$data = $this->_common(2);
		$gid=intval($this->input->get('gid',true));
		$data['row']['group_id']=$gid;
		$this->load->view('node/edit',$data);
	}

	public function insert(){
		$id=intval($this->input->post('id',true));
		$data=$this->create();
		if($id>0){
			$this->db->where('id', $id);
			$this->db->update('node',$data);
			$msg="修改数据成功";
		}else{
			$this->db->insert('node',$data);
			$msg="新增数据成功";
		}
		echo "<script>alert('".$msg."');location.href='".MANAGE_URL.base_url()."node';</script>";
	}

	public function edit(){
		$id=intval($this->input->get('id'));
		$data = $this->_common(2);
		$data['row']=$this->admin_model->getNodeInfo($id);
		$this->load->view('node/edit',$data);
	}

	public function del(){
		$id=intval($this->input->get('id'));
		$this->db->delete('node', array('id' => $id)); 
		echo "<script>location.href='".MANAGE_URL.base_url()."node';</script>";
	}
}
