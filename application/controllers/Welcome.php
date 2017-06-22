<?php
date_default_timezone_set('Asia/Shanghai');
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

    public $types = array();
    public $lang = array();
    public $pro = array();
	function __construct(){
		parent :: __construct();
		$this->lang = array('en','cn');
		$this->types = array('Index','Info','Lihe','Yanjiu','Xiaoshi','Zhongshi','Fenxi','Zhiliang','Yuanliao','Chjsc','Jhpj','Hse','Jiankang','Anquan','Huanbao','Keji','Contact');

		$pro = $this->getPros();
		$this->pro = $pro;
        $this->types = array_merge($this->types,$pro);

	}

	function getPros(){
	    $res = $this->db->query("select type from think_news where is_pro=1 and type!='' group by type")->result_array();
	    return array_column($res,'type');
    }
	/**
	* 公共文件
	*/
	public function _common($type="",$lang="cn"){
		$data=array();
		$data['type']=$type;
        $data['lang']=$lang;
		$data['style'] = $this->load->view('style', $data, true);
		//产品分类
		if(in_array($type,$this->pro)){
			$flist=$this->db->query("select title,type from think_news where is_pro=1 and type!='' group by type")->result_array();
			$data['clist']=$flist;
			//print_r($data['clist']);
		}
        $data['header'] = $this->load->view('header', $data, true);
        $data['left'] = $this->load->view('left', $data, true);
        $data['footer'] = $this->load->view('footer', $data, true);
        return $data;
	}

	function locked(){
		if($_POST['pass']=="locked"){
			$_SESSION['lock']='locked';
			header("Location:/");
		}else{
			echo "<script>alert('密码错误，请联系管理员');history.back();</script>";
		}
	}

	public function index(){
        $this->load->view('Index/first');
    }

	public function info($name,$lang){
	    //判断是否在类型里
        if(in_array($name,$this->types)){
            $name=strtolower($name);
            //如果lang为空，则显示第一页
            if(!$lang){
                $this->load->view('Index/first');
            }else{
                if(in_array($lang,$this->lang)){
                    echo "333";
                }else{
                    show_404();
                }
            }

        }else{
            show_404();
        }
    }


}
