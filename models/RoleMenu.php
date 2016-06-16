<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%role_menu}}".
 *
 * @property string $id
 * @property string $roleId
 * @property string $menuId
 */
class RoleMenu extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%role_menu}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id', 'roleId', 'menuId'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'roleId' => '角色id 关联角色表',
            'menuId' => '菜单Id 关联菜单表',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\RoleMenuQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\RoleMenuQuery(get_called_class());
    }
}
