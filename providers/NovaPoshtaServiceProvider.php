<?php

namespace NovaPoshta\Providers;

use League\Container\ServiceProvider\AbstractServiceProvider;
use NovaPoshta\Classes\NovaPoshta\NovaPoshtaApi;

/**
 * Class NovaPoshtaServiceProvider
 * @package NovaPoshta\Providers
 */
class NovaPoshtaServiceProvider extends AbstractServiceProvider
{
    protected $provides = [
        'novaposhta.api'
    ];

    /**
     * Use the register method to register items with the container via the
     * protected $this->container property or the `getContainer` method
     * from the ContainerAwareTrait.
     *
     * @throws \Exception
     */
    public function register()
    {
        $config = config('api', 'novaposhta');
        $instanceApi = new NovaPoshtaApi(
            $config['api_key'],
            $config['url'],
            $config['format'] ?? 'json'
        );

        $this->getContainer()->add('novaposhta.api', $instanceApi);
    }
}
