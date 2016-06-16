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
    <title>忘记密码</title>
    <script src="js/home/jquery-1.8.3.min.js"></script>
    <script src="js/home/common/share.js"></script>
    <link rel="stylesheet" type="text/css" href="css/home/forgetpassword.css">
    <link href="css/home/base.css" rel="stylesheet" type="text/css" />
    <script>
        var sendemailUrl = "<?=yii::$app->urlManager->createUrl('home/sendemail')?>";
    </script>
    <script src="js/home/forgetpassword.js"></script>
</head>

<body>
    <?=$this->render('login')?>
    <?=$this->render('header',['column'=>''])?>
    <!--content部分-->
	<div class="content">
    	<div class="center">
        	<p class="title">找回密码</p>
            <form>
            	<div class="pic">
                    <img src="images/home/images_password/email.png" style="margin-top:13px; margin-left:6px; vertical-align: top"/>
                    <input id="txtEmail" type="text" placeholder="注册时填写的邮箱" />
                    <span id="spinfo"></span>
                </div>

                <div class="down">
                    <input class="ma" type="text" placeholder="填写验证码" class="verification" id="verification"/>

                    <img id="certImg" src="<?=yii::$app->urlManager->createUrl('home/captcha')?>"  onclick= "this.src='<?=yii::$app->urlManager->createUrl('login/captcha')?>&d='+Math.random();" title="请输入此验证码，如看不清请点击刷新。" alt="请输入此验证码，如看不清请点击刷新。" style="cursor:pointer" width="100" height="42" />
                    <span id="spinfo1"></span>
                </div>
                <span id="spinfo2"></span>
                <span id="spinfo3"></span>
                <a id="button" >发送密码到邮箱</a>
            </form>
        </div>
    </div>
    <!--下面是footer部分-->
    <?=$this->render('footer',['color' => '#f8f8f8'])?>
    <!--分享和侧悬浮-->
    <?=$this->render('share')?>
    <!--右悬浮-->
    <?=$this->render('sidebox')?>

</body>
</html>
