<?php
/**
 * Created by PhpStorm.
 * User: xfk
 * Date: 2016/4/8
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
    <title>人才招聘</title>
    <link rel="stylesheet" type="text/css" href="css/home/base.css">
    <link rel="stylesheet" type="text/css" href="css/home/talent_recruitment.css" />
    <script src="js/home/jquery-1.8.3.min.js"></script>
    <link href="css/home/right_suspend.css" rel="stylesheet" />
    <script src="js/home/talent_recruitment.js"></script>
</head>

<body>
    <?=$this->render('login')?>
    <?=$this->render('header',['column'=>'talentrecruitment'])?>
    <!--下面是content部分-->
	<div class="content">
		<div class="recruit_show">
            <img src="images/home/images_recruitment/show.jpg"/>
        </div>
    	<div class="recruit_Txtbox">
        	<div class="recruit_nav">
            	<ul>
                    <?foreach ($recruitment as $index => $val){?>
                        <li class="index" <?if($index != 0){?>style="background: rgb(235, 228, 237);" <?}?>><span><?=$val->position?></span></li>
                    <?}?>
                </ul>
            </div>
            <div class="clearfix">
                <?php foreach ($recruitment as $index => $val){?>
            	<div class="bk" <?if($index != 0){?>style="display:none;" <?}?>>
                    <h1><?=$val->positionname?></h1>
                    <div class="responsibility">
                        <div class="responsibility_left">
                            <img src="images/home/images_recruitment/1Duties.png" />
                        </div>
                        <ol class="responsibility_text">
                            <?
                            $responsibilities = $val->responsibilities;
                            $responsibilities_array = explode('#',$responsibilities);
                            foreach($responsibilities_array as $key => $data){
                            ?>
                                <li><?=$data?></li>
                            <?}?>
                        </ol>
                        <div class="line1"></div>
                    </div>
                    <div class="request">
                        <div class="request_left">
                            <img src="images/home/images_recruitment/2Duties.png" />
                        </div>
                        <ol class="request_text">
                            <?
                            $claim = $val->claim;
                            $claim_array = explode('#',$claim);
                            foreach($claim_array as $key => $data){
                            ?>
                                <li><?=$data?></li>
                            <?}?>
                        </ol>
                        <div class="line3"></div>
                    </div>
                    <div class="pay">
                        <div class="pay_left">
                            <img src="images/home/images_recruitment/3Duties.png" />
                        </div>
                        <ol class="pay_text">
                            <?
                            $wage = $val->wage;
                            $wage_array = explode('#',$wage);
                            foreach($wage_array as $key => $data){
                                ?>
                                <li><?=$data?></li>
                            <?}?>
                        </ol>
                    </div><!--岗位一-->

                </div>
                <?}?>
            </div>
        </div>
    <!--下面是footer部分-->
    <?=$this->render('footer',['color' => ''])?>
    <!--分享和侧悬浮-->
    <?=$this->render('share')?>
    <!--右悬浮-->
    <?=$this->render('sidebox')?>
    </div>
</body>
</html>
