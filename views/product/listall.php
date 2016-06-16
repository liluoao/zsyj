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
            var editUrl = "<?=yii::$app->urlManager->createUrl('product/edit')?>";
            var deleteUrl = "<?=yii::$app->urlManager->createUrl('product/delete')?>"
            var deleteallUrl = "<?=yii::$app->urlManager->createUrl('product/deleteall')?>"
            var detailUrl = "<?=yii::$app->urlManager->createUrl('product/detail')?>"
            var listallUrl = "<?=yii::$app->urlManager->createUrl('product/listall')?>"
            var productlistUrl = "<?=yii::$app->urlManager->createUrl('product/productlist')?>"
            var productdownlistUrl = "<?=yii::$app->urlManager->createUrl('product/productdownlist')?>"
        </script>
        <script language="javascript" type="text/javascript" src="js/admin/product/listall.js" charset="utf-8"></script>
        <script language="javascript" type="text/javascript" src="js/page.js" charset="utf-8"></script>
    </head>
    <body>
        <div class="pad-lr-10">
            <div class="table-list">
                <table width="100%" cellspacing="0" id="product_list">
                    <thead id="dict_list_head">
                    <tr align="left">
                        <th width="80px"><input type="checkbox" id='check_box' onclick="selectall('id')"/>全选/取消</th><th width="40px">排序</th><th width="80px">名称</th><th width="40px" align="center">价格</th><th width="40px" align="center">折扣</th><th width="80px" align="center">单位</th><th width="80px" align="center">库存</th><th width="80px" align="center">状态</th><th width="80px" align="center">类别</th><th width="80px" align="center">规格</th><th width="80px" align="center">是否首页展示</th><th align="center">操作</th>
                    </tr>
                    </thead>
                    <tbody id="user_list_body">
                    <?if(!is_null($users)){?>
                    <?php foreach ($users as $index => $val){?>
                        <tr align="left">
                            <td><input type="checkbox" id="id" name="id" value="<?=htmlspecialchars($val->id)?>"/></td>
                            <td><?=$index+$pages->page*$pages->pageSize+1?></td>
                            <td ><a href="javascript:detail('<?=htmlspecialchars($val->id)?>','<?=htmlspecialchars($val->productTitle)?>')"><?=htmlspecialchars($val->productTitle)?></a></td>
                            <td align="center"><?=htmlspecialchars($val->productPrice)?></td>
                            <td align="center"><?=htmlspecialchars($val->productDiscount)?></td>
                            <td align="center"><?=htmlspecialchars($val->productUnit)?></td>
                            <td align="center"><?=htmlspecialchars($val->inventory)?></td>
                            <td align="center"><?=htmlspecialchars($val->productState)?></td>
                            <td align="center"><?=htmlspecialchars($val->productType)?></td>
                            <td align="center"><?=htmlspecialchars($val->productSize)?></td>
                            <td align="center"><?=htmlspecialchars($val->isIndex)?></td>

                            <td align="center">
                                <a href="javascript:openedit('<?=$val->id?>','<?=$val->productTitle?>')">修改</a>
                                <a href="javascript:deletep('<?=$val->id?>')">删除</a>
                            </td>
                       </tr>
                    <?}?>
                    <?}?>
                    </tbody>
                </table>
                <div class="btn">
                    <label for="check_box"><input type="checkbox" id='check_box' onclick="selectall('id')"/>全选/取消</label>
                    <input type="button" class="buttondel" name="dosubmit" value="删除" onclick="if (confirm('您确定要删除吗？')) delopt();"/> &nbsp;&nbsp;
                    <input type="button" class="buttondel" name="button" value="上架" onclick="javascript:onSale();"/> &nbsp;&nbsp;
                    <input type="button" class="buttondel" name="button" value="下架" onclick="javascript:downSale();"/>
                </div>
                <div id="pages">
                    <a><?=$pages->totalCount?>条/<?=$pages->pageCount?>页</a>
                    <input type="hidden" value="<?=$pages->page?>" id="curPage"/><!--当前页-->
                    <input type="hidden" value="<?=$pages->pageCount?>" id="pageCount"/><!--总页数-->
                    <input type="hidden" value="<?=$pages->pageSize?>" id="pageSize"/><!--每页显示数-->
                    <?if($pages->page>0){?>
                        <!-- 判断是否不是第一页 -->
                        <a id="firstPageid" href="javascript:page('1')">首页</a>
                        <a id="supPageId" href="javascript:page('2')">上一页</a>
                    <?}?>
                    <?=$pages->page+1?>
                    <?if($pages->page<$pages->pageCount-1){?>
                        <!-- 判断如果不是最后一页 -->
                        <a id="nextPageid" href="javascript:page('3')">下一页</a>
                        <a id="lastPageid" href="javascript:page('4')" class="a1">尾页</a>
                    <?}?>
                    <input type="text" size="2" class="input-text" value="<?=$pages->page+1?>" id="goPage"/><a href="javascript:page('0')">GO</a>
                </div>
            </div>
        </div>
    </body>
</html>
<form action="<?=yii::$app->urlManager->createUrl('product/listall')?>" method="get" id="pageForm">
    <input type="hidden" id="page" name="page" value="<?=$pages->page?>"/>
    <input type="hidden"  name="r" value="product/listall"/>
    <input type="hidden" id="pre-page" name="pre-page" value="<?=$pages->pageSize?>"/>
    <input type="hidden" id="productTitle" name="productTitle" value="<?=$para['productTitle']?>"/>
    <input type="hidden" id="productType" name="productType" value="<?=$para['productType']?>"/>
    <input type="hidden" id="productState" name="productState" value="<?=$para['productState']?>"/>

</form>
