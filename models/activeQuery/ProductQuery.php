<?php

namespace app\models\activeQuery;

/**
 * This is the ActiveQuery class for [[\app\models\Product]].
 *
 * @see \app\models\Product
 */
class ProductQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return \app\models\Product[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return \app\models\Product|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}