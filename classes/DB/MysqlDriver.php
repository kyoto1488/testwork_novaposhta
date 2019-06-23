<?php

namespace NovaPoshta\Classes\DB;

/**
 * Class MysqlDriver
 * @package NovaPoshta\Classes\DB
 */
class MysqlDriver implements DriverStrategy
{
    private $config;

    /**
     * MysqlDriver constructor.
     * @param array $config
     */
    public function __construct(array $config) {
        $this->config = $config;
    }

    /**
     * @return \PDO
     */
    public function getDatabase()
    {
        $dsn = "mysql:host={$this->config['host']};dbname={$this->config['db']};charset={$this->config['charset']}";
        $options = [
            \PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION,
            \PDO::ATTR_ORACLE_NULLS => \PDO::NULL_EMPTY_STRING,
            \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_ASSOC,
            \PDO::ATTR_EMULATE_PREPARES   => false,
        ];

        return new \PDO($dsn, $this->config['user'], $this->config['password'], $options);
    }
}
