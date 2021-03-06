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
	<title>购物车</title>
	<link rel="stylesheet" href="css/home/shopping_cart.css" />
	<link rel="stylesheet" type="text/css" href="css/home/base.css">
	<script type="text/javascript" src="js/home/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/home/popup.js"></script>
	<script>
		var purchaseUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/purchase')?>";
		var delUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/deleteshopcart')?>";
		var delallUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/delallshopcart')?>";
		var shopcartUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/shoppingcart')?>";
	</script>
	<script type="text/javascript" src="js/home/shoppingcart.js"></script>
</head>

<body>
<div class="wrapper"><!--header-->
	<?=$this->render('..\home\header',['column'=>'shop'])?>
	<!--header-->
	<div class="content">
		<div class="content_up">
			<img src="images/home/images_shopping_car/shop_LOGO.png" class="shop_logo" />
			<img src="images/home/images_shopping_car/process_1_2.png" class="process" />

		</div>
		<table>
			<thead>
			<tr>
				<th><label><input class="check-all-check"  type="checkbox"/>&nbsp;全选</label></th>
				<th class="detail"><div class="long_string"></div>购买商品</th>
				<th><div class="long_string"></div>单价（元）</th>
				<th><div class="long_string"></div>折扣</th>
				<th><div class="long_string"></div>数量</th>
				<th><div class="long_string"></div>金额（元）</th>
				<th><div class="long_string"></div>操作</th>
			</tr>
			</thead>
			<tbody id="row">
			<?if(!is_null($products)){?>
				<?foreach ($products as $index => $val){?>
					<tr>
						<td class="checkbox">
							<input class="check-one-check" value="<?=$val['id']?>" name="check" type="checkbox"
								<?if(in_array($val['id'],$product_array)){?>
									checked
								<?}?>/>
						</td>
						<td class="goods"><img src="<?=$val['picUrl']?>" />
							<p><?=$val['productTitle']?></p>
							<p>规格:&nbsp;<?=$val['productSize']?></p>
							<p>包装：<?=$val['productType']?></p>
						</td>
						<td class="price"><?=$val['productPrice']?></td>
						<td class="discount"><?=$val['productDiscount']?></td>
						<td class="count"><input class="reduce" type="button" value="-"/><input id="<?=$val['id']?>" class="count-input" type="text" value="<?=$val['productNum']?>" readonly/><input class="add" type="button" value="+"/></td>
						<td class="subtotal"><?=$val['productPrice']*$val['productDiscount']*$val['productNum']?></td>
						<td class="delete" ><a href="javascript:delshopcart('<?=$val['id']?>');void(0);"><img src="images/home/images_shopping_car/delete.png" /></a></td>
					</tr>
				<?}?>
			<?}?>
			</tbody>
		</table>
		<div class="foot">
			<label class="fl select-all"><input type="checkbox" class="check-all-check"/><span>&nbsp;全选</span></label>
			<a   id="deleteAll" >清空购物车</a>
			<div class="frselected" id="selected">已选商品<span id="selectedTotal">0</span>件</div>
			<div class="frtotal">合计（不含运费）：<span id="priceTotal">￥0.00</span></div>
		</div>
		<div class="accounts">
			<div class="button"><a href="javascript:purchase();void(0);">结算</a></div>
			<a href="<?=yii::$app->urlManager->createUrl('home/shop')?>"><img src="images/home/images_shopping_car/shopping.png" class="shopping" /></a>
		</div>
	</div>

	<!--下面是footer部分-->
	<?=$this->render('..\home\footer',['color' => ''])?>
	<!--分享和侧悬浮-->
	<?=$this->render('..\home\share')?>
	<!--右悬浮-->
	<?=$this->render('..\home\sidebox')?>
</div>
</body>
</html>
