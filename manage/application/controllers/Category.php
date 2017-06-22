<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
*分类管理
*/
class Category extends MY_Controller {

	public $types;
	function __construct(){
		parent :: __construct();
		$this->types=array('pro','fangan');
	}
	public function index($type)
	{
		$type=addslashes($type);
		if(!in_array($type, $this->types)){
			show_404();
		}
		$type=='pro' ? $flag=87:$flag=94;
		$data = $this->_common($flag);
		$data['list']=$this->news_model->getCategory($type);
		$data['type']=$type;
		$this->load->view('category/index',$data);
	}

	public function clist(){
		$fid=intval($this->input->get('fid'));
		//根据节点获取flag
		//$flag=$this->admin_model->getFlag($fid);
		$data = $this->_common(104);
		$data['list']=$this->news_model->getCategory($fid);
		$data['fid']=$fid;
		$data['finfo']=$this->news_model->getCategoryInfo($data['fid']);
		$this->load->view('category/index',$data);
	}

	public function add(){
		$type=addslashes($this->input->get('type'));
		//$flag=$this->admin_model->getFlag($fid);
		$type=='pro' ? $flag=87:$flag=94;
		$data = $this->_common($flag);
		//$data['finfo']=$this->news_model->getCategoryInfo($fid);
		$data['type']=$type;
		$this->load->view('category/edit',$data);
	}

	public function insert(){
		$id=intval($this->input->post('id',true));
		$data=$this->create();
		$type=addslashes($this->input->post('type',true));
		if($id>0){
			$this->db->where('id', $id);
			$this->db->update('category',$data);
			$msg="修改分类成功";
		}else{
			$this->db->insert('category',$data);
			$msg="新增分类成功";
		}
		echo "<script>alert('".$msg."');location.href='".MANAGE_URL.base_url()."Category/".$type."';</script>";
	}

	public function edit(){
		$id=intval($this->input->get('id'));
		$row=$this->news_model->getCategoryInfo($id);
		//dump($row);
		$fid=$row['fid'];
		//$flag=$this->admin_model->getFlag($fid);
		$type=$row['type'];
		$type=='pro' ? $flag=87:$flag=94;
		$data = $this->_common(104);
		$data['row']=$row;
		$data['fid']=$fid;
		$data['finfo']=$this->news_model->getCategoryInfo($row['fid']);
		$this->load->view('category/edit',$data);
	}

	public function del(){
		$id=intval($this->input->get('id'));
		$row=$this->news_model->getCategoryInfo($id);
		$this->db->delete('category', array('id' => $id)); 
		echo "<script>location.href='".MANAGE_URL.base_url()."Category/".$row['type']."';</script>";
	}

}
