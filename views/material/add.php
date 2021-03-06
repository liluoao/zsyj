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
        <!--日历-->
        <link rel="stylesheet" type="text/css" href="js/calendar/win2k.css">
        <link rel="stylesheet" type="text/css" href="js/calendar/jscal2.css">
        <link rel="stylesheet" type="text/css" href="js/calendar/border-radius.css">
        <link rel="stylesheet" type="text/css" href="js/calendar/calendar-blue.css">
        <script type="text/javascript" src="js/calendar/calendar.js"></script>
        <script type="text/javascript" src="js/calendar/en.js"></script>
        <!--公共函数-->
        <script type="text/javascript" src="js/common.js"></script>
        <link rel="stylesheet" type="text/css" href="js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
        <script type="text/javascript">
            var listdictUrl = "<?=yii::$app->urlManager->createUrl('dict/listdict')?>";
            var insertUrl = "<?=yii::$app->urlManager->createUrl('material/insert')?>";
            var listUrl  = "<?=yii::$app->urlManager->createUrl('material/list')?>";
            var nameaddUrl  = "<?=yii::$app->urlManager->createUrl('material/nameadd')?>";
            var unitaddUrl  = "<?=yii::$app->urlManager->createUrl('material/unitadd')?>";
            var typeaddUrl  = "<?=yii::$app->urlManager->createUrl('material/typeadd')?>";
        </script>
        <script type="text/javascript" src="js/admin/material/add.js"></script>
    </head>
    <body>
    <div class="pad-lr-10">
        <form name="myform" action="" method="post" id="myform" target="iframeId">
            <div class="pad_10">
                <div style='overflow-y:auto;overflow-x:hidden' class='scrolltable'>
                    <table width="100%" cellspacing="0" class="table_form contentWrap">
                        <tr>
                            <th>名称：</th>
                            <td><select name="materialname" id="materialname" style="">
                                    <input id="dictItemName" name="dictItemName" style="display:none;" type="text" value="" class="input-text" />
                                    <input style="width:60px;" id="dictItemName" type="button" onclick="nameadd('');" name="button" class="dictItemName"  value="添加"/>
                                    <input style="display:none;" id="cancle" type="button" onclick="nameadd('1');" name="button" class="dictItemName"  value="取消"/>
                            </td>
                        </tr>
                        <tr>
                            <th>类型：</th>
                            <td><select name="materialtype" id="materialtype" style="">
                                    <input id="dictItemName2" name="dictItemName2" style="display:none;" type="text" value="" class="input-text" />
                                    <input style="width:60px;" id="dictItemName2" type="button" onclick="typeadd('');" name="button" class="dictItemName2"  value="添加"/>
                                    <input style="display:none;" id="cancle2" type="button" onclick="typeadd('3');" name="button" class="dictItemName2"  value="取消"/>
                            </td>
                        </tr>
                        <tr>
                            <th>数量：</th>
                            <td><input type="text" style="width:250px;" name="materialnum" id="materialnum" class="input-text"/></td>
                        </tr>
                        <tr>
                            <th>单位：</th>
                            <td><select name="materialunit" id="materialunit" style="">
                                    <input id="dictItemName1" name="dictItemName1" style="display:none;" type="text" value="" class="input-text" />
                                    <input style="width:60px;" id="dictItemName1" type="button" onclick="unitadd('');" name="button" class="dictItemName1"  value="添加"/>
                                    <input style="display:none;" id="cancle1" type="button" onclick="unitadd('2');" name="button" class="dictItemName1"  value="取消"/>
                            </td>
                        </tr>
                        <tr>
                            <th>价格：</th>
                            <td><input type="text" style="width:250px;" name="materialprice" id="materialprice"  class="input-text"/></td>
                        </tr>
                        <tr>
                            <th>描述：</th>
                            <td><input type="text" style="width:250px;" name="materialdiscri" id="materialdiscri"  class="input-text"/></td>
                        </tr>
                        <tr>
                            <th>时间:</th>
                            <td>
                                <input id="purchasedatetime"  name="purchasedatetime" type="text" value="" class="date">
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
                        </tr>
                    </table>
                </div>
                <div class="bk10"></div>
            </div>
        </form>
        <div class="table-list">
            <div class="rightbtn">
                <input type="button" class="buttonsave" value="增加" name="dosubmit" onclick="add()" />
                <input type="button" class="buttonclose" value="关闭" name="dosubmit"  onclick="window.top.$.dialog.get('material_add').close();"/>
            </div>
        </div>
    </div>

    </body>
    </html>
<?php $this->endPage() ?>