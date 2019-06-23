<?php
namespace NovaPoshta\Classes;

use NovaPoshta\Interfaces\Singleton;
use \League\Container\Container as DIContainer;

/**
 * Class Container
 * @package NovaPoshta\Classes
 */
class Container implements Singleton
{
    private static $instance = null;
    private static $services = [
        'NovaPoshta\Providers\ViewServiceProvider',
        'NovaPoshta\Providers\RouterServiceProvider',
        'NovaPoshta\Providers\DatabaseServiceProvider',
        'NovaPoshta\Providers\ValidationServiceProvider',
        'NovaPoshta\Providers\NovaPoshtaServiceProvider',
    ];

    /**
     * @return DIContainer
     */
    public static function getInstance():DIContainer
    {
        if (is_null(self::$instance)) {
            $container = new DIContainer;

            foreach (self::$services as $service) {
                $container->addServiceProvider($service);
            }
            self::$instance = $container;
        }
        return self::$instance;
    }
}
