<?php


namespace NovaPoshta\Classes\Router;

/**
 * Class RoutePath
 * @package NovaPoshta\Classes\Router
 */
class RoutePath implements RoutePathInterface
{
    /**
     *
     * @return string
     */
    public function getPath(): string
    {
        $protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http";
        $host = $_SERVER['HTTP_HOST'];
        $uri = $_SERVER['REQUEST_URI'];
        $url = "{$protocol}://{$host}{$uri}";

        return parse_url($url,PHP_URL_PATH);
    }
}
