<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%materialcost}}".
 *
 * @property string $id
 * @property string $materialId
 * @property string $materialName
 * @property double $costNum
 * @property string $materialUnit
 */
class Materialcost extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%materialcost}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['costNum'], 'number'],
            [['id', 'materialId', 'materialName', 'materialUnit'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '原材料消耗表id',
            'materialId' => '原材料id',
            'materialName' => '原材料名称',
            'costNum' => '原材料消耗量',
            'materialUnit' => '原材料单位，从数据字典中读取',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\MaterialcostQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\MaterialcostQuery(get_called_class());
    }
}
