<?php

namespace NovaPoshta\Providers;


use League\Container\ServiceProvider\AbstractServiceProvider;
use NovaPoshta\Classes\Validation\Validation;

/**
 * Class ValidationServiceProvider
 * @package NovaPoshta\Providers
 */
class ValidationServiceProvider extends AbstractServiceProvider
{
    protected $provides = [
        'validation',
        'validator'
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
        $this->getContainer()->add('validation', Validation::class);
        $this->getContainer()->add('validator', Validation::factory());
    }
}
