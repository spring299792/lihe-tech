<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/6/15
 * Time: 13:39
 */

class Keji extends MY_Controller{

    public function index(){
        $cur = intval($this->input->get('cur'));
        $data = $this->_common($cur);
        $data['list']=$this->db->get('keji')->result_array();
        $data['cur'] = $cur;
        $this->load->view('keji/index',$data);
    }

    public function add(){
        $cur = intval($this->input->get('cur'));
        $data = $this->_common($cur);
        $this->load->view('keji/edit',$data);
    }

    public function edit(){
        $id=intval($this->input->get('id',true));

        $row=$this->db->where('id',$id)->get('keji')->row_array();
        //print_r($row);
        $flag=103;
        $data = $this->_common($flag);
        $data['row']=$row;
        $this->load->view('keji/edit',$data);
    }

    public function insert(){
        $id=intval($this->input->post('id',true));

        if($id>0){
            $data=$this->create();
            $this->db->where('id', $id);
            $this->db->update('keji',$data);
            $msg="修改科技前沿成功";
        }else{
            $data=$this->create();
            $this->db->insert('keji',$data);
            //echo $this->db->last_query();exit;
            $msg="科技前沿发布成功";
        }
        echo "<script>alert('".$msg."');location.href='".MANAGE_URL.base_url()."Keji/?cur=103';</script>";
    }

    public function del(){
        $id=intval($this->input->get('id',true));
        $this->db->delete('keji', array('id' => $id));
        echo "<script>location.href='".MANAGE_URL.base_url()."Keji/?cur=103';</script>";
    }

}