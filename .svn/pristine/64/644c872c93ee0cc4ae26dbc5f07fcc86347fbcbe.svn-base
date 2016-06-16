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
    <!--公共函数-->
    <script type="text/javascript" src="js/common.js"></script>
    <link rel="stylesheet" type="text/css" href="js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
    <!--文本编辑器 -->
    <script type="text/javascript" src="js/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="js/ckeditor/genEditor.js"></script>
    <!--日历-->
    <link rel="stylesheet" type="text/css" href="js/calendar/win2k.css"/>
    <link rel="stylesheet" type="text/css" href="js/calendar/jscal2.css"/>
    <link rel="stylesheet" type="text/css" href="js/calendar/border-radius.css"/>
    <link rel="stylesheet" type="text/css" href="js/calendar/calendar-blue.css"/>
    <script type="text/javascript" src="js/calendar/calendar.js"></script>
    <script type="text/javascript" src="js/calendar/en.js"></script>
    <script>
        var updateUrl = "<?=yii::$app->urlManager->createUrl('inform/update')?>";
    </script>
    <script language="javascript" type="text/javascript" src="js/admin/inform/edit.js" charset="utf-8"></script>
</head>
<body id="_body" scroll="no">
    <div class="pad-lr-10">
    <form name="myform" action="" method="post" id="myform" target="center_frame">
        <div class="pad-10">
            <div class="col-tab">
                <ul class="tabBut cu-li">
                    <li id="tab_setting_1" class="on">通知信息</li>
                </ul>
                <div id="div_setting_1" class="contentList pad-10">
                    <div style='overflow-y:auto;overflow-x:hidden' class='scrolltable'>
                        <table width="90%" cellspacing="0" class="table_form contentWrap">
                            <tbody>
                            <tr>
                                <th width="100">通知类型：</th>
                                <td><select id="informType" style="width:180px;">
                                        <?foreach($typedict as $key => $val){?>
                                            <?if($val->dictItemCode == $inform->informType){?>
                                                <option name="informType" value="<?=$val->dictItemCode?>" selected><?=$val->dictItemName?></option>
                                            <?}else{?>
                                                <option name="informType" value="<?=$val->dictItemCode?>"><?=$val->dictItemName?></option>
                                            <?}?>
                                        <?}?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th width="100">通知标题：</th>
                                <td><input type="text" style="width:350px;" name="title" id="title"  class="input-text" value="<?=htmlspecialchars($inform->title)?>"></td>
                                <input type="hidden" id="id" value="<?=$inform->id?>" />
                            </tr>
                            <tr>
                                <th>正&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;文：</th>
                                <td><textarea style="width:500px;height:200px;" name="content" id="content"><?=$inform->content?></textarea></td>
                            </tr>
                            <tr>
                                <th width="100">发布日期：</th>
                                <td><input id="senderDateTime" name="senderDateTime" type="text" value="<?=$inform->senderDateTime?>" class="date"/></td>
                                <script type="text/javascript">
                                    Calendar.setup({
                                        weekNumbers: true,
                                        inputField : "senderDateTime",
                                        trigger    : "senderDateTime",
                                        dateFormat: "%Y-%m-%d %k:%M:%S",
                                        showTime: true,
                                        minuteStep: 1,
                                        onSelect   : function() {this.hide();}
                                    });
                                </script>
                            </tr>
                            <tr>
                                <th>附&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;件：</th>
                                <td>
                                    <input type="text" style="display:none;" name="attachUrls" id="attachUrls" class="input-text" value="<?=$inform->attachUrls?>">
                                    <input type="text" style="display:none;" name="attachNames" id="attachNames" class="input-text" value="<?=$inform->attachNames?>">
                                    <iframe frameborder=0 width="100%" height=20px scrolling=no src="<?=yii::$app->urlManager->createUrl('inform/upload')?>"></iframe>
                                </td>
                            </tr>
                            <tr>
                                <th width="100">是否置顶：</th>
                                <td><select id="isTop" style="width:180px;">
                                        <?foreach($topdict as $key => $val){?>
                                            <?if($val->dictItemCode == $inform->isTop){?>
                                                <option name="isTop" value="<?=$val->dictItemCode?>" selected><?=$val->dictItemName?></option>
                                            <?}else{?>
                                                <option name="isTop" value="<?=$val->dictItemCode?>"><?=$val->dictItemName?></option>
                                            <?}?>
                                        <?}?>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th width="100">点击率:</th>
                                <td><input type="text" style="width:200px;" name="click" id="click" class="input-text" value="<?=htmlspecialchars($inform->click)?>"></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="bk10"></div>
                    <div class="rightbtn">
                        <input type="button" class="buttonconfirm" id="dosubmits" name="dosubmits" value="保存" onclick="edit()"/>
                        &nbsp;&nbsp;<input type="button" class="buttondel" name="dosubmit" value="关闭" onclick="window.top.$.dialog.get('inform_update').close();"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
            </div>
        </div>
    </form>
    </div>
</body>
</html>
<script type="text/javascript">
    var contentEditor=genEditor('','content','');
</script>