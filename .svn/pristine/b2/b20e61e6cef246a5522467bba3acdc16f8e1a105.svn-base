<?php
/**
 * Created by PhpStorm.
 * User: xfk
 * Date: 2016/4/18
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
	<title>我的留言</title>
	<script src="js/home/jquery-1.8.3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/home/base.css">
	<link rel="stylesheet" type="text/css" href="css/home/aside_base.css" />
	<link rel="stylesheet" type="text/css" href="css/home/paging.css" />
	<link rel="stylesheet" type="text/css" href="css/home/mymessages.css" />
	<script>
		var delUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/deletemessage')?>";
		$(function(){
			$(".one").click(function(){
				var message = $(this).attr('value');
				$("#"+message).hide(1000);
				var proStr = "";
				proStr += "id=" + message;
				$.ajax({
					url: delUrl,
					type: "post",
					dataType: "text",
					data: proStr,
					async: false,
				});
			});
		});
	</script>
	<script language="javascript" type="text/javascript" src="js/page.js" charset="utf-8"></script>
</head>

<body>
<div class="wraper">
	<!--头部开始-->
	<?=$this->render('..\home\header',['column'=>'shop'])?>
	<!--头部结束-->
	<div class="content">
		<div class="content_top">
			<div class="content_nav">
				<a href="<?=yii::$app->urlManager->createUrl('fontadmin/personaldata')?>">我的紫薯</a><span>></span><a href="<?=yii::$app->urlManager->createUrl('fontadmin/mymessages')?>">我的留言</a></div>
			<div class="content_line"></div>
		</div>
		<div class="big">
			<div class="aside">
				<div class="aside_title">我的紫薯</div>
				<ul>
					<li><a href="<?=yii::$app->urlManager->createUrl('fontadmin/personaldata')?>">个人资料</a></li>
					<li><a href="<?=yii::$app->urlManager->createUrl('fontadmin/password')?>">修改密码</a></li>
					<li><a href="<?=yii::$app->urlManager->createUrl('fontadmin/addressafter')?>">收货地址</a></li>
					<li><a href="<?=yii::$app->urlManager->createUrl('fontadmin/mymessages')?>" class="now">我的留言</a></li>
					<li><a href="<?=yii::$app->urlManager->createUrl('fontadmin/orderafter')?>">我的订单</a></li>
				</ul>
			</div>
			<div class="big_right">
				<p class="title"><span>我的留言</span></p>
				<?if(!is_null($messages)){?>
					<?foreach ($messages as $index => $val){?>
						<div class="message" id="<?=$val['id']?>">
							<p class="time"><?=$val['createDateTime']?></p>
							<p class="txt">
								<span>留言板</span>
								<a class="noto"><?=htmlspecialchars($val['content'])?></a>
								<a class="to" href="<?=yii::$app->urlManager->createUrl('home/board')?>">转至留言板</a>
							</p>

							<img class="one" value="<?=$val['id']?>" src="images/home/images_13_1_7/delete.png" />

						</div>
					<?}?>
				<?}?>
				<?php foreach ($messages as $index => $val){?>
					<div id="pages"  <?if($index != 0){?>style="display:none;" <?}?>>
						<a><?=$pages->totalCount?>条/<?=$pages->pageCount?>页</a>
						<input type="hidden" value="<?=$pages->page?>" id="curPage"/><!--当前页-->
						<input type="hidden" value="<?=$pages->pageCount?>" id="pageCount"/><!--总页数-->
						<input type="hidden" value="<?=$pages->pageSize?>" id="pageSize"/><!--每页显示数-->
						<?if($pages->page>0){?>
							<!-- 判断是否不是第一页 -->
							<a id="firstPageid" href="javascript:page('1')">首页</a>
							<a id="supPageId" href="javascript:page('2')">上一页</a>
						<?}?>
						<?=$pages->page+1?>
						<?if($pages->page<$pages->pageCount-1){?>
							<!-- 判断如果不是最后一页 -->
							<a id="nextPageid" href="javascript:page('3')">下一页</a>
							<a id="lastPageid" href="javascript:page('4')" class="a1">尾页</a>
						<?}?>
						<input type="text" size="2" class="input-text" value="<?=$pages->page+1?>" id="goPage"/><a href="javascript:page('0')" >GO</a>
					</div>
				<?}?>
			</div>
		</div>
	</div>
</div>
<!--底部-->
<!--下面是footer部分-->
<?=$this->render('..\home\footer',['color' => '#f7f7f7'])?>
<!--分享和侧悬浮-->
<?=$this->render('..\home\share')?>
<!--右悬浮-->
<?=$this->render('..\home\sidebox')?>
</div>
</body>
</html>
<form action="<?=yii::$app->urlManager->createUrl('fontadmin/mymessages')?>" method="get" id="pageForm">
	<input type="hidden" id="page" name="page" value="<?=$pages->page?>"/>
	<input type="hidden"  name="r" value="fontadmin/mymessages"/>
	<input type="hidden" id="pre-page" name="pre-page" value="<?=$pages->pageSize?>"/>
</form>
