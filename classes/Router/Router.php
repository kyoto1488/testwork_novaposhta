<?php

namespace NovaPoshta\Classes\Router;

/**
 * Class Router
 * @package NovaPoshta\Classes\Router
 */
class Router
{
    private $routes = null;
    private $routePath = null;

    /**
     * Router constructor.
     * @param RoutePathInterface $routePath
     * @param Routes|null $routes
     */
    public function __construct(RoutePathInterface $routePath, Routes $routes = null)
    {
        $this->routes = $routes;
        $this->routePath = $routePath;
    }

    /**
     * @param Routes $routes
     * @return $this
     */
    public function setRoutes(Routes $routes)
    {
        $this->routes = $routes;
        return $this;
    }

    public function run()
    {
        foreach ($this->routes->getIterator() as $route) {
            $pattern = preg_quote($route->getPattern(), '/');
            $regexp = '/^' . $pattern . '$/';

            if (
                preg_match($regexp, $this->routePath->getPath()) &&
                in_array($_SERVER['REQUEST_METHOD'], $route->getMethod())
            ) {
                $route->getCallback()();
                return;
            }
        }
    }
}
