<?php

namespace app\models\activeQuery;

/**
 * This is the ActiveQuery class for [[\app\models\Shopcart]].
 *
 * @see \app\models\Shopcart
 */
class ShopcartQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return \app\models\Shopcart[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return \app\models\Shopcart|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}