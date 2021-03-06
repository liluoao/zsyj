<?php
/**
 * Created by PhpStorm.
 * User: liuyao
 * Date: 2016/4/1
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
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
        <title>紫薯原浆_商城</title>

        <link rel="stylesheet" type="text/css" href="css/home/base.css">
        <link rel="stylesheet" type="text/css" href="css/home/zsyj_shop.css">
        <link href="css/home/right_suspend.css" rel="stylesheet" />

        <script src="js/home/jquery-1.8.3.min.js"></script>

        <script>
            var tailafterUrl = "<?=yii::$app->urlManager->createUrl('home/tailafter')?>";
            var addshopcartUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/addshopcart')?>";
        </script>
        <script src="js/home/shop.js"></script>
    </head>
    <!--body-->
    <body>
    <div class="wraper">
        <?=$this->render('login')?>
        <?=$this->render('header',['column'=>'shop'])?>
        <div class="banner">
            <div id="outer">
                <ul id="inner">
                    <li><img src="images/home/images_shiyan/heard1.jpg" width="auto" height="400" alt=" "></li>
                    <li><img src="images/home/images_shiyan/heard2.jpg" width="auto" height="400" alt=" "></li>
                    <li><img src="images/home/images_shiyan/heard3.jpg" width="auto" height="400" alt=" "></li>
                </ul>
            </div>
        </div>
        <div class="content">
            <div class="big">
                <div class="all_commodity"><a>全部商品</a></div>
                <div class="all_commodity_line"></div>
                <?if(!is_null($products)){?>
                    <?php foreach ($products as $index => $val){?>
                        <div class="commodity_first">
                            <div class="commodity_first_small">
                                <div class="commodity_first_small_img">
                                    <?
                                    $imgs = $val->thumbnailUrl;
                                    $imgs_array = explode(';',$imgs);
                                    for ($x=0; $x<4; $x++){

                                    ?>
                                        <li class="img_size1"><img src="<?=$imgs_array[$x]?>"></li>
                                    <?
                                    }
                                    ?>
                                </div>
                                <div class="commodity_first_small_middle">
                                    <p><?=$val->productTitle?></p>
                                    <ul class="Promotion">
                                        <li class="Promotion_price">促销价</li>
                                        <li class="price"><?=$val->productPrice*$val->productDiscount?></li>
                                    </ul>
                                    <ul class="Promotion_middle">
                                        <li class="Promotion_price">市场价</li>
                                        <li class="Present_price"><s><?=$val->productPrice?></s></li>
                                    </ul>
                                    <ul class="Promotion_last">
                                        <li class="Specifications">规格</li>
                                        <li class="bottle"><?=$val->productSize?></li>
                                    </ul>
                                    <ul class="Promotion_last">
                                        <li class="Specifications">类别</li>
                                        <li class="bottle"><?=$val->productType?></li>
                                    </ul>
                                    <ul class="buy_buycar">
                                        <a href="javascript:openedit('<?=$val->id?>');void(0);"><li class="buy_rightnow"></li></a>
                                        <a href="javascript:addshopcart('<?=$val->id?>');"><li class="buy_car"></li></a>
                                    </ul>
                                </div>
                                <div id="flyItem" class="fly_item"><img src="images/home/fly/shop00.png" width="30" height="45"></div>
                                <div class="commodity_first_small_right">
                                    <img src="<?=$val->picUrl?>">
                                </div>
                            </div>
                        </div>
                    <?}?>
                <?}?>
                <!--commodity_first-->
            </div>
        </div>
        <?=$this->render('footer',['color'=>'#eeeeee;'])?>
    </div><!--wraper-->
    <!--分享和侧悬浮-->
    <?=$this->render('share')?>
    <!--右悬浮-->
    <?=$this->render('sidebox')?>
    <script src="js/home/parabola.js"></script>
    <script src="js/home/firfly.js"></script>
    </body>
    </html>
<?php $this->endPage() ?>