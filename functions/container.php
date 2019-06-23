<?php

use NovaPoshta\Classes\Container;

if (!function_exists('container')) {
    /**
     * @return \League\Container\Container
     */
    function container() {
        return Container::getInstance();
    }
}
