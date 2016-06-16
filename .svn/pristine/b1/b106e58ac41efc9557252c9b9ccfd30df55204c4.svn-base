<?php
/**
 * Created by PhpStorm.
 * User: liluoao
 * Date: 2016/4/3
 * Time: 12:10
 */
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" xmlns="http://www.w3.org/1999/html">
<head>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>紫薯原浆</title>
	<link rel="stylesheet" type="text/css" href="css/home/zsyj_Purchasepage.css">
	<link rel="stylesheet" type="text/css" href="css/home/base.css">
	<link rel="stylesheet" type="text/css" href="css/home/new_address.css">

	<script src="js/home/jquery-1.8.3.min.js"></script>
	<script  src="js/home/mrdz.js" ></script>
	<script  src="js/home/cityJson.js" type="text/javascript"></script>
	<script src="js/home/Popt.js"></script>
	<script src="js/home/citySet.js"></script>
	<script>
		var deladdUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/deladdress')?>";
		var editUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/purchase')?>";
		var addqUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/addaddress')?>";
		var orderUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/ordercomplete')?>";
		var updateUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/updateaddress')?>";
		var baseaddressUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/baseaddress')?>";
		function GetCount() {//已选商品数量
			var counts=0;Tatols=0;
			$(".number" ).each(
					function (index,element) {{
						counts += parseFloat($(".subtotal").eq(index).text());//总价格计算
						Tatols = counts;
						return;
					}
					}
			);
			$("#priceTotal").text(counts.toFixed(2));
			$("#Pricerealy").text(Tatols.toFixed(2));
		}
		$(function(){
			GetCount();
		})

		function order() {
			priceTotal = $("#priceTotal").text();
			var len=$("input[name='id']").size();
			var ids='';
			$("input[name='id']").each(function(i, n){
				if(i<len-1){
					ids += $(n).val() + '-';
				}else{
					ids += $(n).val();
				}
			});

			var userStr = "totalCost=" +priceTotal + '&ids='+ids;
			$.ajax({
				url: orderUrl,
				type: "post",
				dataType: "text",
				data: userStr,
				async: false,
				success: function (text){
					if(text == ''){
						$("#full").show();
					}else{
						window.location.href = orderUrl+'&id='+text;
					}
				},
				error: function(text){
					alert(text);
				}
			})
		}
	</script>

</head>
<!--body-->
<body>
<!--header-->
<?=$this->render('..\home\header',['column'=>'shop'])?>

<div class="popupall">
	<div class="Popup">
		<div class="Popup_top">
			<a>新增收货地址</a>
			<a class="shouhuodz"><img src="images/home/images_14_address/Shut down.png" ></a>
		</div>
		<ul>
			<li style="color:#ff3f3f;line-height:30px;">&nbsp;&nbsp;&nbsp;*</li>
			<li><a>收货人&nbsp;:</a></li>
			<li><input type="text" id='username_1' name="test" style="border:#efefef 1px solid;width:210px;height:28px;" /></li>
		</ul>
		<ul>
			<li style="color:#ff3f3f;line-height:30px;">*</li>
			<li><a>所在地区&nbsp;:</a></li>
			<li><input type="text"  id="city" value="请选择地区" name="test" style="border:#efefef 1px solid;width:210px;height:28px;" /></li>
		</ul>
		<div class='header_hide'>
			<ul >
				<li style="color:#ff3f3f;line-height:30px;">*</li>
				<li><a>详细地址&nbsp;:</a></li>
				<li><input type="text" id='add_address' name="test" style="border:#efefef 1px solid;width:318px;height:28px;" /></li>
			</ul>
			<ul >
				<li style="color:#ff3f3f;line-height:30px;">*</li>
				<li><a>手机号码&nbsp;:</a></li>
				<li><input type="text" id="add_tel" name="test" style="border:#efefef 1px solid;width:210px;height:28px;" /></li>
			</ul>
			<ul >
				<li><a>&nbsp;&nbsp;邮政编码&nbsp;:</a></li>
				<li><input type="text" id="add_code" name="test" style="border:#efefef 1px solid;width:210px;height:28px;" /></li>
			</ul>
			<div class="preservation" >
				<a href="javascript:addAddr();">保存新地址</a>
			</div>
		</div>
	</div>
