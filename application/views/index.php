<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php if($name == 'en'):?>Home-<?=WEB_KEYWORDS_EN?><?php else:?>公司简介-<?=WEB_KEYWORDS?><?php endif;?></title>
    <meta name="keywords" content="<?php if($name == 'en'):?><?=WEB_KEYWORDS_EN?><?php else:?>公司简介,<?=WEB_KEYWORDS?><?php endif;?>" />
    <meta name="description" content="<?php if($name == 'en'):?><?=WEB_KEYWORDS_EN?><?php else:?>公司简介-<?=WEB_KEYWORDS?><?php endif;?>" />
    <?=$style?>
    <style type="text/css">
        #conus{width:200px; position:relative; right:40px; color:#BE4154;}
        *html #conus{ position:relative; right:25px;}
    </style>
</head>

<body>
<?=$header?>
<div id="content">
    <div id="flash">
        <img src="<?=__STATIC__;?>client/flash_<?=$lang?>.jpg" />
    </div>
    <?php if($lang == 'cn'):?>
        <div id="link">
            <div class="link_li">
                <div class="link_img">
                    <img src="<?=__STATIC__;?>client/pro1.jpg" width="53" height="77" />
                </div>
                <div class="link_con" align="center">
                    <p>质量控制</p>
                    原料监控<br />
                    生产自控<br />
                    聚合评价
                </div>
            </div>
            <div class="link_li" style="padding-left:20px; width:210px; margin-left:15px;">
                <div class="link_img">
                    <img src="<?=__STATIC__;?>client/pro3.jpg" width="53" height="77" />
                </div>
                <div class="link_con" align="center"  style="width:140px;">
                    <p>研究开发</p>
                    小试研发<br />
                    中试研发<br />
                    分析检测
                </div>
            </div>
            <div class="link_li">
                <div class="link_img" align="right">
                    <img src="<?=__STATIC__;?>client/pro2.jpg" width="53" height="77" />
                </div>
                <div class="link_con" align="center">
                    <p>HSE</p>
                    以人为本<br />
                    安全第一<br />
                    环境友好
                </div>
            </div>
            <div class="link_li" style=" position:relative; left:55px;">
                <div class="link_con" align="left" id="conus">
                    <p style="color:#000; padding-right:70px; text-align:right;">销售与服务</p>
                    联系人：王建霞<br />
                    电话：18601366839<br />
                    E-Mail:wangjianxia@lihe-tech.com

                </div>
            </div>
        </div>
        <?php else:?>
        <div id="link_en">
            <div style="width:194px; height:100px; float:left; padding-left:25px; padding-top:20px;">
                <div class="link_img">
                    <img src="<?=__STATIC__;?>client/pro1.jpg" width="53" height="77" />
                </div>
                <div class="link_en_con" style=" position:relative; top:30px;" align="center">
                    Quality Control
                </div>
            </div>
            <div style="width:251px; height:100px; float:left; padding-left:25px; padding-top:20px;">
                <div class="link_img">
                    <img src="<?=__STATIC__;?>client/pro3.jpg" width="53" height="77" />
                </div>
                <div class="link_en_con" align="center" style="line-height:20px; position:relative; top:25px;">
                    Research & Development<br />
                </div>
            </div>
            <div style="width:237px; height:100px; float:left; padding-left:25px; padding-top:20px;">
                <div class="link_img">
                    <img src="<?=__STATIC__;?>client/pro2.jpg" width="53" height="77" />
                </div>
                <div class="link_en_con" style=" position:relative; top:30px;">
                    　Health Safety Environment
                </div>
            </div>
            <div style="width:219px; height:120px; float:left;">
                <div class="link_en_con" align="left" style="padding-left:10px; font-weight:normal; line-height:20px; padding-top:30px; color:#BE4154">
                    <div align="center" style=" color:#585858"><b>Sales and service</b></div>
                    Tel: 姜琴<br />
                    　　18613863637<br />
                    E-Mail:jiangqin@lihe-tech.com
                </div>
            </div>
        </div>
    <?php endif;?>
</div>
<div id="index_footer">
    <?php if($lang == 'en'):?>
        Copyright © <?=date("Y",time());?> RenQiu LiHe Technology LTD LiHe Science and Technology Development Co., Ltd. All rights reserved.京ICP备13047423号 京公网安备110102000112
    <?php else:?>
        Copyright <?=date("Y",time());?> 任丘市利和科技发展有限公司 北京利和知信科技有限公司 版权所有 All Rights Reserved. 京ICP备13047423号 京公网安备110102000112
    <?php endif;?>
    <div style="display:none"><script src="http://s96.cnzz.com/stat.php?id=4185486&web_id=4185486" language="JavaScript"></script></div>
</div>
<div id="bottom">
</div>
<div id="hidd_bot"></div>
</body>
</html>
