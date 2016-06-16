<?php
/**
 * Created by PhpStorm.
 * User: liuyao
 * Date: 2016/3/9
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
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <?php $this->head() ?><!--生成一个替换字符，表示css和js的引用代码在这里显示-->

        <!--核心CSS-->
        <link href="css/reset.css" rel="stylesheet" type="text/css">
        <link href="css/system.css" rel="stylesheet" type="text/css">
        <link href="css/public.css" rel="stylesheet" type="text/css">
        <link href="css/table_form.css" rel="stylesheet" type="text/css">
        <!--TAB样式-->
        <link href="css/tabpanel/core.css" rel="stylesheet" type="text/css">
        <link href="css/tabpanel/TabPanel.css" rel="stylesheet" type="text/css">
        <link href="css/tabpanel/Toolbar.css" rel="stylesheet" type="text/css">
        <link href="css/tabpanel/WindowPanel.css" rel="stylesheet" type="text/css">

        <script type="text/javascript" src="js/jquery.min.js"></script>
        <!--弹窗-->
        <script type="text/javascript" src="js/dialog/dialog.js"></script>
        <script type="text/javascript" src="js/styleswitch.js"></script>
        <script type="text/javascript" src="js/hotkeys.js"></script>
        <script type="text/javascript" src="js/jquery.sGallery.js"></script>
        <!--表单验证-->
        <script language="javascript" type="text/javascript" src="js/formvalidatorregex.js" charset="utf-8"></script>
        <script language="javascript" type="text/javascript" src="js/formvalidator.js" charset="utf-8"></script>
        <!--TAB JS-->
        <script type="text/javascript" src="js/tabpanel/Fader.js"></script>
        <script type="text/javascript" src="js/tabpanel/TabPanel.js"></script>
        <script type="text/javascript" src="js/tabpanel/Math.uuid.js"></script>
        <script type="text/javascript" src="js/tabpanel/Toolbar.js"></script>
        <script type="text/javascript" src="js/tabpanel/WindowPanel.js"></script>
        <script type="text/javascript" src="js/tabpanel/Drag.js"></script>
        <!--弹出图片-->
        <script type="text/javascript" src="js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
        <script type="text/javascript" src="js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
        <link rel="stylesheet" type="text/css" href="js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
    </head>
    <body>
        <div class="pad-lr-10">
        <form id="myform" action="" method="post">
            <div class="pad_10">
                <div style='overflow-y:auto;overflow-x:hidden' class='scrolltable'>
                    <table width="100%" cellspacing="0" class="table_form contentWrap">
                        <tr>
                            <th width="100">公司名称</th>
                            <td id="username"><?=$user->username?></td>
                        </tr>
                       <!-- <tr>
                            <th width="100">真实姓名</th>
                            <td id="truename"><?/*=$user->truename*/?></td>
                        </tr>-->
                        <tr>
                            <th width="100">电话号码</th>
                            <td id="mobilephone"><?=$user->mobilephone?></td>
                        </tr>
                        <tr>
                            <th>状态</th>
                            <td id="userState"><?=$user->userState?></td>
                        </tr>
                        <tr>
                            <th>积分</th>
                            <td id="point"><?=$user->point?></td>
                        </tr>
                        <tr>
                            <th>邮箱</th>
                            <td id="point"><?=$user->email?></td>
                        </tr>
                        <tr>
                            <th>等级</th>
                            <td id="member"><?=$user->member?></td>
                        </tr>
                        <tr>
                            <th>地址</th>
                            <td id="detailAddress"><?=$user->detailAddress?></td>
                        </tr>
                        <tr>
                            <th>邮编</th>
                            <td id="postcode"><?=$user->postcode?></td>
                        </tr>
                    </table>
                </div>
                <div class="bk10"></div>

                <div class="table-list">

                   <div class="rightbtn">
                       <input type="button" class="buttonclose" name="dosubmit" value="关闭" onclick="window.top.$.dialog.get('user_detail').close();" />
                    </div>
                </div>
        </form>
        </div>
    </body>
</html>