</div>
<script>
	function addAddr(){
		username = $('#username_1').val();
		citys = $('#city').val();
		prov = citys.split("-");
		add_address = $('#add_address').val();
		add_tel = $('#add_tel').val();
		add_code= $('#add_code').val();
		hcity = $('input[name="hcity"]').attr('data-id');
		hcityname = $('input[name="hcity"]').attr('value');
		var ulArray = new Array();
		ulArray.push('<ul class="moren">');
		ulArray.push('<div class="massge_box" >'+username+'&nbsp;'+prov[0]+'</div>');
		ulArray.push('<li>'+username+'</li>');
		ulArray.push('<li>'+prov[0]);
		ulArray.push('-'+prov[1]);
		ulArray.push('-'+prov[2]+'</li>');
		ulArray.push('<li>'+add_address+'</li>');
		ulArray.push('<li>'+add_tel+'</li>');
		ulArray.push('<li>'+add_code+'</li>');
		ulArray.push('<li class="wei"><div class="moren1" ></div></li>');
		ulArray.push('<li class="edit" style="color: rgb(153, 102, 153);">修改</li>');
		ulArray.push('<li class="del" value="" style="color: rgb(153, 102, 153);">删除</li>');
		ulArray.push('</ul>');
		$('div.mrdz:last').append(ulArray.join(''));
		var paraStr = '';
		paraStr = "username=" + username + "&city=" + citys + "&address=" + add_address + "&tel=" + add_tel + "&postcode=" + add_code + "&hcity=" + hcity + "&hcityname=" + hcityname;
		$.ajax({
			url: addqUrl,
			type: "post",
			dataType: "text",
			data: paraStr,
			async: false,
		})
		$('.popupall').css('display','none');

		loadJs();
	}
</script>

<div class="popupal2">
	<div class="Popup">
		<div class="Popup_top">
			<a>修改收货地址</a>
			<a class="shouhuodz"><img src="images/home/images_14_address/Shut down.png" ></a>
		</div>
		<ul>
			<li style="color:#ff3f3f;line-height:30px;">&nbsp;&nbsp;&nbsp;*</li>
			<li><a>收货人&nbsp;:</a></li>
			<li>
				<input type="hidden" id="id"/>
				<input type="text" id="recipientName"  style="border:#efefef 1px solid;width:210px;height:28px;" />
			</li>
		</ul>
		<ul>
			<li style="color:#ff3f3f;line-height:30px;">*</li>
			<li><a>所在地区&nbsp;:</a></li>
			<li><input type="text"  id="city1" value="" name="" style="border:#efefef 1px solid;width:210px;height:28px;" /></li>
		</ul>
		<div class='header_hide'>
			<ul >
				<li style="color:#ff3f3f;line-height:30px;">*</li>
				<li><a>详细地址&nbsp;:</a></li>
				<li><input type="text" id="detailAddress" name="" value=""  style="border:#efefef 1px solid;width:318px;height:28px;" /></li>
			</ul>
			<ul >
				<li style="color:#ff3f3f;line-height:30px;">*</li>
				<li><a>手机号码&nbsp;:</a></li>
				<li><input type="text" name="" id="mobilephone" value="" style="border:#efefef 1px solid;width:210px;height:28px;" /></li>
			</ul>
			<ul >
				<li><a>&nbsp;&nbsp;邮政编码&nbsp;:</a></li>
				<li><input type="text" id="postcode" name="" value="" style="border:#efefef 1px solid;width:210px;height:28px;" /></li>
			</ul>
			<div class="preservation1">
				<a>保存新地址</a>
			</div>
		</div>
	</div>
</div>

