<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%productorder}}".
 *
 * @property string $id
 * @property string $orderId
 * @property string $productId
 * @property string $productName
 * @property integer $productNum
 * @property double $productPrice
 * @property double $productDiscount
 */
class Productorder extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%productorder}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['productNum'], 'integer'],
            [['productPrice', 'productDiscount'], 'number'],
            [['id', 'orderId', 'productId'], 'string', 'max' => 32],
            [['productName'], 'string', 'max' => 64]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '详细订单Id，由函数生成',
            'orderId' => '订单编号',
            'productId' => '产品Id，关联产品表',
            'productName' => '产品名称',
            'productNum' => '购买产品的数量',
            'productPrice' => '产品的价格',
            'productDiscount' => '产品折扣',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\ProductorderQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\ProductorderQuery(get_called_class());
    }
}
