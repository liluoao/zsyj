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
    <html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <?php $this->head() ?><!--生成一个替换字符，表示css和js的引用代码在这里显示-->

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
        <!--公共函数-->
        <script type="text/javascript" src="js/common.js"></script>
        <link rel="stylesheet" type="text/css" href="js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
        <script type="text/javascript">
            var listdictUrl = "<?=yii::$app->urlManager->createUrl('dict/listdict')?>";
            var checkusernameUrl = "<?=yii::$app->urlManager->createUrl('companyuser/checkusername')?>";
            var insertUrl = "<?=yii::$app->urlManager->createUrl('companyuser/insert')?>";
            var listUrl = "<?=yii::$app->urlManager->createUrl('companyuser/list')?>";
        </script>
        <script type="text/javascript" src="js/admin/companyuser/add.js"></script>
    </head>
    <body>
        <div class="pad-lr-10">
            <form name="myform" action="" method="post" id="myform" target="iframeId">
                <div class="pad_10">
                    <div style='overflow-y:auto;overflow-x:hidden' class='scrolltable'>
                        <table width="100%" cellspacing="0" class="table_form contentWrap">
                            <tr>
                                <th width="100">企业名称：</th>
                                <td><input type="text" style="width:250px;" name="username" id="username"  class="input-text"/></td>
                            </tr>
                            <tr>
                                <th width="100">用户密码：</th>
                                <td><input type="password" style="width:250px;" name="password" id="password"  value="888888" class="input-text"/></td>
                            </tr>
                            <tr>
                                <th>联系电话：</th>
                                <td><input type="text" style="width:250px;" name="mobilephone" id="mobilephone" class="input-text"/></td>
                            </tr>
                            <tr>
                                <th>公司详细地址：</th>
                                <td><input type="text" style="width:250px;" name="detailAddress" id="detailAddress" class="input-text"/></td>
                            </tr>
                            <tr>
                                <th>邮编：</th>
                                <td><input type="text" style="width:250px;" name="postcode" id="postcode" class="input-text"/></td>
                            </tr>
                            <tr>
                                <th>公司email：</th>
                                <td><input type="text" style="width:250px;" name="email" id="email" class="input-text"/></td>
                            </tr>
                            <tr>
                                <th>等级：</th>
                                <td><select name="member" id="member" style="width:260px;"></td>
                            </tr>
                            <tr>
                                <th>积分：</th>
                                <td><input type="text" style="width:250px;" name="point" id="point" class="input-text"/></td>
                            </tr>


                        </table>
                    </div>
                    <div class="bk10"></div>
                </div>
            </form>
            <div class="table-list">
                <div class="rightbtn">
                    <input type="button" class="buttonsave" value="增加" name="dosubmit" onclick="add()" />
                    <input type="button" class="buttonclose" value="关闭" name="dosubmit"  onclick="window.top.$.dialog.get('user_add').close();"/>
                </div>
            </div>
        </div>

    </body>
</html>
<?php $this->endPage() ?>