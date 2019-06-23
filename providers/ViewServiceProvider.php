<?php

namespace NovaPoshta\Providers;

use duncan3dc\Laravel\BladeInstance as Blade;
use League\Container\ServiceProvider\AbstractServiceProvider;

/**
 * Class ViewServiceProvider
 * @package providers
 */
class ViewServiceProvider extends AbstractServiceProvider
{
    protected $cacheDir = null;
    protected $viewsDir = null;
    protected $provides = [
        'view'
    ];

    /**
     * ViewServiceProvider constructor.
     * @throws \Exception
     */
    public function __construct()
    {
        $this->cacheDir = config('view', 'cache_dir');
        $this->viewsDir = config('view', 'views_dir');
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
        $this->getContainer()->add('view', new Blade($this->viewsDir, $this->cacheDir));
    }
}
