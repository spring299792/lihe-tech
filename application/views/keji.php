<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php if($name == 'en'):?>Scientific and Technological Front-<?=WEB_KEYWORDS_EN?><?php else:?>科技前沿-<?=WEB_KEYWORDS?><?php endif;?></title>
    <meta name="keywords" content="<?php if($name == 'en'):?>Scientific and Technological Front,<?=WEB_KEYWORDS_EN?><?php else:?>科技前沿,<?=WEB_KEYWORDS?><?php endif;?>" />
    <meta name="description" content="<?php if($name == 'en'):?>Scientific and Technological Front-<?=WEB_KEYWORDS_EN?><?php else:?>科技前沿-<?=WEB_KEYWORDS?><?php endif;?>" />
    <?=$style?>
</head>

<body>
<?=$header?>
<div id="content">
    <div class="page_banner">
        <img src="<?=__STATIC__;?>client/keji_title_<?=$lang?>.jpg" width="980" height="126" />
    </div>
    <div class="page_bread">
        <?php if($lang == 'cn'):?>
            您当前的位置：<a href="<?=WEB_URL?><?=base_url();?>Index/index/l/cn">首页</a> > 科技前沿
        <?php else:?>
            The current position:<a href="<?=WEB_URL?><?=base_url();?>Index/index/l/en">Home</a> > Scientific and Technological Front
        <?php endif;?>
    </div>
    <div class="page_content">
        <div class="page_left" style=" height:391px; background-image:url(<?=__STATIC__;?>client/keji_<?=$lang?>.gif);">
            <div style="width:210px; <?php if($lang == 'cn'):?> margin-top:27px;<?php else:?> margin-top:35px;<?php endif;?> font-weight:bold;">&nbsp;&nbsp;　　 <img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php if($lang == 'cn'):?><a href="<?=WEB_URL?><?=base_url();?><?=$name?>/index/l/cn">科技前沿</a><?php else:?><a href="<?=WEB_URL?><?=base_url();?><?=$name?>/index/l/en">Scientific and Technological Front</a><?php endif;?></div>
    </div>
    <div class="page_right">
        <div class="con_con"<?php if($lang == 'cn'):?>style="font-size:14px; letter-spacing:3px; text-indent:2em;" <?php else:?>style="font-size:13px; letter-spacing:0px; text-indent:0em;"<?php endif;?>>
            <?php foreach($list as $pvo):?>
            <div class="pdf_li"><?php if($pvo['attach'] != ''):?><img src="<?=__STATIC__;?>client/pdf.jpg" /><?php else:?>&nbsp;&nbsp;&nbsp;<?php endif;?><a href="<?=WEB_URL?><?=base_url();?><?=$name?>/view/<?=$pvo['id']?>"><?=$pvo['name']?><?php if($pvo['attach'] != ''):?>.pdf<?php endif;?></a></div>
        <?php endforeach;?>
    </div>
    <div class="pages">
        <span><?=$page?>/<?=$pages?></span>&nbsp;&nbsp;<a href="<?=WEB_URL?><?=base_url();?>Keji/index/l/<?=$lang?>/?page=<?=$prev?>"><img src="<?=__STATIC__;?>client/prev.jpg" alt="">&nbsp;&nbsp;Previous</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="<?=WEB_URL?><?=base_url();?>Keji/index/l/<?=$lang?>/?page=<?=$next?>">Next&nbsp;&nbsp;<img src="<?=__STATIC__;?>client/next.jpg" alt=""></a>
    </div>
</div>
</div>

<div style=”clear:both;”></div>
</div>
<style>
    .pages{ width: 743px; float: left; text-align: right; font-size: 12px; color: #828282; margin: 30px 0; padding-right: 20px; }
    .pages a{ color: #828282; text-decoration: none; }
</style>
<?=$footer?>
<div id="hidd_bot"></div>
</body>
</html>
