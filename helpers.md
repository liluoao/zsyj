```php
if (!function_exists('getMoneyFormat')) {
    /**
     * 转换金额格式
     *
     * @param float $money 金额
     * @param int $length 保留位数
     *
     * @return string|bool 转换结果
     */
    function getMoneyFormat($money, $length = 2) {
        return sprintf("%.{$length}f", $money);
    }
}

"autoload": {
    //...
    "psr-4": {
        //...
    },
    "files": [
        "app/helpers.php"
    ]
},

 /*
|--------------------------------------------------------------------------
| Application Locale Configuration
|--------------------------------------------------------------------------
|
| The application locale determines the default locale that will be used
| by the translation service provider. You are free to set this value
| to any of the locales which will be supported by the application.
|
*/

'locale' => 'zh-CN',

'fallback_locale' => 'en',
```
