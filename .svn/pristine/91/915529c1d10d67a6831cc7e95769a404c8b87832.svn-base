<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%materialinventory}}".
 *
 * @property string $id
 * @property string $materialId
 * @property string $materialName
 * @property double $inventory
 */
class Inventory extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%materialinventory}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['inventory'], 'number'],
            [['id', 'materialId', 'materialName','materialUnit'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '原材料库存表id',
            'materialId' => '原材料id',
            'materialName' => '原材料名称',
            'inventory' => '原材料库存',
            'materialUnit' => '原材料单位',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\InventoryQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\InventoryQuery(get_called_class());
    }
}
