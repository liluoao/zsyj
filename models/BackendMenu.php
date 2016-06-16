<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%backendMenu}}".
 *
 * @property string $id
 * @property string $menuName
 * @property string $menuUrl
 * @property string $state
 * @property integer $olderBy
 * @property string $uplevelMenu
 * @property string $menuLevel
 */
class BackendMenu extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%backendMenu}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['orderBy'], 'integer'],
            [['id', 'state', 'uplevelMenu'], 'string', 'max' => 32],
            [['menuName'], 'string', 'max' => 16],
            [['menuUrl'], 'string', 'max' => 64],
            [['menuLevel'], 'string', 'max' => 4]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '菜单表ID',
            'menuName' => '菜单名称',
            'menuUrl' => 'Menu Url',
            'state' => 'State',
            'orderBy' => '菜单编码001000后面三个零表示一级菜单001001表示该级菜单下的二级 菜单',
            'uplevelMenu' => 'Uplevel Menu',
            'menuLevel' => 'Menu Level',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\BackendMenuQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\BackendMenuQuery(get_called_class());
    }
}
