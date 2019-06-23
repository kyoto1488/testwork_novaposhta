<?php

namespace NovaPoshta\Classes\Validation;

/**
 * Class Validator
 * @package NovaPoshta\Classes\Validation
 */
class Validator
{
    /**
     * @param array $requestParams
     * @param array $rules
     * @return bool
     */
    public function passes(array $requestParams, array $rules):bool
    {
        foreach ($rules as $key => $rule) {
            $split = explode('|', $rule);

            foreach ($split as $arg) {
                $matches = [];
                if ($arg === 'required') {
                    if (!isset($requestParams[$key]))
                        return false;
                } else if ($arg === 'numeric') {
                    if (!is_numeric($requestParams[$key])) {
                        return false;
                    }
                } else if ($arg === 'string') {
                    if (!is_string($requestParams[$key])) {
                        return false;
                    }
                } else if (preg_match('/^max:([0-9]+)$/', $arg, $matches)) {
                    if (strlen($requestParams[$key]) >= $matches[1]) {
                        return false;
                    }
                } else if (preg_match('/^min:([0-9]+)$/', $arg, $matches)) {
                    if (strlen($requestParams[$key]) <= $matches[1]) {
                        return false;
                    }
                } else if ($arg === 'array:numeric') {
                    $arrayNumeric = explode(',', $requestParams[$key]);

                    foreach ($arrayNumeric as $numeric) {
                        if (!is_numeric($numeric)) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }
}
