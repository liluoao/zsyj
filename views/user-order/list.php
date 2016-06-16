<?php
/**
 * Created by PhpStorm.
 * User: xfk
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
            window.top.$('#display_center_id').css('display','none');
            //iframe自适应高度
            function iFrameHeight() {
                var ifm= document.getElementById("iframeId");
                var subWeb = document.frames ? document.frames["iframeId"].document : ifm.contentDocument;
                if(ifm != null && subWeb != null) {
                    ifm.height = subWeb.body.scrollHeight;
                }
            }
            var listdictUrl  = "<?=yii::$app->urlManager->createUrl('dict/listdict')?>";
            var listallUrl  = "<?=yii::$app->urlManager->createUrl('user-order/listall')?>";
            var addUrl  = "<?=yii::$app->urlManager->createUrl('user-order/add')?>";
        </script>
        <script type="text/javascript" src="js/admin/userorder/list.js"></script>
    </head>
    <body>
    <div class="subnav" id="display" >
        <div class="content-menu ib-a blue line-x"> <a class="add fb" href="javascript:openadd();void(0);"><em>测试添加订单</em></a> </div>
    </div>
        <div class="pad-lr-10">
            <form name="searchform" id="searchform" action="" method="post" target="iframeId">
                <table width="100%" cellspacing="0" class="search-form">
                    <tbody>
                        <tr>
                            <td>
                                <div class="explain-col">
                                    <div>
                                        负责人：
                                        <input id="principal" name="principal" type="..." value="" class="input-text" />&nbsp;&nbsp;&nbsp;&nbsp;
                                        收件人：
                                        <input id="recipientName" name="recipientName" type="..." value="" class="input-text" />&nbsp;&nbsp;&nbsp;&nbsp;
                                        电话号码：
                                        <input id="mobilephone" name="mobilephone" type="..." value="" class="input-text" /><br/>
                                        订单类别：
                                        <select name="orderType" id="orderType" style="width:135px;"></select>&nbsp;&nbsp;&nbsp;&nbsp;
                                        订单状态：
                                        <select name="orderState" id="orderState" style="width:135px;"></select></br>
                                        时间：
                                        <input id="orderdateTime_1" name="orderdateTime_1" type="text" value="" class="date">
                                        <script type="text/javascript">
                                            Calendar.setup({
                                                weekNumbers: true,
                                                inputField : "orderdateTime_1",
                                                trigger    : "orderdateTime_1",
                                                dateFormat: "%Y-%m-%d %k:%M:%S",
                                                showTime: true,
                                                minuteStep: 1,
                                                onSelect   : function() {this.hide();}
                                            });
                                        </script>
                                        &nbsp;至&nbsp;&nbsp;
                                        <input id="orderdateTime_2" name="orderdateTime_2" type="text" value="" class="date">
                                        <script type="text/javascript">
                                            Calendar.setup({
                                                weekNumbers: true,
                                                inputField : "orderdateTime_2",
                                                trigger    : "orderdateTime_2",
                                                dateFormat: "%Y-%m-%d %k:%M:%S",
                                                showTime: true,
                                                minuteStep: 1,
                                                onSelect   : function() {this.hide();}
                                            });
                                        </script>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="button" onclick="search();" name="dosubmit" class="buttonsearch" value="查询"/>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <div class="table-list">
                <iframe id="iframeId" name="iframeId" src="<?=yii::$app->urlManager->createUrl('user-order/listall')?>"  frameBorder=0 scrolling=no width="100%" onLoad="iFrameHeight()"></iframe>
            </div>
        </div>
    </body>
</html>
