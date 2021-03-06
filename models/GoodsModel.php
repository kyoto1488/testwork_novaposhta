<?php

namespace NovaPoshta\Models;

/**
 * Class GoodsModel
 * @package NovaPoshta\Models
 */
class GoodsModel
{
    /**
     * @return mixed
     */
    public static function fetchAll()
    {
        $sql = 'SELECT * FROM goods;';
        $query = db()->query($sql);
        return $query->fetchAll();
    }

    public static function fetchAllByIds($ids)
    {
        $sql = "SELECT * FROM goods WHERE id IN ($ids)";
        $query = db()->query($sql);
        return $query->fetchAll();
    }
}
