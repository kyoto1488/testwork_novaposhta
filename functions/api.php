<?php

if (!function_exists('novaposhta_api')) {
    /**
     * @return array|mixed|object
     */
    function novaposhta_api() {
        return container()->get('novaposhta.api');
    }
}
