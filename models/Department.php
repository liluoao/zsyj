<?php
    /**
     * Created by PhpStorm.
     * User: liluoao
     * Date: 2016/3/21
     */
namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%department}}".
 *
 * @property string $id
 * @property string $departmentName
 * @property string $departmentDiscri
 * @property string $parentId
 * @property string $departmentLevel
 */
class Department extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%department}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id', 'departmentName', 'parentId'], 'string', 'max' => 32],
            [['departmentLevel'], 'string', 'max' => 4],
            [['departmentDiscri'], 'string', 'max' => 512]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '部门表Id',
            'departmentName' => '部门名称',
            'departmentDiscri' => '部门描述',
            'departmentLevel' => '部门级别',
            'parentId' => '父级Id',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\DepartmentQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\DepartmentQuery(get_called_class());
    }
}
