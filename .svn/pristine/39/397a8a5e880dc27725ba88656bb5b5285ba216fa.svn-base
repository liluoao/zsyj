<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%role}}".
 *
 * @property string $id
 * @property string $name
 * @property string $state
 */
class Role extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%role}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id', 'name', 'state'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'role表Id',
            'name' => '角色名称',
            'state' => '角色状态，当角色状态为禁用时，相应的用户权限也没有了',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\RoleQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\RoleQuery(get_called_class());
    }
}
