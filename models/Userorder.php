<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%userorder}}".
 *
 * @property string $id
 * @property string $userId
 * @property string $chargerId
 * @property string $recipientName
 * @property string $mobilephone
 * @property string $areaAddress
 * @property string $detailAddress
 * @property string $postcode
 * @property double $totalCost
 * @property string $orderCode
 * @property string $orderState
 * @property string $orderType
 * @property string $orderdateTime
 * @property string $principal
 */
class Userorder extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%userorder}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['totalCost'], 'number'],
            [['orderdateTime'], 'safe'],
            [['id', 'userId', 'chargerId', 'areaAddress', 'orderCode', 'orderState', 'orderType', 'principal'], 'string', 'max' => 32],
            [['recipientName'], 'string', 'max' => 64],
            [['mobilephone'], 'string', 'max' => 16],
            [['detailAddress'], 'string', 'max' => 512],
            [['postcode'], 'string', 'max' => 6]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '订单ID',
            'userId' => '外键，关联用户表id',
            'chargerId' => '订单负责人的id',
            'recipientName' => '收件人姓名',
            'mobilephone' => '收件人手机号码',
            'areaAddress' => '收件区域地址',
            'detailAddress' => '详细地址',
            'postcode' => '邮政编码',
            'totalCost' => '订单总金额',
            'orderCode' => '订单号',
            'orderState' => '订单状态',
            'orderType' => '订单类别,企业;个人',
            'orderdateTime' => '下单时间',
            'principal' => '负责人',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\UserorderQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\UserorderQuery(get_called_class());
    }
}
