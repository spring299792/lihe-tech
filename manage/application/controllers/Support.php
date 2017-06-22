<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Support extends MY_Controller {
	public function index()
	{
			
		$data = $this->_common(109);
		$data['list']=$this->news_model->getSupports();
		$this->load->view('support/index',$data);
	}

	public function add(){	
		$data = $this->_common(109,1);
		$this->load->view('support/edit',$data);
	}

	public function insert(){
		$id=intval($this->input->post('id',true));
		//文件上传
		$dir = '../data/news/';
		$allowedext=array('gif','jpg','png','pdf');
		$allowedsize=2048000;
		$filenames="";
		if($id>0){
			//缩略图处理
			$filename="";
			if($_FILES['img'] && $_FILES['img']['size']>0 && $_FILES['img']['size']<$allowedsize){
				//获取扩展名
				$filepos=strpos($_FILES['img']['name'], ".");//查找出来第一个.出现的地方。以这个点来获取后面的后缀，如果不是.pdf或者.jpg，直接判断为错误，不入库，提示重新上传，为了避免***.jpg.pdf多扩展的文件
				$fileext=substr($_FILES['img']['name'],$filepos+1);
				if(in_array($fileext, $allowedext)){
					$num=mt_rand(0,10000);
					$filename=time().$num.".".$fileext;
					if (move_uploaded_file($_FILES['img']['tmp_name'], $dir . $filename)) {
						$filenames=$filename;
					}
				}	
			}else{
				$filename=addslashes($this->input->post('img',true));
			}
			$_POST['img']=$filename;
			$_POST['create_time']=time();
			$data=$this->create();
			$this->db->where('id', $id);
			$this->db->update('support',$data);
			$msg="修改信息成功";
		}else{
			//缩略图处理
			$filename="";
			if($_FILES['img'] && $_FILES['img']['size']>0 && $_FILES['img']['size']<$allowedsize){
				//获取扩展名
				$filepos=strpos($_FILES['img']['name'], ".");//查找出来第一个.出现的地方。以这个点来获取后面的后缀，如果不是.pdf或者.jpg，直接判断为错误，不入库，提示重新上传，为了避免***.jpg.pdf多扩展的文件
				$fileext=substr($_FILES['img']['name'],$filepos+1);
				if(in_array($fileext, $allowedext)){
					$num=mt_rand(0,10000);
					$filename=time().$num.".".$fileext;
					if (move_uploaded_file($_FILES['img']['tmp_name'], $dir . $filename)) {
						$filenames=$filename;
					}
				}	
			}else{
				$filename=addslashes($this->input->post('img',true));
			}
			$_POST['img']=$filename;
			$_POST['create_time']=time();
			$data=$this->create();
			$this->db->insert('support',$data);
			$aid=$this->db->insert_id();
			$msg="信息发布成功";
		}
		echo "<script>alert('".$msg."');location.href='".MANAGE_URL.base_url()."support/index';</script>";
	}
	public function edit(){
		$id=intval($this->input->get('id',true));
		
		$row=$this->news_model->getSupportInfo($id);
		$data = $this->_common(109,1);

		$data['row']=$row;
		$this->load->view('support/edit',$data);
	}

	public function del(){
		$id=intval($this->input->get('id',true));
		$row=$this->news_model->getSupportInfo($id);
		$this->db->delete('support', array('id' => $id)); 
		echo "<script>location.href='".MANAGE_URL.base_url()."support/index';</script>";
	}

}
