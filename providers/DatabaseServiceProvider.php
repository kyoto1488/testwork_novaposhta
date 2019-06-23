<?php

namespace NovaPoshta\Providers;


use League\Container\ServiceProvider\AbstractServiceProvider;
use NovaPoshta\Classes\DB\Database;

/**
 * Class DatabaseServiceProvider
 * @package NovaPoshta\Providers
 */
class DatabaseServiceProvider extends AbstractServiceProvider
{
    private $driver = null;
    protected $provides = [
        'db'
    ];

    /**
     * DatabaseServiceProvider constructor.
     * @throws \Exception
     */
    public function __construct()
    {
        $this->driver = config('database', 'driver');
    }

    /**
     * Use the register method to register items with the container via the
     * protected $this->container property or the `getContainer` method
     * from the ContainerAwareTrait.
     *
     * @return void
     */
    public function register()
    {
        $database = new Database($this->driver);
        $strategyClass = $database->getClass();
        $driverDb = new $strategyClass(config('database', $this->driver));

        $this->getContainer()->add('db', $driverDb->getDatabase());
    }
}
