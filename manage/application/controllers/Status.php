<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* 状态修改
*/
class Status extends MY_Controller {
	//发布
	public function resume()
	{
		$s=addslashes($_GET['s']);
		$id=intval(set_val($s));
		$model=addslashes($this->input->get('model',true));
		if($model && $id>0){
			$data=array('status'=>1);
			$this->db->where('id', $id);
			$this->db->update($model,$data);
			$json['id']=$id;
			$json['url']=base_url().'status/forbid/id/'.$id.'&model='.$model;
			if(WEB_TEST==1){
				$json['html']="";
			}else{
				$json['html']="取消发布";
			}
			
			echo json_encode($json);
		}
	}
	//取消发布（如果测试站，状态改成3，正式改成0）
	public function forbid()
	{
		$s=addslashes($_GET['s']);
		$id=intval(set_val($s));
		$model=addslashes($this->input->get('model',true));
		if($model && $id>0){
			$data=array('status'=>NEWS_STATUS);
			$this->db->where('id', $id);
			$this->db->update($model,$data);
			$json['id']=$id;
			$json['url']=base_url().'status/resume/id/'.$id.'&model='.$model;
			$html="发布";
			if(WEB_TEST==1){
				$html="同步";
			}
			$json['html']=$html;
			echo json_encode($json);
		}
	}

	//同步
	function commun(){
		$s=addslashes($_GET['s']);
		$id=intval(set_val($s));
		$model=addslashes($this->input->get('model',true));
		if($model && $id>0){
			$data=array('status'=>1,'n'=>1);
			$this->db->where('id', $id);
			$this->db->update($model,$data);
			$json['id']=$id;
			$json['url']=base_url().'status/forbid/id/'.$id.'&model='.$model;
			$json['html']="";
			echo json_encode($json);
		}
	}
}
