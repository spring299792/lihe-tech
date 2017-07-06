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
		$this->types = array('Index','Info','Lihe','Yanjiu','Xiaoshi','Zhongshi','Fenxi','Zhiliang','Yuanliao','Chjsc','Jhpj','Hse','Jiankang','Anquan','Huanbao','Keji','Contact','Search');

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
		$data['type']=strtolower($type);
        $data['lang']=$lang;
        $data['name']=$type;
		$data['style'] = $this->load->view('public/style', $data, true);

        $data['header'] = $this->load->view('public/header', $data, true);
        $data['footer'] = $this->load->view('public/footer', $data, true);
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
	    $data = $this->_common();
	    $data['name'] = 'Index';
        $this->load->view('first',$data);
    }

	public function info($name,$lang){
        $data = $this->_common($name,$lang);
	    //判断是否在类型里
        if(in_array($name,$this->types)){
            $type=strtolower($name);

            //如果lang为空，则显示第一页
            if(!$lang){
                $this->load->view('first');
            }else{
                if(in_array($lang,$this->lang)){
                    $data['name'] = $name;
                    $data['lang'] = $lang;
                    if($type == 'index'){ // 首页
                        $this->load->view('index', $data);
                    }elseif($type == 'keji'){ // 科技前沿列表
                        $data['pic'] = 'keji';
                        $p=intval($this->input->get('page'));
                        if($p==0){
                            $p=1;
                        }
                        $limit=15;
                        $offset=$limit*($p-1);
                        $all=$this->arcall($lang);
                        $pages=ceil($all/$limit);
                        $prev=$p-1;
                        if($p<=1){
                            $prev=1;
                        }
                        $next=$p+1;
                        if($p==$pages){
                            $next=$pages;
                        }

                        $data['list']=$this->arclist($limit,$offset,$lang);
                        $data['pages']=$pages;
                        $data['prev']=$prev;
                        $data['next']=$next;
                        $data['page']=$p;
                        $this->load->view('keji',$data);
                    }elseif($type == 'search'){
                        $name=$_POST['search'];
                        $name=strtoupper($name);
                        if(!$lang){
                            $lang=$_POST['l'];
                        }
                        $data['list'] = $this->db->query("select * from think_product where name like '%".$name."%'")->result_array();
                        $this->load->view('search',$data);
                    }else{ // 查询对应内容
                        // 图片
                        $pics = array(
                            'info' => 'info',
                            'lihe' => 'lihe',
                            'contact' => 'contact',
                            'yanjiu' => 'yanjiu',
                            'xiaoshi' => 'yanjiu',
                            'zhongshi' => 'yanjiu',
                            'fenxi' => 'yanjiu',
                            'zhiliang' => 'zhiliang',
                            'yuanliao' => 'zhiliang',
                            'chjsc' => 'zhiliang',
                            'jhpj' => 'zhiliang',
                            'hse' => 'hse',
                            'jiankang' => 'hse',
                            'anquan' => 'hse',
                            'huanbao' => 'hse',
                        );
                        // 标题对应
                        $titles = array(
                            'info' => array('cn'=>'公司简介','en'=>'Company profile'),
                            'lihe' => array('cn'=>'利和产品','en'=>'LIHE Products'),
                            'yanjiu' => array('cn'=>'研究开发','en'=>'Research & Development'),
                            'xiaoshi' => array('cn'=>'小试研发','en'=>'Lab R&D'),
                            'zhongshi' => array('cn'=>'中试研发','en'=>'Pilot Plant R&D'),
                            'fenxi' => array('cn'=>'分析检测','en'=>'Test & Analysis'),
                            'zhiliang' => array('cn'=>'质量控制','en'=>'Quality Control'),
                            'yuanliao' => array('cn'=>'原料监控','en'=>'Raw Material'),
                            'chjsc' => array('cn'=>'催化剂生产','en'=>'Catalyst Production'),
                            'jhpj' => array('cn'=>'聚合评价','en'=>'Polytest'),
                            'hse' => array('cn'=>'HSE','en'=>'HSE'),
                            'jiankang' => array('cn'=>'健康','en'=>'Health'),
                            'anquan' => array('cn'=>'安全','en'=>'Safety'),
                            'huanbao' => array('cn'=>'环保','en'=>'Environment'),
                            'contact' => array('cn'=>'联系我们','en'=>'Contact'),
                        );
                        $data['title'] = $titles[$type][$lang];
                        $data['pic'] = $pics[$type];
                        //产品分类
                        if(in_array($name,$this->pro) || $type=='lihe'){
                            $flist=$this->db->query("select * from think_product order by sort asc")->result_array();
                            $data['clist']=$flist;
                            $data['pic'] = 'lihe';
                            if(in_array($name,$this->pro)){
                                // 产品的title特殊
                                $row = $this->db->where('type',$name)->get('think_product')->row_array();
                                if($lang == 'en'){
                                    $data['title'] = $row['en_name'];
                                }else{
                                    $data['title'] = $row['name'];
                                }
                            }
                        }

                        //print_r($data);exit;
                        $data['left'] = $this->load->view('public/left', $data, true);
                        $data['vo'] = $this->db->query("select * from think_news where type='{$type}' and lang='{$lang}'")->row_array();
                        if($lang == 'cn'){
                            $data['webname'] = WEB_KEYWORDS;
                        }else{
                            $data['webname'] = WEB_KEYWORDS_EN;
                        }
                        $this->load->view('content',$data);
                    }

                }else{
                    show_404();
                }
            }

        }else{
            show_404();
        }
    }

    function arcall($lang,$table="think_keji"){
        $list=$this->db->where('lang',$lang)->get($table)->result_array();
        //echo $this->db->last_query();
        return count($list);
    }

    function arclist($limit=9,$offset=0,$lang,$table="think_keji",$keywords=""){

        $list=$this->db->where('lang',$lang)->limit($limit,$offset)->order_by('id desc')->get($table)->result_array();

        //echo $this->db->last_query();
        return $list;
    }

    /**
     * 科技前沿详情页
     */
    public function kj_view($id){
        $id = intval($id);
        if($id>0){
            $row = $this->db->where('id',$id)->get('think_keji')->row_array();
            if(!empty($row)){
                $data = $this->_common('Keji',$row['lang']);
                $data['vo'] = $row;
                $this->load->view('kj_view',$data);
            }else{
                show_404();
            }
            //print_r($row);
        }else{
            show_404();
        }
    }



}
