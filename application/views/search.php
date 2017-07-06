<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php if($name == 'en'):?>The product search page-LiHe Technology<?php else:?>产品搜索页-利和科技<?php endif;?></title>
    <meta name="keywords" content="<?php if($name == 'en'):?>>The product search page-LiHe Technology<?php else:?>产品搜索页-利和科技<?php endif;?>" />
    <meta name="description" content="<?php if($name == 'en'):?>The product search page-LiHe Technology<?php else:?>产品搜索页-利和科技<?php endif;?>" />
    <?=$style?>
</head>

<body>
<?=$header?>
<div id="content">
    <div class="page_banner">
        <img src="<?=__STATIC__;?>client/lihe_title_<?=$lang?>.gif" width="980" height="126" />
    </div>
    <div class="page_bread">
        <?php if($lang == 'cn'):?>
            您当前的位置：<a href="<?=WEB_URL?><?=base_url();?>Index/index/l/cn">首页</a> > 产品搜索页
        <?php else:?>
            The current position:<a href="<?=WEB_URL?><?=base_url();?>Index/index/l/en">Home</a> > The product search page
        <?php endif;?>
    </div>
    <div class="page_content">
        <div class="page_left" style=" height:846px; background-image:url(<?=__STATIC__;?>client/search_<?=$lang?>.gif);">
            <div style="width:210px; color:#828282; <?php if($lang == 'cn'):?> margin-top:27px;<?php else:?> margin-top:35px;<?php endif;?> font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php if($lang == 'cn'):?><?php else:?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /> The product search page<?php endif;?></div>
    </div>
    <div class="page_right">
        <div class="con_con"<?php if($lang == 'cn'):?>style="font-size:14px; letter-spacing:3px; text-indent:2em;" <?php else:?>style="font-size:13px; letter-spacing:0px; text-indent:0em;"<?php endif;?>>
        <?php foreach($list as $pvo):?>
            <div class="pdf_li"><a target="_blank" href="<?=WEB_URL?><?=base_url();?><?=$pvo['type']?>/index/l/<?=$lang?>"><?if($lang == 'cn'){ echo $pvo['name'];}else{ echo $pvo['en_name'];}?></a></div>
        <?php endforeach;?>
    </div>
</div>
</div>

<div style=”clear:both;”></div>
</div>
<?=$footer?>
<div id="hidd_bot"></div>
</body>
</html>
