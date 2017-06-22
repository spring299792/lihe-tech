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
            <h5>反馈信息</h5>
          </div>
          <div class="widget-content nopadding">
            <table width="100%" cellspacing="1" cellpadding="3" border="0">
        
          <tbody>
          <tr>
            <td align="right" class="color_huise2" width="20%">Your Name :　</td>
               <td align="left"><?=$row['name']?></td>
          </tr>
          <tr>
            <td align="right" class="color_huise2">Tel :　</td>
               <td align="left"><?=$row['tel']?></td>
          </tr>
          <tr>
            <td align="right" class="color_huise2">Your Company :　</td>
            <td align="left"><?=$row['company']?></td>
          </tr>
          <tr>
            <td align="right" class="color_huise2">Fax :　</td>
            <td align="left"><?=$row['fax']?></td>
          </tr>
          <tr>
            <td align="right" class="color_huise2">Address :　</td>
            <td align="left"><?=$row['address']?></td>
          </tr>
          <tr>
            <td align="right" class="color_huise2">E-mail :　</td>
            <td align="left"><?=$row['email']?></td>
          </tr>
          <tr>
            <td align="right" class="color_huise2">Zip Code :　</td>
            <td align="left"><?=$row['zipcode']?></td>
          </tr>
          <tr>
            <td align="right" class="color_huise2">I am a(n) :　</td>
            <td align="left"><?=$row['iam']?></td>
          </tr>
          <tr>
            <td align="right" class="color_huise2">Country :　</td>
            <td align="left"><?=$row['country']?></td>
          </tr>
          <tr>
            <td align="right" class="color_huise2">URL :　</td>
            <td align="left"><?=$row['url']?></td>
          </tr>

          <tr>
            <td align="right" class="color_huise2">I am interested in　</td>
            <td align="left"><?=$row['interested']?>
            </td>
          </tr>
          <tr>
            <td align="right" class="color_huise2">Equipment Conditions　</td>
            <td align="left"><?=$row['conditions']?></td>
          </tr>
          <tr>
            <td align="right" class="color_huise2">Details :　</td>
            <td align="left"><?=$row['detail']?></td>
          </tr>

        <tr>
            <td align="right" class="color_huise2"><button onclick="return delcheck(<?=$row['id']?>);">删除</button></td>
            <td align="left"></td>
          </tr>
        
      </tbody></table>
      
        </div>
        </div>
  </div>
</div>

<!--end-main-container-part-->
<script>
  function delcheck(id){
    layer.confirm('确定要删除这条数据？', {
    btn: ['确定','取消'] //按钮
}, function(){
    location.href="<?=MANAGE_URL;?><?=base_url();?>feedback/del?id="+id
})
  }

</script>
<?=$footer;?>

</body>
</html>
