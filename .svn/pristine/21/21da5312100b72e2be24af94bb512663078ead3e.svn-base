<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%dict}}".
 *
 * @property string $dictCode
 * @property string $dictName
 * @property string $state
 * @property string $intro
 */
class Dict extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%dict}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['dictCode'], 'required'],
            [['dictCode', 'dictName', 'state'], 'string', 'max' => 32],
            [['intro'], 'string', 'max' => 64]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'dictCode' => '字典标识，ID由系统管理员添加，添加时注意查重，采取英文命名，并注意命名时含其意',
            'dictName' => '字典项中文名称',
            'state' => 'State',
            'intro' => '字典项描述，具体是什么字典，以及编码规则',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\ZsyjDictQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\DictQuery(get_called_class());
    }
}
