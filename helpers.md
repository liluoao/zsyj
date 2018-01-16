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

public function rules() {
    return [
        'tel' => 'required_without_all:mobile,email,address',
        'mobile' => 'required_without_all:tel,email,address',
        'email' => 'required_without_all:tel,mobile',
        'address' => 'required_without_all:tel,mobile',
    ];
}

public function messages() {
    return [
        'tel.required_without_all' => '当手机号码、Email、地址都为空时,电话号码不能为空',
        'mobile.required_without_all' => '当电话号码、Email、地址都为空时,手机号码不能为空',
        'email.required_without_all' => '当电话号码、手机号码都为空时,Email和地址不能同时为空',
        'address.required_without_all' => '当电话号码、手机号码都为空时,Email和地址不能同时为空'
    ];
}

if (!filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL))
{
     echo "E-Mail is not valid";
} else {
     echo "success";
}

if (!filter_has_var(INPUT_GET, "name"))
{
    echo("name is required");
} else {
    echo("success");
}
```
