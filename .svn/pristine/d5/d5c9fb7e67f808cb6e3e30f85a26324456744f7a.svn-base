<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%message}}".
 *
 * @property string $id
 * @property string $userId
 * @property string $username
 * @property string $content
 * @property string $createDateTime
 */
class Message extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%message}}';
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
            [['id', 'userId'], 'string', 'max' => 32],
            [['username'], 'string', 'max' => 64]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '主贴id',
            'userId' => '留言人Id',
            'username' => '发帖人用户名',
            'content' => '发帖内容',
            'createDateTime' => '发帖时间',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\MessageQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\MessageQuery(get_called_class());
    }
}