<div id="content">
	<div class="zsyj_logo">
		<a href="<?=yii::$app->urlManager->createUrl('home/index')?>"><img src="images/home/images_16_Purchasepage/shop_LOGO.png" style="float:left;margin-top:25px;"></a>
		<div class="process2">
			<img src="images/home/images_16_Purchasepage/process2.png" style="margin-left:137px;">

		</div>
	</div>
	<div class="big">
		<div class="Shipping_address">
			<p>选择收货地址</p>
		</div>
		<div class="consignee">
			<div class="consignee_information">
				<span>收货人信息</span>
				<a class="shouhuo"><u>新增收货地点</u></a>
			</div>
			<?if(isset($userinfos) && !is_null($userinfos)){?>
				<?foreach ($userinfos as $index => $val){?>
					<div class="mrdz" >
						<ul class="moren">
							<div class="massge_box" >
								<input type="hidden" id="id" value="<?=htmlspecialchars($val->id)?>" />
								<?=$val->recipientName?>&nbsp;<?=$val->hcityname?>
							</div>
							<li><?=$val->recipientName?></li>
							<li><?=$val->areaAddress?></li>
							<li><?=$val->detailAddress?></li>
							<li><?=$val->mobilephone?></li>
							<li><?=$val->postcode?></li>

							<li class="wei" >
								<?if($val->userInfoState=='1'){?>
									<li" style="color: rgb(153, 102, 153);">默认地址</li>
										<?}else{?>
									<div val="<?=$val->id?>" class="moren1"></div>
								<?}?>
							</li>
							<li class="edit" val="<?=$val->id?>" style="color: rgb(153, 102, 153);">修改</li>
							<li class="del" val="<?=$val->id?>" style="color: rgb(153, 102, 153);">删除</li>
						</ul>
					</div>
				<?}?>
			<?}?>
		</div>
		<div class="pay_way">
			<div class="consignee_information">
				<span>支付方式</span>
			</div>
			<div class="pay_box">
				货到付款
			</div>
		</div>
		<div class="confirm_information">
			<span>确认订单信息</span>
		</div>
		<div class="category">
			<ul>
				<li style="margin-left:155px;">商品信息</li>
				<li style="margin-left:210px;">单价（元）</li>
				<li>折扣</li>
				<li>数量</li>
				<li>金额（元）</li>
			</ul>
		</div>
		<?if(isset($products) && !is_null($products)){?>
			<?foreach ($products as $index => $val){?>
				<div class="goods_information">
					<div class="product_drinks">
						<img src="<?=$val['picUrl']?>">
					</div>
					<div class="drinks_information">
						<ul>
							<li><?=$val['productTitle']?></li>
							<input type="hidden" name="id" value="<?=$val['id']?>">
							<li>规格： &nbsp;<?=$val['productSize']?></li>
							<li>包装：&nbsp;<?=$val['productType']?></li>
						</ul>
					</div>
					<div class="number">
						<ul>
							<li class="price"><?=$val['productPrice']?></li>
							<li  class="discount" style="margin-left:140px;"><?=$val['productDiscount']?></li>
							<li><?=$val['productNum']?></li>
							<li style="margin-left:120px;color:#ff2347;" class="subtotal"><?=$val['productPrice']*$val['productDiscount']*$val['productNum']?></li>
						</ul>
					</div>
				</div>
			<?}?>
		<?}?>
		<div class="total_money">
			<span>总商品金额：     &nbsp;￥<div id="priceTotal" style="float:right;margin-right:23px;"></div></span>
		</div>

		<div class="pay_line">
		</div>
		<div class="pay_total">
			<span>应付总额：     &nbsp;￥<div id="Pricerealy" style="float:right;margin-right:25px;"></div></span>
		</div>
		<div class="pay_line">
		</div>
		<div class="return_Submit">
			<a href="<?=yii::$app->urlManager->createUrl('fontadmin/shoppingcart')?>"><u>返回购物车</u></a>
			<a href="javascript:order();void(0);" ><div class="sbbmit"></div></a>
		</div>
	</div>
</div>
<!--下面是footer部分-->
<?=$this->render('..\home\footer',['color' => ''])?>
<!--分享和侧悬浮-->
<?=$this->render('..\home\share')?>
<!--右悬浮-->
<?=$this->render('..\home\sidebox')?>

</body>
</html>