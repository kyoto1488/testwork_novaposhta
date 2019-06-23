<?php

namespace NovaPoshta\Classes\Router;


use Traversable;

/**
 * Class Routes
 * @package NovaPoshta\Classes\Router
 */
class Routes implements \Countable, \IteratorAggregate
{
    private $routes = [];

    /**
     * @param Route $route
     */
    public function add(Route $route)
    {
        $this->routes[] = $route;
    }

    /**
     * Count elements of an object
     * @link https://php.net/manual/en/countable.count.php
     * @return int The custom count as an integer.
     * </p>
     * <p>
     * The return value is cast to an integer.
     * @since 5.1.0
     */
    public function count()
    {
        return count($this->routes);
    }

    /**
     * Retrieve an external iterator
     * @link https://php.net/manual/en/iteratoraggregate.getiterator.php
     * @return Traversable An instance of an object implementing <b>Iterator</b> or
     * <b>Traversable</b>
     * @since 5.0.0
     */
    public function getIterator()
    {
        return new \ArrayIterator($this->routes);
    }
}
