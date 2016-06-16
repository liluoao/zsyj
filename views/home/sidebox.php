<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/4/2
 * Time: 13:49
 */
?>
<link rel="stylesheet" href="css/home/common/sidebox.css" />
<script src="js/home/common/sidebox.js"></script>
<script>
    var shoppingcartUrl = "<?=yii::$app->urlManager->createUrl('fontadmin/shoppingcart')?>";
</script>
<div class="right">
    <ul>
        <li><a href="#" ><div class="sidebox1"></div></a></li>
        <li><a href="javascript:openshopcart();void(0);" href="#" ><div class="sidebox2"></div></a></li>
    </ul>
</div>
