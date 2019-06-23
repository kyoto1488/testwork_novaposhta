<?php

if (!function_exists('validator')) {
    /**
     * @return mixed
     */
    function validator()
    {
        return container()->get('validator');
    }
}
