<?php
/**
 * Created by PhpStorm.
 * User: liuyao
 * Date: 2016/4/1
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
	<link rel="stylesheet" type="text/css" href="css/home/base.css">
	<link rel="stylesheet" type="text/css" href="css/home/zsyj_firstpage.css">
	<script src="js/home/jquery-1.8.3.min.js"></script>

	<script src="js/home/index.js"></script>
</head>
<!--body-->
<body>

<?=$this->render('login')?>

<div class="banner">
	<a href="javascript:;" id="xiangxia"><img src="images/home/images_Home/top.jpg"  id="yidong" ></a>
</div>
<?=$this->render('header',['column'=>'index'])?>
<div class="content">
	<div claas="big">
		<div class="column1">
			<img src="images/home/images_Home/column1.png">
		</div>
		<div class="commodity">
			<?if(!is_null($products)){?>
				<?php foreach ($products as $index => $val){?>
					<ul <?if($index == 0){?>class="commodity_buy" <?}else{?> class = "commodity_chengpin" <?}?>>
						<?
						$imgs = $val->picUrl;
						$imgs_array = explode(';',$imgs);
						foreach($imgs_array as $key => $data){
							?>
							<a href="<?=yii::$app->urlManager->createUrl(['home/tailafter','id'=>$val->id])?>"> <img src="<?=$data?>" class="img_size"/></a>
							<?
						}
						?>
						<li class="box"><?=$val->productTitle?></li>
						<li <?if($index != 2){?> class="purchase" <?}else{?> class="purchase1" <?}?>>

							<?
							if($index == 0){
								echo  '<a href="'.yii::$app->urlManager->createUrl(['home/tailafter','id'=>$val->id]).'">企业采购</a>';
							}elseif($index == 1){
								echo  '<a href="'.yii::$app->urlManager->createUrl(['home/tailafter','id'=>$val->id]).'">个人采购</a>';
							}else{
								echo  '<a href="'.yii::$app->urlManager->createUrl(['home/tailafter','id'=>$val->id]).'">商城</a>';
							}
							?>

						</li>
					</ul>
				<?}?>
			<?}?>
		</div>

		<div class="NaturalGourmetbig">
			<img src="images/home/images_Home/NaturalGourmetbig.png">
		</div>
		<div class="NaturalGourmet_left">
			<img src="images/home/images_Home/NaturalGourmet_left.png" class="NaturalGourmet_img">
			<img src="images/home/images_Home/laiyuan.png" class="laiyuan">
			<div class="NaturalGourmet_text">
				<p>紫薯——属于薯蓣属，植物名薯茄科，又名紫甘薯，紫色红薯。</p>
				<p>原产地为秘鲁和玻利维亚的交界地的的喀喀湖地区，已有近8000年的种植历史，是当地人的主要粮食作物之一。</p>
				<p>上世纪50年代，美国宾法尼亚州斯科兰顿大学肥胖病研究中心研究发现，的的喀喀湖地区的居民中，肥胖者极少而且很少生病，尤其是癌症患者极少，研究结论指出长期食用紫薯是出现此现象的原因。从而引起在30年内紫薯被美洲、欧洲各国相继批准引种。</p>
				<p>为了解决原子弹辐射后遗症，日本广岛白木山是亚洲第一个引种紫薯的地区。由于其明显的抗氧化、抗肥胖、抗辐射、抗疾病效果，后长崎、九州等日本地区开始大面积种植。</p>
				<p>2002年，经国家批准从日本引进开始种植，紫薯引进国内后科学家进行了本土化改造（但不是转基因）。</p>
			</div>
		</div>
		<div class="Technologybig">
			<img src="images/home/images_Home/Technologybig.png">
		</div>
		<div id="outer">
			<ul id="inner">
				<li><img src="images/home/images_Home/Technology_1.jpg" width="1000" height="600" alt=" "></li>
				<li><img src="images/home/images_Home/Technology_2.jpg" width="1000" height="600" alt=" "></li>
				<li><img src="images/home/images_Home/Technology_3.jpg" width="1000" height="600" alt=" "></li>
			</ul>
		</div>
	</div>
</div>
<?=$this->render('footer',['color' => ''])?>

<div class="hjhj">
	<div class="denglu">
		<div class="denglui"><img src="images/home/images_sidebar/icon_sidebar.png"><img src="images/home/images_sidebar/wenzi.png" class="myself"></div>
		<ul class="sdfsd">
			<a  class="btn">
				<li class="dengluiq" style="  margin-right:55px;margin-left:100px;background:url('images/home/images_sidebar/loginbar.png');width:120px;height:44px;">
				</li>
			</a>
			<a href="<?=yii::$app->urlManager->createUrl('home/register')?>">
				<li class="dengluiz" style="background:url('images/home/images_sidebar/regsiter.png');width:120px;height:44px;">
				</li>
			</a>
		</ul>
	</div>
	<div class="guanbi">
		<img src="images/home/images_sidebar/gu.png"  width="31px" height="31px">
	</div>
</div>
<!--分享和侧悬浮-->
<?=$this->render('share')?>
<!--右悬浮-->
<?=$this->render('sidebox')?>
</body>
</html>