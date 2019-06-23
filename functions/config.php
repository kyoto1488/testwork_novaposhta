<?php

if (!function_exists('config')) {
    /**
     * @param string $file
     * @param string|null $key
     * @param string $default
     * @return mixed|string
     * @throws Exception
     */
    function config(string $file, string $key = null, string $default = '') {
        $configsDirPath = __DIR__ . '/../config';
        $configFilePath = "$configsDirPath/$file.php";

        if (file_exists($configFilePath) && is_file($configFilePath)) {
            $config = require($configFilePath);

            if (is_null($key)) {
                return $config;
            }
            if (array_key_exists($key, $config)) {
                return $config[$key];
            }
            return $default;
        }

        throw new Exception("File config is not exists");
    }
}
