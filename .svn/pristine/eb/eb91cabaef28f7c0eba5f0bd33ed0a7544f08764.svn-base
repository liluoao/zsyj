<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%submessage}}".
 *
 * @property string $id
 * @property string $userId
 * @property string $username
 * @property string $content
 * @property string $createDateTime
 * @property string $parentId
 */
class Submessage extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%submessage}}';
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
            [['id', 'userId', 'parentId'], 'string', 'max' => 32],
            [['username'], 'string', 'max' => 64]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '留言回复表id',
            'userId' => '回复者id',
            'username' => '回复者用户名',
            'content' => '回复内容',
            'createDateTime' => '回复时间',
            'parentId' => '自留言上级留言id',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\SubmessageQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\SubmessageQuery(get_called_class());
    }
}
