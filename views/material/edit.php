<?php
/**
 * Created by PhpStorm.
 * User: xfk
 * Date: 2016/3/21
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
    <!--日历-->
    <link rel="stylesheet" type="text/css" href="js/calendar/win2k.css">
    <link rel="stylesheet" type="text/css" href="js/calendar/jscal2.css">
    <link rel="stylesheet" type="text/css" href="js/calendar/border-radius.css">
    <link rel="stylesheet" type="text/css" href="js/calendar/calendar-blue.css">
    <script type="text/javascript" src="js/calendar/calendar.js"></script>
    <script type="text/javascript" src="js/calendar/en.js"></script>

    <script>
        var updateUrl = "<?=yii::$app->urlManager->createUrl('material/update')?>";
        var listallUrl  = "<?=yii::$app->urlManager->createUrl('material/listall')?>"
    </script>
    <script language="javascript" type="text/javascript" src="js/admin/material/edit.js" charset="utf-8"></script>
</head>
<body id="_body" scroll="no">
    <div class="pad-lr-10">
    <form name="myform" action="" method="post" id="myform" target="center_frame">
        <div class="pad-10">
            <div class="col-tab">
                <ul class="tabBut cu-li">
                    <li id="tab_setting_1" class="on" onclick="">原材料信息</li>
                </ul>
                <div id="div_setting_1" class="contentList pad-10">
                    <div style='overflow-y:auto;overflow-x:hidden' class='scrolltable'>
                        <table width="90%" cellspacing="0" class="table_form contentWrap">
                            <tbody>
                            <th width="100">名称</th>
                            <td>
                            <input type="hidden" id="id" value="<?=$material->id?>" />
                                <select style="width:270px;" id="materialname">
                                    <?foreach($materialname as $key => $val){?>
                                        <?if($val->dictItemCode == $material->materialname){?>
                                            <option name="materialname" value="<?=$val->dictItemCode?>" selected><?=$val->dictItemName?></option>
                                        <?}else{?>
                                            <option name="materialname" value="<?=$val->dictItemCode?>"><?=$val->dictItemName?></option>
                                        <?}?>
                                    <?}?>
                                </select>
                            </td>
                            <tr>
                                <th width="100">价格</th>
                                <td><input type="text" id="materialprice"  class="input-text" style="width:270px;" value="<?=$material->materialprice?>" /></td>
                            </tr>
                            <tr>
                                <th width="100">描述</th>
                                <td><input type="text" id="materialdiscri"  class="input-text" style="width:270px;" value="<?=$material->materialdiscri?>" /></td>
                            </tr>
                            <th width="100">单位</th>
                            <td>
                                <select style="width:270px;" id="materialunit">
                                    <?foreach($materialunit as $key => $val){?>
                                        <?if($val->dictItemCode == $material->materialunit){?>
                                            <option name="materialunit" value="<?=$val->dictItemCode?>" selected><?=$val->dictItemName?></option>
                                        <?}else{?>
                                            <option name="materialunit" value="<?=$val->dictItemCode?>"><?=$val->dictItemName?></option>
                                        <?}?>
                                    <?}?>
                                </select>
                            </td>
                            <tr>
                                <th width="100">数量</th>
                                <td><input type="text" id="materialnum"  class="input-text" style="width:270px;" value="<?=$material->materialnum?>" /></td>
                            </tr>
                            <tr>
                                <th width="100">类型</th>
                                <td>
                                    <select style="width:270px;" id="materialtype">
                                        <?foreach($materialtype as $key => $val){?>
                                            <?if($val->dictItemCode == $material->materialtype){?>
                                                <option name="materialtype" value="<?=$val->dictItemCode?>" selected><?=$val->dictItemName?></option>
                                            <?}else{?>
                                                <option name="materialtype" value="<?=$val->dictItemCode?>"><?=$val->dictItemName?></option>
                                            <?}?>
                                        <?}?>
                                    </select>
                                </td>
                            </tr>
                            <th width="100">时间</th>
                            <td>
                                <input type="text" id="purchasedatetime"  class="input-text" style="width:270px;" value="<?=$material->purchasedatetime?>" />
                                <script type="text/javascript">
                                    Calendar.setup({
                                        weekNumbers: true,
                                        inputField : "purchasedatetime",
                                        trigger    : "purchasedatetime",
                                        dateFormat: "%Y-%m-%d %k:%M:%S",
                                        showTime: true,
                                        minuteStep: 1,
                                        onSelect   : function() {this.hide();}
                                    });
                                </script>
                            </td>
                            </tbody>
                        </table>
                    </div>
                    <div class="bk10"></div>
                    <div class="rightbtn">
                        <input type="button" class="buttonconfirm" id="dosubmits" name="dosubmits" value="保存" onclick="edit()"/>
                        &nbsp;&nbsp;<input type="button" class="buttondel" name="dosubmit" value="关闭" onclick="window.top.$.dialog.get('material_update').close();"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
        </div>
    </form>
    </div>
</body>
</html>