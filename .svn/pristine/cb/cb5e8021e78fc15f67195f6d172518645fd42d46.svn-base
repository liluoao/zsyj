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
    <script type="text/javascript">
        var saveoneUrl = '<?=yii::$app->urlManager->createUrl('backend-menu/saveone')?>';
        var treeUrl =  '<?= Yii::$app->urlManager->createUrl('backend-menu/tree')?>';
    </script>
    <script language="javascript" type="text/javascript" src="js/admin/menu/add.js" charset="utf-8"></script>
</head>
<body id="_body" scroll="no">
    <div class="pad-lr-10">
        <form name="myform" action="" method="post" id="myform" target="center_frame">
            <div class="pad_10">
                <div style='overflow-y:auto;overflow-x:hidden' class='scrolltable'>
                    <table width="90%" cellspacing="0" class="table_form contentWrap">
                        <tbody>
                        <?if(!is_null($this->context->backendMenu)){?>
                            <tr>
                                <th width="100">上级菜单</th>
                                <td><div><?=$this->context->backendMenu->menuName ?></div>
                                    <input type="hidden" id="uplevelMenu" name="uplevelMenu" class="input-text" style="width:270px;" value="<?=$this->context->backendMenu->id ?>"/></td>
                            </tr>
                        <?}?>
                        <tr>
                            <th width="100">菜单级别</th>
                            <td><div><?=$this->context->level ?></div>
                                <input type="hidden" id="menuLevel" name="menuLevel" class="input-text" style="width:270px;" value="<?=$this->context->level ?>"/></td>
                        </tr>

                        <tr>
                            <th width="100">菜单名称</th>
                            <td><input type="text" id="menuName" name="menuName" class="input-text" style="width:270px;"/></td>
                        </tr>
                        <tr>
                            <th width="100">菜单URL</th>
                            <td><input type="text" id="menuUrl" name="menuUrl" class="input-text" style="width:270px;"/></td>
                        </tr>
                        <tr>
                            <th width="100">排序</th>
                            <td><input type="text" id="orderBy" name="orderBy" value="0" class="input-text" style="width:270px;"/></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="bk10"></div>
                <div class="rightbtn">
                    <input type="button" class="buttonsave" id="dosubmits" name="dosubmits" value="保存" onclick="addMenu()"/>
                    &nbsp;&nbsp;<input type="button" class="buttonclose" name="dosubmit" value="关闭" onclick="closeWin()"/>
                </div>
            </div>
        </form>
    </div>
</body>
</html>