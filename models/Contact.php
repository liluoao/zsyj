<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%contact}}".
 *
 * @property string $id
 * @property string $username
 * @property string $mobilephone
 * @property string $content
 * @property string $createDateTime
 */
class Contact extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%contact}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['content'], 'string'],
            [['createDateTime'], 'safe'],
            [['id', 'username'], 'string', 'max' => 32],
            [['mobilephone'], 'string', 'max' => 16]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '联系id  自动生成',
            'username' => 'Username',
            'mobilephone' => '电话',
            'content' => '留言内容',
            'createDateTime' => '留言时间',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\ContactQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\ContactQuery(get_called_class());
    }
}
