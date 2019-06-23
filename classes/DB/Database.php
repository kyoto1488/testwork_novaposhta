<?php


namespace NovaPoshta\Classes\DB;

/**
 * Class Database
 * @package NovaPoshta\Classes\DB
 */
class Database
{
    private $driver;

    public function __construct(string $driver)
    {
        $this->driver = $driver;
    }

    /**
     * @return string
     */
    public function getClass()
    {
        switch ($this->driver) {
            case 'mysql':
                return MysqlDriver::class;
            default:
                throw new \Error("Not supported driver {$this->driver}");
        }
    }
}
