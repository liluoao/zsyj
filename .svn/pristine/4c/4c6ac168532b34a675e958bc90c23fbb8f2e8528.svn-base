<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%recruitment}}".
 *
 * @property string $id
 * @property string $position
 * @property string $positionname
 * @property string $responsibilities
 * @property string $claim
 * @property string $wage
 * @property string $uploadUrl
 */
class Recruitment extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%recruitment}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id'], 'string', 'max' => 32],
            [['position', 'positionname', 'responsibilities', 'claim', 'wage', 'uploadUrl'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'position' => '职位',
            'positionname' => '职位名称',
            'responsibilities' => '职责',
            'claim' => '要求',
            'wage' => '工资',
            'uploadUrl' => '上传地址',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\RecruitmentQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\RecruitmentQuery(get_called_class());
    }
}
