<?php

if (!function_exists('db')) {
    /**
     * @return array|mixed|object
     */
    function db() {
        return container()->get('db');
    }
}
