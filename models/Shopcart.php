<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%shopcart}}".
 *
 * @property string $userId
 * @property string $productId
 * @property string $productName
 * @property integer $productNum
 * @property double $productPrice
 * @property double $productDiscount
 */
class Shopcart extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%shopcart}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['datetime'], 'safe'],
            [['productNum'], 'integer'],
            [['productPrice', 'productDiscount'], 'number'],
            [['userId', 'productId'], 'string', 'max' => 32],
            [['productName'], 'string', 'max' => 64]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '函数生成',
            'userId' => '用户Id，关联用户表',
            'productId' => '产品Id',
            'productName' => '产品名称',
            'productNum' => '产品数量',
            'productPrice' => '产品单价',
            'productDiscount' => '产品折扣',
            'datetime' => '加入时间',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\ShopcartQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\ShopcartQuery(get_called_class());
    }
}
