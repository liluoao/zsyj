<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%websiteuser}}".
 *
 * @property string $id
 * @property string $departmentId
 * @property string $roleId
 * @property string $username
 * @property string $password
 * @property string $truename
 * @property string $mobilephone
 * @property string $tellphone
 * @property string $areaAddress
 * @property string $detailAddress
 * @property string $postcode
 * @property string $qq
 * @property string $email
 * @property string $userState
 * @property string $userType
 * @property string $registerTime
 * @property string $point
 * @property string $member
 * @property string $sex
 */
class User extends \yii\db\ActiveRecord
{
    public $verifyCode;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%websiteuser}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['registerTime'], 'safe'],
            [['point'], 'integer'],
            [['id', 'departmentId', 'roleId', 'truename', 'areaAddress', 'email', 'userState', 'userType', 'member', 'sex'], 'string', 'max' => 32],
            [['username', 'password'], 'string', 'max' => 64],
            [['mobilephone', 'tellphone', 'qq'], 'string', 'max' => 16],
            [['detailAddress'], 'string', 'max' => 512],
            [['postcode'], 'string', 'max' => 6],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '用户ID采用唯一函数生产',
            'departmentId' => '部门id',
            'roleId' => '角色Id',
            'username' => '用户名',
            'password' => '用户密码',
            'truename' => '用户真实名称',
            'mobilephone' => '用户手机号码',
            'tellphone' => '用户座机电话',
            'areaAddress' => '用户地址，区域地址',
            'detailAddress' => '用户详细地址',
            'postcode' => '用户邮政编码',
            'qq' => 'Qq',
            'email' => '用户邮箱',
            'userState' => '用户的状态，是否可用',
            'userType' => '企业用户、一般用户、管理员',
            'registerTime' => '注册时间',
            'point' => '积分',
            'member' => '会员等级，从字典中读取',
            'sex' => '用户性别，从字典读取',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\WebsiteuserQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\WebsiteuserQuery(get_called_class());
    }
}
