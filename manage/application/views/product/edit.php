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
            <h5>产品列表</h5>
          </div>
          <div class="widget-content nopadding">
          <form action="<?=MANAGE_URL;?><?=base_url();?>Product/insert" method="post" class="form-horizontal" enctype="multipart/form-data">
          <input type="hidden" name="id" value="<?if(isset($row['id'])){ echo $row['id'];}?>" />
            <div class="control-group">
              <label class="control-label">产品名称 :</label>
              <div class="controls">
                <input type="text" class="span8" placeholder="产品名称" name="name" value="<?if(isset($row['name'])){ echo $row['name'];}?>" />
              </div>
            </div>

              <div class="control-group">
                  <label class="control-label">英文名称 :</label>
                  <div class="controls">
                      <input type="text" class="span8" placeholder="英文名称" name="en_name" value="<?if(isset($row['en_name'])){ echo $row['en_name'];}?>" />
                  </div>
              </div>

              <div class="control-group">
                  <label class="control-label">分类(只允许英文) :</label>
                  <div class="controls">
                      <input type="text" class="span8" placeholder="分类" name="type" value="<?if(isset($row['type'])){ echo $row['type'];}?>" />
                  </div>
              </div>

              <div class="control-group">
                  <label class="control-label">排序 :</label>
                  <div class="controls">
                      <input type="text" class="span8" placeholder="排序" name="sort" value="<?if(isset($row['sort'])){ echo $row['sort'];}?>" />
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

</body>
</html>
