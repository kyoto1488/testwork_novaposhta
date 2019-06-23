<?php

namespace NovaPoshta\Classes\Router;

use NovaPoshta\Interfaces\Builder;

/**
 * Class RouteBuilder
 * @package NovaPoshta\Classes\Router
 */
class RouteBuilder implements Builder
{
    private $method = null;
    private $pattern = null;
    private $callback = null;

    public function setMethod($method)
    {
        $this->method = $method;
        return $this;
    }

    public function setPattern($pattern)
    {
        $this->pattern = $pattern;
        return $this;
    }

    public function setCallback($callback)
    {
        $this->callback = $callback;
        return $this;
    }

    public function map($methods, $pattern, $callback)
    {
        $this->method = $methods;
        $this->pattern = $pattern;
        $this->callback = $callback;
        return $this->build();
    }
    /**
     * @param $pattern
     * @param $callback
     * @return Route
     */
    public function get($pattern, $callback) {
        $this->pattern = $pattern;
        $this->callback = $callback;
        $this->method = 'GET';
        return $this->build();
    }

    /**
     * @param $pattern
     * @param $callback
     * @return Route
     */
    public function post($pattern, $callback) {
        $this->pattern = $pattern;
        $this->callback = $callback;
        $this->method = 'POST';
        return $this->build();
    }

    public function build(): Route
    {
        $route = new Route(
            $this->method,
            $this->pattern,
            $this->callback
        );
        $this->method = null;
        $this->pattern = null;
        $this->callback = null;
        return $route;
    }
}
