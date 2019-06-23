<?php

namespace NovaPoshta\Classes\Router;


/**
 * Class Route
 * @package NovaPoshta\Classes\Router
 */
class Route
{
    private $method = null;
    private $pattern = null;
    private $callback = null;

    /**
     * Route constructor.
     * @param $method
     * @param string $pattern
     * @param callable $callback
     */
    public function __construct($method, string $pattern, callable $callback)
    {
        $this->setMethod($method);
        $this->setPattern($pattern);
        $this->setCallback($callback);
    }

    public function setMethod($method)
    {
        $this->method = is_array($method) ? $method : [$method];
    }

    public function setCallback(callable $callback)
    {
        $this->callback = $callback;
    }

    public function setPattern(string $pattern)
    {
        $this->pattern = $pattern;
    }

    public function getCallback()
    {
        return $this->callback;
    }

    public function getPattern()
    {
        return $this->pattern;
    }

    public function getMethod()
    {
        return $this->method;
    }
}
