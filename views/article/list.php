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
    <!--日历-->
    <link rel="stylesheet" type="text/css" href="js/calendar/win2k.css"/>
    <link rel="stylesheet" type="text/css" href="js/calendar/jscal2.css"/>
    <link rel="stylesheet" type="text/css" href="js/calendar/border-radius.css"/>
    <link rel="stylesheet" type="text/css" href="js/calendar/calendar-blue.css"/>
    <script type="text/javascript" src="js/calendar/calendar.js"></script>
    <script type="text/javascript" src="js/calendar/en.js"></script>
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
        var addUrl = "<?=yii::$app->urlManager->createUrl('article/add')?>";
        var listallUrl = "<?=yii::$app->urlManager->createUrl('article/listall')?>";
    </script>
    <script type="text/javascript" src="js/admin/article/list.js"></script>
</head>
<body>
<div class="subnav" id="display" >
    <div class="content-menu ib-a blue line-x"> <a class="add fb" href="javascript:openadd();void(0);"><em>发布文章</em></a> </div>
</div>
<div class="pad-lr-10">
    <form name="searchform" id="searchform" action="" method="post" target="iframeId">
        <table width="100%" cellspacing="0" class="search-form">
            <tbody>
            <tr>
                <td>
                    <div class="explain-col">
                        <div>
                            文章标题：
                            <input id="title" name="title" type="text" value="" class="input-text" />
                            &nbsp;&nbsp;作者：
                            <input id="author" name="author" type="text" value="" class="input-text" />
                            &nbsp;&nbsp;文章类型：
                            <select name="articleType" id="articleType" style="width:180px;">

                            </select>
                            <br>
                            发布日期：
                            <input id="_senderDateTime" name="_senderDateTime" type="text" value="" class="date"  />
                            <script type="text/javascript">
                                Calendar.setup({
                                    weekNumbers: true,
                                    inputField : "_senderDateTime",
                                    trigger    : "_senderDateTime",
                                    dateFormat: "%Y-%m-%d %k:%M:%S",
                                    showTime: true,
                                    minuteStep: 1,
                                    onSelect   : function() {this.hide();}
                                });
                            </script>
                            &nbsp;至&nbsp;
                            <input id="senderDateTime_" name="senderDateTime_" type="text" value="" class="date"  />
                            <script type="text/javascript">
                                Calendar.setup({
                                    weekNumbers: true,
                                    inputField : "senderDateTime_",
                                    trigger    : "senderDateTime_",
                                    dateFormat: "%Y-%m-%d %k:%M:%S",
                                    showTime: true,
                                    minuteStep: 1,
                                    onSelect   : function() {this.hide();}
                                });
                            </script>
                            &nbsp;&nbsp;
                            <input type="button" onclick="search();" name="dosubmit" class="buttonsearch" value="查询"/>
                        </div>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
    <div class="table-list">
        <iframe id="iframeId" name="iframeId" src="<?=yii::$app->urlManager->createUrl('article/listall')?>"  frameBorder=0 scrolling=no width="100%" onLoad="iFrameHeight()"></iframe>
    </div>
</div>
</body>
</html>