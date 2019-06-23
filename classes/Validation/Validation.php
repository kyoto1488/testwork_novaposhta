<?php

namespace NovaPoshta\Classes\Validation;

/**
 * Class Validation
 * @package NovaPoshta\Classes\Validation
 */
class Validation
{
    /**
     * @return Validator
     */
    public static function factory()
    {
        return new Validator();
    }
}
