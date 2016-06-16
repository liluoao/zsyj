<?php
/**
 * Created by PhpStorm.
 * User: xfk
 * Date: 2016/4/18
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
    <title>我的订单</title>
    <link rel="stylesheet" type="text/css" href="css/home/address.css" />
    <link rel="stylesheet" type="text/css" href="css/home/base.css">
    <link rel="stylesheet" type="text/css" href="css/home/aside_base.css" />
    <link rel="stylesheet" type="text/css" href="css/home/paging.css" />
    <script src="js/home/jquery-1.8.3.min.js"></script>
    <script language="javascript" type="text/javascript" src="js/page.js" charset="utf-8"></script>
    <!--删除-->
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list .del").click(function(){
                var attr = 'id='+$(this).attr('val');
                $.ajax({
                    url: delUrl,
                    type: "post",
                    dataType: "text",
                    data: attr,
                    async: false,
                })
                $(this).parents("#list").hide("slow");
            });
        });
    </script>
    <script>
        $(document).ready(function(){
            $(".pay_box").click(function() {
                $(".pay_box").removeClass("aa");
                $(this).addClass("aa");
            })
        })
    </script>
        <!--下拉-->
    <script>
        $(function(){
            $('.gywm').hover(function(){
                $('.xiala').css('display','block');
            },function(){
                $('.xiala').css('display','none');
            })
        })
        var delUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/delorder')?>";
        var orderafterUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/orderafter')?>";
        var detailUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/orderdetail')?>";
    </script>
    <script>
        $(function(){//点击复选框
            $(".check-all-check").click(function(){//全选全不选
                if($(this).attr("checked")=="checked"){
                    $(".check-one-check").attr("checked","true");
                    $(".check-all-check").attr("checked","true");
                }else{
                    $(".check-one-check").removeAttr("checked");
                    $(".check-all-check").removeAttr("checked");
                }
            })
            $(".check-one-check").click(function(){
                if($("input[type='checkbox'].check-one-check").length>$("input[type='checkbox'].check-one-check:checked").length)
                {
                    $(".check-all-check").removeAttr("checked");//不是全选，全选框去掉
                }
                else{
                    $(".check-all-check").attr("checked","true");
                }
            })
        })
        function delorder(id) {
            var proStr = "";
            proStr += "id=" + id;
            $.ajax({
                url: delUrl,
                type: "post",
                dataType: "text",
                data: proStr,
                async: false,
            });
        }
        function detail(id){
            var userStr = 'id='+id;
            $.ajax({
                url: detailUrl,
                type: "post",
                dataType: "text",
                data: userStr,
                async: false,
                success: function (text){
                    if(text == ''){
                        $("#full").show();
                    }else{
                        window.location.href = detailUrl+'&id='+text;
                    }
                },
                error: function(text){
                    alert(text);
                }
            })
        }
    </script>
</head>
<body>
<div class="wrapper">
    <?=$this->render('..\home\header',['column'=>'shop'])?><!--header-->
    <div class="contents">
        <div class="content" >
            <div class="content_top">
                <div class="content_nav"><a href="<?=yii::$app->urlManager->createUrl('fontadmin/personaldata')?>">我的紫薯</a><span>></span><a href="<?=yii::$app->urlManager->createUrl('fontadmin/orderafter')?>">我的订单</a></div>

                <div class="content_line"></div>
            </div>
            <div class="big">
                <div class="aside">
                    <div class="aside_title">我的紫薯</div>
                    <ul>
                        <li><a href="<?=yii::$app->urlManager->createUrl('fontadmin/personaldata')?>">个人资料</a></li>
                        <li><a href="<?=yii::$app->urlManager->createUrl('fontadmin/password')?>">修改密码</a></li>
                        <li><a href="<?=yii::$app->urlManager->createUrl('fontadmin/addressafter')?>">收货地址</a></li>
                        <li><a href="<?=yii::$app->urlManager->createUrl('fontadmin/mymessages')?>">我的留言</a></li>
                        <li><a href="<?=yii::$app->urlManager->createUrl('fontadmin/orderafter')?>" class="now">我的订单</a></li>
                    </ul>
                </div>
                <div class="nav_right">
                    <div class="one">
                        <span>我的订单</span>
                    </div>
                    <div class="two">
                        <div class="pay_box">
                           最近三个月
                        </div>
                        <div class="pay_box">
                          全部订单
                        </div>
                    </div>
                    <table class="three">
                        <tr>
                        <td><label><input class="check-all-check" type="checkbox"/>&nbsp;全选</label></td>
                        <td>商品信息</td>
                            <td>收货人</td>
                            <td>订单金额</td>
                            <td>下单时间</td>
                            <td class="ten">订单状态</td>
                            <td>操作</td>
                           </tr>
                        </table>
                                <?if(!is_null($userorder)){?>
                                    <?php foreach ($userorder as $index => $val){?>
                                        <table class="three" id="list">
                               <tr class="four"><td  colspan=8>单号：<a href="javascript:detail('<?=$val->id?>');" class="black"><?=$val->orderCode?></a></td></tr>
                                <tr class="six">
                                   <td class="check_a"><input class="check-one-check" type="checkbox"/></td>
                                   <td  class="picture"><img src="images/home/order/13_1_picture1.png"/></td>
                                    <td ><a href="javascript:detail('<?=$val->id?>');"></a></td>
                                        <td class="line"><?=$val->recipientName?></td>
                                    <td class="line">￥<?=$val->totalCost?></td>
                                        <td class="times"><?=$val->orderdateTime?></td>
                                        <td class="numbers"><?=$val->orderState?></td>
                                        <td><?if($val->orderState == '0'||$val->orderState == '3'){?><a href="javascript:delorder('<?=$val->id?>');void(0);" class="del" val="<?=$val->id?>">删除</a><?}?></td>
                                </tr>
                                        </table>
                                <?}?>
                                <?}?>

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
        </div>
    </div>
    <!--content-->
    <!--下面是footer部分-->
    <?=$this->render('..\home\footer',['color' => '#f7f7f7'])?>
    <!--分享和侧悬浮-->
    <?=$this->render('..\home\share')?>
    <!--右悬浮-->
    <?=$this->render('..\home\sidebox')?>
</div>
</body>
</html>
<form action="<?=yii::$app->urlManager->createUrl('fontadmin/orderafter')?>" method="get" id="pageForm">
    <input type="hidden" id="page" name="page" value="<?=$pages->page?>"/>
    <input type="hidden"  name="r" value="fontadmin/orderafter"/>
    <input type="hidden" id="pre-page" name="pre-page" value="<?=$pages->pageSize?>"/>
</form>