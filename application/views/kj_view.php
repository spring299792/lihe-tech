<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php if($name == 'en'):?>Scientific and Technological Front-<?=WEB_KEYWORDS_EN?><?php else:?>科技前沿-<?=WEB_KEYWORDS?><?php endif;?></title>
    <meta name="keywords" content="<?php if($name == 'en'):?>Scientific and Technological Front,<?=WEB_KEYWORDS_EN?><?php else:?>科技前沿,<?=WEB_KEYWORDS?><?php endif;?>" />
    <meta name="description" content="<?php if($name == 'en'):?>Scientific and Technological Front-<?=WEB_KEYWORDS_EN?><?php else:?>科技前沿-<?=WEB_KEYWORDS?><?php endif;?>" />
    <?=$style?>
    <script src="/Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>

<body>
<?=$header?>
<div id="content">
    <div class="page_banner">
        <img src="<?=__STATIC__;?>client/keji_title_<?=$lang?>.jpg" width="980" height="126" />
    </div>
    <div class="page_bread">
        <?php if($lang == 'cn'):?>
            您当前的位置：<a href="<?=WEB_URL?><?=base_url();?>Index/index/l/cn">首页</a> > 科技前沿 > <?=$vo['name']?>
        <?php else:?>
            The current position:<a href="<?=WEB_URL?><?=base_url();?>Index/index/l/en">Home</a> > Scientific and Technological Front > <?=$row['name']?>
        <?php endif;?>
    </div>
    <div class="page_content">
        <div class="page_left" style=" height:391px; background-image:url(<?=__STATIC__;?>client/keji_<?=$vo['lang']?>.gif);">
            <div style="width:210px; <?php if($lang == 'cn'):?> margin-top:27px;<?php else:?> margin-top:35px;<?php endif;?> font-weight:bold;">&nbsp;&nbsp;　　 <img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php if($lang == 'cn'):?><a href="<?=WEB_URL?><?=base_url();?>Keji/index/l/cn">科技前沿</a><?php else:?><a href="<?=WEB_URL?><?=base_url();?>Keji/index/l/en">Scientific and Technological Front</a><?php endif;?></div>
    </div>
    <div class="page_right">
        <div class="con_con" style="height:750px;font-size: 12px;">
            <?php if($vo['attach'] != ''):?>
                <script type="text/javascript">
                    AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','670','height','700','src','/Public/Uploads/<?=$vo['attach']?>','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','/Public/Uploads/<?=$vo['attach']?>' ); //end AC code
                </script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="670" height="700">
                        <param name="movie" value="/Public/Uploads/<?=$vo['attach']?>" />
                        <param name="quality" value="high" />
                        <embed src="/Public/Uploads/<?=$vo['attach']?>" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="670" height="700"></embed>
                    </object></noscript>
            <?php else:?>
                <?=$vo['content']?>
            <?php endif;?>
        </div>
    </div>
</div>

<div style=”clear:both;”></div>
</div>
<?=$footer?>
<div id="hidd_bot"></div>
</body>
</html>
