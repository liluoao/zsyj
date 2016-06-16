<?php
/**
 * Created by PhpStorm.
 * User: liluoao
 * Date: 2016/3/21
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
            var listallUrl = "<?=yii::$app->urlManager->createUrl('department/listall')?>";
            var saveUrl = "<?=yii::$app->urlManager->createUrl('department/save')?>";
            var checknameUrl = "<?=yii::$app->urlManager->createUrl('department/checkname')?>";
        </script>
        <script type="text/javascript" src="js/admin/department/add.js"></script>
    </head>
    <body>
        <div class="pad-lr-10">
            <form name="myform" action="" method="post" id="myform" target="iframeId">
                <div class="pad_10">
                    <div style='overflow-y:auto;overflow-x:hidden' class='scrolltable'>
                        <table id="addDepart" width="100%" cellspacing="0" class="table_form contentWrap">
                            <tr>
                                <th>级别：</th>
                                <td><select name="departmentLevel" id="departmentLevel" style="width:180px;" onchange="javascript:changeTable();"></td>
                            </tr>
                            <tr id="parId" style="display:none;">
                                <th>上级部门名：</th>
                                <td>
                                    <select name="parentId" id="parentId" style="width:200px;">
                                        <option value=""><--请选择上级部门--></option>
                                        <?foreach($department as $key => $val){?>
                                            <option name="parentId" value="<?=$val->id?>"><?=$val->departmentName?></option>
                                        <?}?>
                                    </select>
                                </td>
                            </tr>
                            <tr id="depName">
                                <th>名称：</th>
                                <td>
                                    <input type="text" id="departmentName" name="departmentName"   class="input-text"/>
                                </td>
                            </tr>
                            <tr>
                                <th>描述：</th>
                                <td><textarea style="width:370px;height:180px;" id="departmentDiscri" name="departmentDiscri"></textarea></td>
                            </tr>
                        </table>
                    </div>
                    <div class="bk10"></div>
                </div>
            </form>
            <div class="table-list">
                <div class="rightbtn">
                    <input type="button" class="buttonsave" value="增加" name="dosubmit" onclick="add()" />
                    <input type="button" class="buttonclose" value="关闭" name="dosubmit"  onclick="window.top.$.dialog.get('department_add').close();"/>
                </div>
            </div>
        </div>
    </body>
</html>
<?php $this->endPage() ?>