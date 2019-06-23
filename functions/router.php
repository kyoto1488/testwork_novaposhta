<?php

if (!function_exists('route')) {
    /**
     * @return array|mixed|object
     */
    function route() {
        return container()->get('route-builder');
    }
}

if (!function_exists('routes')) {
    /**
     * @return array|mixed|object
     */
    function routes() {
        return container()->get('routes');
    }
}

if (!function_exists('router')) {
    /**
     * @return array|mixed|object
     */
    function router() {
        return container()->get('router');
    }
}

if (!function_exists('redirect')) {
    function redirect($uri) {
        header('Location: ' . $uri);
        die();
    }
}
