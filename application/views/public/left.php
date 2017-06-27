<?php if($type == 'info' || $type == 'contact'):?>
    <div class="page_left" style=" height:558px; background-image:url(<?=__STATIC__;?>client/info_<?=$lang?>.gif);">
        <div style="width:210px;<?php if($lang == 'cn'):?> margin-top:27px;<?php else:?> margin-top:35px;<?php endif;?> font-weight:bold;">　　 <img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><a href="<?=WEB_URL?><?=base_url();?><?=$name?>/index/l/<?=$lang?>"><?=$title?></a></if>
    </div>
<?php endif;?>

<?php if(count($clist)>0):?>
    <div class="page_left" style=" height:876px; background-image:url(<?=__STATIC__;?>client/lihe_<?=$lang?>.gif);">
        <div style="width:210px; <?php if($lang == 'cn'):?> margin-top:27px;<?php else:?> margin-top:35px;<?php endif;?> font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php if($name == 'Lihe'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Lihe/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>利和产品<?php else:?>Extensive product line<?php endif;?></a></div>

        <?php foreach($clist as $lvo):?>
        <div class="page_left_li" style="position:relative; <?php if($lang == 'cn'):?>top:2px;<?php else:?>top:-5px;<?php endif;?>"><?php if($name == $lvo['type']):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?><?=$lvo['type']?>/index/l/<?=$lang?>"><?php if($lang == 'cn'):?><?=$lvo['name']?><?php else:?><?=$lvo['en_name']?><?php endif;?></a></div>
        <?php endforeach;?>


<?php endif;?>

<?php if($type == 'yanjiu' || $type == 'xiaoshi' || $type == 'zhongshi' || $type == 'fenxi'):?>
<div class="page_left" style=" height:876px; background-image:url(<?=__STATIC__;?>client/yanjiu_<?=$lang?>.gif);">
    <div style="width:210px; <?php if($lang == 'cn'):?> margin-top:27px;<?php else:?> margin-top:35px;<?php endif;?> font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php if($type == 'yanjiu'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Yanjiu/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>研究开发<?php else:?>Research & Development<?php endif;?></a></div>

    <div class="page_left_li" style="position:relative; <?php if($lang == 'cn'):?>top:5px;<?php else:?>top:0px;<?php endif;?>"><?php if($type == 'xiaoshi'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Xiaoshi/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>小试研发<?php else:?>Lab R&D<?php endif;?></a></div>

    <div class="page_left_li"style="position:relative; <?php if($lang == 'cn'):?>top:0px;<?php else:?>top:-15px;<?php endif;?>"><?php if($type == 'zhongshi'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Zhongshi/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>中试研发<?php else:?>Pilot Plant R&D<?php endif;?></a></div>

    <div class="page_left_li" style="position:relative; <?php if($lang == 'cn'):?>top:-3px;<?php else:?>top:-30px;<?php endif;?>"><?php if($type == 'fenxi'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Fenxi/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>分析检测<?php else:?>Test & Analysis<?php endif;?></a></div>


<?php endif;?>

<?php if($type == 'zhiliang' || $type == 'yuanliao' || $type == 'chjsc' || $type == 'jhpj'):?>
<div class="page_left" style=" height:876px; background-image:url(<?=__STATIC__;?>client/zhiliang_<?=$lang?>.gif);">
    <div style="width:210px; <?php if($lang == 'cn'):?> margin-top:27px;<?php else:?> margin-top:35px;<?php endif;?> font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php if($type == 'zhiliang'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Zhiliang/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>质量控制<?php else:?>Quality Control<?php endif;?></a></div>

    <div class="page_left_li" style="position:relative; <?php if($lang == 'cn'):?>top:5px;<?php else:?>top:0px;<?php endif;?>"><?php if($type == 'yuanliao'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Yuanliao/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>原料监控<?php else:?>Raw Material Monitor<?php endif;?></a></div>

    <div class="page_left_li"style="position:relative; <?php if($lang == 'cn'):?>top:0px;<?php else:?>top:-15px;<?php endif;?>"><?php if($type == 'chjsc'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Chjsc/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>催化剂生产<?php else:?>Catalyst Production<?php endif;?></a></div>

    <div class="page_left_li" style="position:relative; <?php if($lang == 'cn'):?>top:-3px;<?php else:?>top:-30px;<?php endif;?>"><?php if($type == 'jhpj'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Jhpj/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>聚合评价<?php else:?>Polytest<?php endif;?></a></div>


<?php endif;?>

<?php if($type == 'hse' || $type == 'jiankang' || $type == 'anquan' || $type == 'huanbao'):?>
<div class="page_left" style=" height:876px; background-image:url(<?=__STATIC__;?>client/zhiliang_<?=$lang?>.gif);">
    <div style="width:210px; <?php if($lang == 'cn'):?> margin-top:27px;<?php else:?> margin-top:35px;<?php endif;?> font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php if($type == 'hse'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Hse/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>HSE<?php else:?>HSE<?php endif;?></a></div>

    <div class="page_left_li" style="position:relative; <?php if($lang == 'cn'):?>top:5px;<?php else:?>top:0px;<?php endif;?>"><?php if($type == 'jiankang'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Jiankang/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>健康<?php else:?>Health<?php endif;?></a></div>

    <div class="page_left_li"style="position:relative; <?php if($lang == 'cn'):?>top:0px;<?php else:?>top:-15px;<?php endif;?>"><?php if($type == 'anquan'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Anquan/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>安全<?php else:?>Safety<?php endif;?></a></div>

    <div class="page_left_li" style="position:relative; <?php if($lang == 'cn'):?>top:-3px;<?php else:?>top:-30px;<?php endif;?>"><?php if($type == 'huanbao'):?><img src="<?=__STATIC__;?>client/point.gif" style="position:relative; left:-5px;" /><?php endif;?><a href="<?=WEB_URL?><?=base_url();?>Huanbao/index/l/<?=$lang?>"><?php if($lang == 'cn'):?>环保<?php else:?>Environment<?php endif;?></a></div>

<?php endif;?>
