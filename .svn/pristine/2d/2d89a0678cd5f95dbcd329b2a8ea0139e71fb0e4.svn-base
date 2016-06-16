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
        <script type="text/javascript">
            var insertUrl = "<?=yii::$app->urlManager->createUrl('user/insert')?>";
            var tag = "<?=$tag?>"

            if(tag == 'success'){

                var picUrl = window.parent.$('#picUrl').val();
                if(picUrl != ''){
                    window.parent.$('#picUrl').val(picUrl + ";<?=$fileArg['fileSaveUrl']?>");
                }else{
                    window.parent.$('#picUrl').val("<?=$fileArg['fileSaveUrl']?>");

                }


            }
        </script>
        <script type="text/javascript" src="js/admin/product/upload.js"></script>
    </head>
    <body>
        <form id="uploadForm" name="form1" method="post" action="<?=yii::$app->urlManager->createUrl('product/upload')?>" enctype="multipart/form-data">
            <input type="file" id="fileName" name="file" style="height:18px;border:1px #ff9900;width:250px;"/>
            <input type="button" class="buttonsave" onClick="uploadPic();"  value="上传"/><div id="productPWDAgainTip"></div>
        </form>
    </body>
</html>

<?php $this->endPage() ?>