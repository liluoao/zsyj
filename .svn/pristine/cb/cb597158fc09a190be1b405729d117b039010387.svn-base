<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%article}}".
 *
 * @property string $id
 * @property string $editorId
 * @property string $title
 * @property string $author
 * @property string $publish_date
 * @property string $clicks
 * @property string $content
 * @property string $attachUrls
 * @property string $articleType
 * @property string $articleState
 * @property string $source
 * @property string $isTop
 * * @property string $attachNames
 */
class Article extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%article}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['publish_date'], 'safe'],
            [['clicks'], 'integer'],
            [['content'], 'string'],
            [['id', 'editorId', 'author', 'articleType', 'articleState', 'isTop'], 'string', 'max' => 32],
            [['title', 'source'], 'string', 'max' => 128],
            [['attachUrls','attachNames'], 'string', 'max' => 1024]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '文章Id，由函数自动生成',
            'editorId' => '编辑人Id',
            'title' => '文章名称',
            'author' => '文章作者',
            'publish_date' => '文章发布日期',
            'clicks' => '文章点击量',
            'content' => '文章内容',
            'attachUrls' => '附件url',
            'articleType' => '文章类型',
            'articleState' => '文章状态',
            'source' => '文章来源',
            'isTop' => '是否置顶',
            'attachNames' => '附件名',
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\activeQuery\ArticleQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\activeQuery\ArticleQuery(get_called_class());
    }
}
