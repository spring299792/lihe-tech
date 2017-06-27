<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?=$title?>-<?=$webname?></title>
    <meta name="keywords" content="<?=$title?>,<?=$webname?>" />
    <meta name="description" content="<?=$title?>-<?=$webname?>" />
    <?=$style?>
</head>

<body>
<?=$header?>
<div id="content">
    <div class="page_banner">
        <img src="<?=__STATIC__;?>client/<?=$pic?>_title_<?=$lang?>.gif" width="980" height="126" />
    </div>
    <div class="page_bread">
        <?php if($lang == 'cn'):?>
            您当前的位置：<a href="<?=WEB_URL?><?=base_url();?>Index/index/l/cn">首页</a> > <?=$title?>
        <?php else:?>
            The current position:<a href="<?=WEB_URL?><?=base_url();?>Index/index/l/en">Home</a> > <?=$title?>
        <?php endif;?>
    </div>
    <div class="page_content">
        <?=$left?>
    </div>
    <div class="page_right">
        <div class="con_title" <?php if($vo['title'] == ''):?>style="display:none;"<?php endif;?>>
        <?=$vo['title']?>
        </div>
    <div class="con_con" <?php if($lang == 'cn'):?>style="font-size:14px; letter-spacing:3px; text-indent:2em;" <?php else:?>style="font-size:13px; letter-spacing:0px; text-indent:0em;"<?php endif;?>>
        <?=$vo['content']?>
</div>
</div>
</div>

<div style=”clear:both;”></div>
</div>
<?=$footer?>
<div id="hidd_bot"></div>
</body>
</html>
