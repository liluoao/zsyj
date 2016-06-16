<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%material}}".
 *
 * @property string $id
 * @property string $materialname
 * @property double $materialprice
 * @property string $materialdiscri
 * @property string $materialunit
 * @property double $materialnum
 * @property string $materialtype
 * @property string $purchasedatetime
 */
class Material extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%material}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['materialprice', 'materialnum'], 'number'],
            [['purchasedatetime'], 'safe'],
            [['id', 'materialname', 'materialunit', 'materialtype'], 'string', 'max' => 32],
            [['materialdiscri'], 'string', 'max' => 512]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '原材料采购表id',
            'materialname' => '原材料名称，从数据字典中读取',
            'materialprice' => '原材料采购价格',
            'materialdiscri' => '原材料描述',
            'materialunit' => '原材料单位，从数据字典中读取',
            'materialnum' => '原材料数量',
            'materialtype' => '原材料种类，从数据字典中读取',
            'purchasedatetime' => '原材料采购时间',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\MaterialQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\MaterialQuery(get_called_class());
    }
}
