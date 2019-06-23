<?php

if (!function_exists('dd')) {
    function dd($data) {
        echo '<pre>';
        var_dump($data);
        echo '</pre>';
        die();
    }
}
