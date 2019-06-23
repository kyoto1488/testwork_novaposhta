<?php


namespace NovaPoshta\Classes\DB;


interface DriverStrategy
{
    public function getDatabase();
}
