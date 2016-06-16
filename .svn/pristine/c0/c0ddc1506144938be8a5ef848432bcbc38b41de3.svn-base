<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%dictitem}}".
 *
 * @property string $id
 * @property string $dictCode
 * @property string $dictItemCode
 * @property string $dictItemName
 * @property integer $orderBy
 * @property string $state
 */
class Dictitem extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%dictitem}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['orderBy'], 'integer'],
            [['id', 'dictCode', 'dictItemCode', 'dictItemName', 'state'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'dictCode' => '外键，关联dict表ID',
            'dictItemCode' => 'Dict Item Code',
            'dictItemName' => 'Dict Item Name',
            'orderBy' => 'Order By',
            'state' => 'State',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\DictitemQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\DictitemQuery(get_called_class());
    }
}
