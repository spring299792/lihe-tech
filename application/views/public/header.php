<script language="javascript" type="text/javascript">
    function click(e) {
        if (document.all) {


            if (event.button==1||event.button==2||event.button==3) {
                oncontextmenu='return false';
            }
        }
        if (document.layers) {
            if (e.which == 3) {
                oncontextmenu='return false';
            }
        }
    }
    if (document.layers) {
        document.captureEvents(Event.MOUSEDOWN);
    }
    document.onmousedown=click;
    document.oncontextmenu = new Function("return false;")

    var trxdyel=true
    var hotkey=17   /* hotkey即为热键的键值,是ASII码,这里99代表c键 */
    if (document.layers)
        document.captureEvents(Event.KEYDOWN)
    function gogo(e)
    { if (document.layers) {
        if (e.which==hotkey&&trxdyel){
            //alert("操作错误.或许是您按错了按键!");
        } }
    else if (document.all){
        if (event.keyCode==hotkey&&trxdyel){
           // alert("操作错误.或许是您按错了按键!");
        }}
    }

    document.onkeydown=gogo
</script>
<?php if($lang == 'cn'):?>
<div id="banner">
    <div class="logo">
        <a href="<?=WEB_URL?><?=base_url();?><?=$name?>/index/l/cn"><img src="<?=__STATIC__;?>client/logo.jpg" border="none" /></a>
    </div>
    <div class="ban_nav" align="right">
        <a href="<?=WEB_URL?><?=base_url();?><?=$name?>/index/l/cn" style="position:relative; right:50px; top:15px;">中文版</a>　　　<a href="<?=WEB_URL?><?=base_url();?><?=$name?>/index/l/en" style="position:relative; right:50px; top:15px;">English</a>
        <form name="form1" action="<?=WEB_URL?><?=base_url();?>Search/index/l/<?=$lang?>" method="post">
            <input type="text" id="search" name="search" value="请输入产品关键字" /><input type="image" src="<?=__STATIC__;?>client/search.jpg" id="but" />
        </form>
    </div>
</div>
<div id="nav">
    <div id="navlist">
        <a href="<?=WEB_URL?><?=base_url();?>Index/index/l/cn"><img src="<?=__STATIC__;?>client/nav_1.jpg" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Info/index/l/cn"><img src="<?=__STATIC__;?>client/nav_2.jpg" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Lihe/index/l/cn"><img src="<?=__STATIC__;?>client/nav_3.jpg" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Yanjiu/index/l/cn"><img src="<?=__STATIC__;?>client/nav_4.jpg" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Zhiliang/index/l/cn"><img src="<?=__STATIC__;?>client/nav_5.jpg" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Hse/index/l/cn"><img src="<?=__STATIC__;?>client/nav_6.jpg" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Keji/index/l/cn"><img src="<?=__STATIC__;?>client/nav_7.jpg" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Contact/index/l/cn"><img src="<?=__STATIC__;?>client/nav_8.jpg" border="none" /></a>
    </div>
</div>
<?php else:?>
<div id="banner">
    <div class="logo">
        <a href="index.php"><img src="<?=__STATIC__;?>client/logo.jpg" border="none" /></a>
    </div>
    <div class="ban_nav" align="right">
        <a href="<?=WEB_URL?><?=base_url();?><?=$name?>/index/l/cn" style="position:relative; right:50px; top:15px;">中文版</a>　　　<a href="<?=WEB_URL?><?=base_url();?><?=$name?>/index/l/en" style="position:relative; right:50px; top:15px;">English</a>
        <form name="form1" action="<?=WEB_URL?><?=base_url();?>/Search/index" method="post">
            <input type="text" id="search" name="search" value="Product inquires" /><input type="image" src="<?=__STATIC__;?>client/search.jpg" id="but" />
            <input type="hidden" name="l" value="en" />
        </form>
    </div>
</div>
<div id="nav">
    <div id="navlist">
        <a href="<?=WEB_URL?><?=base_url();?>Index/index/l/en"><img src="<?=__STATIC__;?>client/nav_1.gif" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Info/index/l/en"><img src="<?=__STATIC__;?>client/nav_2.gif" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Lihe/index/l/en"><img src="<?=__STATIC__;?>client/nav_3.gif" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Yanjiu/index/l/en"><img src="<?=__STATIC__;?>client/nav_4.gif" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Zhiliang/index/l/en"><img src="<?=__STATIC__;?>client/nav_5.gif" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Hse/index/l/en"><img src="<?=__STATIC__;?>client/nav_6.gif" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Keji/index/l/en"><img src="<?=__STATIC__;?>client/nav_7.gif" border="none" /></a>
        <a href="<?=WEB_URL?><?=base_url();?>Contact/index/l/en"><img src="<?=__STATIC__;?>client/nav_8.gif" border="none" /></a>
    </div>
</div>
<?php endif;?>
