
```php
public function rules() {
    
    return [
        //...
        'password' => 'bail|required|string|between:8,20|confirmed|different:old_password',
        'password_confirmation' => 'required|string|between:8,20',
        //...
    ];

}

/**
 * 获取自定义的验证规则的错误消息。
 *
 * @return array
 */
public function messages() {
    return [
        'password.confirmed' => '两次输入的密码不一致！',
        'password.different' => '新密码与旧密码不能一致！'
    ];
}

/**
 * 判断用户是否有权限进行此请求。
 *
 * @return bool
 */
public function authorize()
{
    $roleActionIds = $this->session()->get('roleInfo')['action_id'];
    $hasAction = true;
    if (is_array($actionId)) {
        foreach ($actionId as $val) {
            $hasAction = isset($roleActionIds[$val]);
        }
    } else {
        $hasAction = isset($roleActionIds[$actionId]);
    }

    return $hasAction;
}

/**
 * Get the validation rules that apply to the request.
 *
 * @return array
 */
public function rules() {
    return [
        'name' => 'required|string|unique:' . RMLX_BMS_DATABASE_NAME . '.ps_business_class',
        'rank' => 'required|integer|min:0',//排序
        'logo' => 'required|string',
        'state' => 'required|integer|in:1,2'//是否显示
    ];
}

/**
 * Get the validation rules that apply to the request.
 *
 * @return array
 */
public function rules() {
    $id = $this->get('id');

    return [
        'id' => 'required|integer',
        'mobile' => [
            'required',
            'string',
            'regex:/^1[3-8]{1}[0-9]{9}$/',
            Rule::unique(RMLX_BMS_DATABASE_NAME . '.ps_adviser', 'mobile')->ignore($id, 'id')
        ],
        'provider_id' => 'required|integer|min:1',
        'rank' => 'required|integer|min:0',
        'business_id_array' => 'required|array',
    ];
}

/**
 * Get the validation rules that apply to the request.
 *
 * @return array
 */
public function rules() {
    return [
        //...
        'contact_mobile' => [
            'required',
            new CheckPhoneNumber()
        ],
        'tel' => [
            new CheckPhoneNumber()
        ],
        //...
    ];
}

<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class CheckPassword implements Rule {

    protected $adminData = null;

    /**
     * Create a new rule instance.
     *
     * @param $adminData
     */
    public function __construct($adminData) {
        $this->adminData = $adminData;
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string $attribute
     * @param  mixed $value
     * @return bool
     */
    public function passes($attribute, $value) {
        if (!$this->adminData) {
            return false;
        }

        return password_verify($value, $this->adminData->admin_pwd);
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message() {
        return '密码错误';
    }
}

````
