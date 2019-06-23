<?php

if (!function_exists('view')) {
    /**
     * @return array|mixed|object
     */
    function view() {
        return \container()->get('view');
    }
}

if (!function_exists('render')) {
    /**
     * @param string $template
     * @param array $data
     */
    function render(string $template, array $data = []) {
        echo view()->render($template, $data);
    }
}

