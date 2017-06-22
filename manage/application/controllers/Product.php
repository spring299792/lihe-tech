<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends MY_Controller {
	public $types;
	function __construct(){
		parent :: __construct();
	}
	public function index()
	{
        $cur = intval($this->input->get('cur'));
        $data = $this->_common($cur);

		$data['list']=$this->db->get('product')->result_array();
        $data['cur'] = $cur;
		$this->load->view('product/index',$data);
	}

	public function add(){
        $cur = intval($this->input->get('cur'));
        $data = $this->_common($cur);
		$this->load->view('product/edit',$data);
	}

	public function insert(){
		$id=intval($this->input->post('id',true));

		if($id>0){
			$data=$this->create();
			$this->db->where('id', $id);
			$this->db->update('product',$data);
			$msg="修改产品成功";
		}else{
			$data=$this->create();
			$this->db->insert('product',$data);

            $np['type'] = addslashes($_POST['type']);
            $np['is_pro'] = 1;
            $np['lang'] = 'cn';
            //查询当前是否存在type的news
            $res = $this->db->where('type',$np['type'])->get('news')->row_array();
            if(!$res){
                $this->db->insert('news',$np);
                //echo $news->getLastSql();exit;
                $np['lang'] = 'en';
                $this->db->insert('news',$np);
            }
			//echo $this->db->last_query();exit;
			$msg="产品发布成功";
		}
		echo "<script>alert('".$msg."');location.href='".MANAGE_URL.base_url()."Product/?cur=111';</script>";
	}
	public function edit(){
		$id=intval($this->input->get('id',true));
		
		$row=$this->news_model->getproductInfo($id);
		//print_r($row);
		$flag=111;
		$data = $this->_common($flag);
		$data['row']=$row;
		$this->load->view('product/edit',$data);
	}

	public function del(){
		$id=intval($this->input->get('id',true));
		$this->db->delete('product', array('id' => $id)); 
		echo "<script>location.href='".MANAGE_URL.base_url()."Product/?cur=111';</script>";
	}

}
