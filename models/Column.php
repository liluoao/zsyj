<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%websitcolumn}}".
 *
 * @property string $columnId
 * @property string $title
 * @property string $discri
 * @property string $clicks
 * @property string $url
 * @property integer $ordeyBy
 */
class Column extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%websitcolumn}}';
    }

    /**
     * @inheritdoc
     */
    /*public function rules()
    {
        return [
            [['columnId'], 'required'],
            [['ordeyBy'], 'integer'],
            [['columnId', 'title'], 'string', 'max' => 16],
            [['discri'], 'string', 'max' => 512],
            [['url'], 'string', 'max' => 64]
        ];
    }*/

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'columnId' => '栏目标识，在增加栏目的时候填写，并验证唯一性，16个字符',
            'title' => '栏目名称',
            'discri' => '栏目描述',
            'clicks' => '点击量统计',
            'url' => '栏目url',
            'ordeyBy' => '排序',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\ColumnQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\ColumnQuery(get_called_class());
    }
}
