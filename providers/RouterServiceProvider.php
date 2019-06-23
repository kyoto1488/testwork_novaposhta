<?php
namespace NovaPoshta\Providers;

use League\Container\ServiceProvider\AbstractServiceProvider;
use NovaPoshta\Classes\Router\Route;
use NovaPoshta\Classes\Router\RouteBuilder;
use NovaPoshta\Classes\Router\RoutePath;
use NovaPoshta\Classes\Router\Router;
use NovaPoshta\Classes\Router\Routes;

/**
 * Class RoutesServiceProvider
 * @package NovaPoshta\Providers
 */
class RouterServiceProvider extends AbstractServiceProvider
{
    protected $provides = [
        'router',
        'routes',
        'route-builder',
    ];

    /**
     * Use the register method to register items with the container via the
     * protected $this->container property or the `getContainer` method
     * from the ContainerAwareTrait.
     *
     * @return void
     */
    public function register()
    {
        $this->getContainer()->add('router', new Router(new RoutePath));
        $this->getContainer()->add('routes', new Routes);
        $this->getContainer()->add('route-builder', new RouteBuilder);
    }
}
