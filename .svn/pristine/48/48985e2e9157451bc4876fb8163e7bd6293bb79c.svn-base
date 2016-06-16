<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%inform}}".
 *
 * @property string $id
 * @property string $title
 * @property string $senderId
 * @property string $sender
 * @property string $senderDateTime
 * @property string $content
 * @property integer $click
 * @property string $isTop
 * @property string $attachUrls
 * @property string $informType
 * @property string $attachNames
 */
class Inform extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%inform}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['senderDateTime'], 'safe'],
            [['content'], 'string'],
            [['click'], 'integer'],
            [['id', 'senderId', 'sender', 'isTop', 'informType'], 'string', 'max' => 32],
            [['title'], 'string', 'max' => 128],
            [['attachUrls', 'attachNames'], 'string', 'max' => 1024]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '企业内容通知表id',
            'title' => '通知标题',
            'senderId' => '发送者',
            'sender' => '发送者真实姓名',
            'senderDateTime' => '信息推送时间',
            'content' => '消息内容',
            'click' => '消息点击量',
            'isTop' => '消息状态，从字典中读取',
            'attachUrls' => '附件链接',
            'informType' => '消息类型',
            'attachNames' => 'Attach Names',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\InformQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\InformQuery(get_called_class());
    }
}
