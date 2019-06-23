<?php

namespace NovaPoshta\Models;

/**
 * Class BasketModel
 * @package NovaPoshta\Models
 */
class BasketModel
{
    /**
     * @param string $name
     * @param string $phone
     * @param string $department
     * @param string $basketSnapshot
     * @return mixed
     */
    public static function save(
        string $name,
        string $phone,
        string $department,
        string $basketSnapshot
    ) {
        $sql = db()->prepare('INSERT INTO orders VALUES(NULL, :name, :phone, :department, :basket_snapshot);');
        $sql->execute([
            ':name' => $name,
            ':phone' => $phone,
            ':department' => $department,
            ':basket_snapshot' => $basketSnapshot
        ]);
    }
}
