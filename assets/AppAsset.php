<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        //核心CSS
        'css/reset.css',
        'css/system.css',
        //<!--TAB样式-->
        'css/tabpanel/core.css',
        'css/tabpanel/TabPanel.css',
        'css/tabpanel/Toolbar.css',
        'css/tabpanel/WindowPanel.css',
        'js/fancybox/jquery.fancybox-1.3.4.css',
    ];
    public $js = [
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
