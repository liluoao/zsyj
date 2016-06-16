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
            var insertUrl = "<?=yii::$app->urlManager->createUrl('recruitment/insert')?>";
            var listUrl = "<?=yii::$app->urlManager->createUrl('recruitment/list')?>";
            var listallUrl = "<?=yii::$app->urlManager->createUrl('recruitment/listall')?>";
        </script>
        <script type="text/javascript" src="js/admin/recruitment/add.js"></script>
    </head>
    <body>
    <div class="pad-lr-10">
        <form name="myform" action="" method="post" id="myform" target="iframeId">
            <div class="pad_10">
                <div style='overflow-y:auto;overflow-x:hidden' class='scrolltable'>
                    <table width="100%" high="50%" cellspacing="0" class="table_form contentWrap">
                        <tr>
                            <th>职位：</th>
                            <td><input type="text" style="width:250px;" name="position" id="position" class="input-text"/></td>
                        </tr>
                        <tr>
                            <th>职位名称：</th>
                            <td><input type="text" style="width:250px;" name="positionname" id="positionname" class="input-text"/></td>
                        </tr>
                        <tr>
                            <th>岗位职责：</th>
                            <td><textarea style="width:250px;height:50px;" name="responsibilities" id="responsibilities"></textarea></td>
                        </tr>
                        <tr>
                            <th>任职要求：</th>
                            <td><textarea style="width:250px;height:50px;" name="claim" id="claim"></textarea></td>
                            </tr>
                        <tr>
                            <th>薪资待遇：</th>
                            <td><textarea style="width:250px;height:50px;" name="wage" id="wage"></textarea></td>
                        </tr>
                    </table>
                </div>
                <div class="bk10"></div>
            </div>
        </form>
        <div class="table-list">
            <div class="rightbtn">
                <input type="button" class="buttonsave" value="增加" name="dosubmit" onclick="add()" />
                <input type="button" class="buttonclose" value="关闭" name="dosubmit"  onclick="window.top.$.dialog.get('recruitment_add').close();"/>
            </div>
        </div>
    </div>

    </body>
    </html>
<?php $this->endPage() ?>