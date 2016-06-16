<?php
/**
 * Created by PhpStorm.
 * User: liluoao
 * Date: 2016/3/9
 * Time: 12:10
 */
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use yii\widgets\LinkPager;

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
        <script type="text/javascript" src="js/common.js"></script>
        <!--弹出图片-->
        <script type="text/javascript" src="js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
        <script type="text/javascript" src="js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
        <link rel="stylesheet" type="text/css" href="js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
        <script type="text/javascript">
            window.top.$('#display_center_id').css('display','none');
            //iframe自适应高度
            function iFrameHeight() {
                var ifm= document.getElementById("iframeId");
                var subWeb = document.frames ? document.frames["iframeId"].document : ifm.contentDocument;
                if(ifm != null && subWeb != null) {
                    ifm.height = subWeb.body.scrollHeight;
                }
            }
            var listallinventoryUrl = "<?=yii::$app->urlManager->createUrl('material-cost/listallinventory')?>";
            var chooseUrl  = "<?=yii::$app->urlManager->createUrl('material-cost/choose')?>";
            var pageUrl = "<?=yii::$app->urlManager->createUrl('dict/listall')?>";
        </script>
        <script language="javascript" type="text/javascript" src="js/page.js" charset="utf-8"></script>
        <script type="text/javascript" src="js/admin/cost/inventory.js"></script>
    </head>
    <body>
        <div class="subnav" id="display1" >
            <div class="content-menu ib-a blue line-x"> <a class="on" href="javascript:;"><em>库存详情</em></a> </div>
        </div>
        <div class="pad-lr-10">
            <form name="searchform" id="searchform" action="" method="post" target="iframeId">
                <table width="100%" cellspacing="0" class="search-form">
                    <tbody>
                    <tr>
                        <td>
                            <div class="explain-col">
                                <div>
                                    名称：
                                    <input id="materialName" name="materialName" type="hidden" value="" class="input-text" />
                                    <input id="material" type="text" value="" class="input-text" disabled/>
                                    <input type="button" onclick="choose();" name="dosubmit" class="buttonsearch" value="选择"/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="button" onclick="search();" name="dosubmit" class="buttonsearch" value="查询"/>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>
            <div class="table-list">
                <iframe id="iframeId" name="iframeId" src="<?=yii::$app->urlManager->createUrl('material-cost/listallinventory')?>"  frameBorder=0 scrolling=no width="100%" onLoad="iFrameHeight()"></iframe>
            </div>
        </div>
    </body>
</html>