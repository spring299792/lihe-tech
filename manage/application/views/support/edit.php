<!DOCTYPE html>
<html lang="en">
<head>
<title><? echo MANAGE_NAME;?></title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<?=$style;?>
</head>
<body>

<?=$top;?>
<?=$sidebar;?>

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <!-- <div id="breadcrumb"> <a title="Go to Home" class="tip-bottom" href="/admin"><i class="icon-home"></i> Home</a></div> -->
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-pushpin"></i></span>
            <h5>伙伴资质列表</h5>
          </div>
          <div class="widget-content nopadding">
          <form action="<?=MANAGE_URL;?><?=base_url();?>support/insert" method="post" class="form-horizontal" enctype="multipart/form-data">
          <input type="hidden" name="id" value="<?if(isset($row['id'])){ echo $row['id'];}?>" />
            <div class="control-group">
              <label class="control-label">标题 :</label>
              <div class="controls">
                <input type="text" class="span8" placeholder="标题" name="title" value="<?if(isset($row['title'])){ echo $row['title'];}?>" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">短标题 :</label>
              <div class="controls">
                <input type="text" class="span8" placeholder="短标题" name="short_title" value="<?if(isset($row['short_title'])){ echo $row['short_title'];}?>" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">排序 :</label>
              <div class="controls">
                <input type="text" class="span8" placeholder="排序" name="sort" value="<?if(isset($row['sort'])){ echo $row['sort'];}?>" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">缩略图 :</label>
              <div class="controls">
                <input type="file" class="span5" name="img" >
                <input type="hidden" name="img" value="<?if(isset($row['img'])){ echo $row['img'];}?>">
              </div>
            </div>
            <!-- <div class="control-group">
              <label class="control-label">发布时间 :</label>
              <div class="controls">
                <input type="text" class="span2" placeholder="发布时间" name="create_time" value="<?if(isset($row['create_time'])){ echo date("Y-m-d",$row['create_time']);}else{ echo date("Y-m-d",time());}?>" />
              </div>
            </div> -->
            <div class="control-group">
              <label class="control-label">内容简介 :</label>
              <div class="controls">
                <textarea name="description" style="width:850px;height:50px;"><?if(isset($row['description'])){ echo $row['description'];}?></textarea>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">内容 :</label>
              <div class="controls">
                <script id="container" name="content" type="text/plain">
        <?if(isset($row['content'])){ echo $row['content'];}else{ echo $row['content'];}?>
    </script>
              </div>
            </div>


            <div class="form-actions">
              <button type="submit" class="btn btn-success">保存</button>
            </div>
          </form>
        </div>
        </div>
  </div>
</div>

<!--end-main-container-part-->

<?=$footer;?>
<!-- 配置文件 -->
    <script type="text/javascript" src="<? echo __STATIC__;?>ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="<? echo __STATIC__;?>ueditor/ueditor.all.js"></script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
        var ue = UE.getEditor('container',{initialFrameWidth:960,initialFrameHeight:500});
    </script>

</body>
</html>
