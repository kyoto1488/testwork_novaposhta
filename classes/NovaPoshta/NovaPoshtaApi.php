<?php

namespace NovaPoshta\Classes\NovaPoshta;

/**
 * Class NovaPoshtaApi
 * @package NovaPoshta\Classes\NovaPoshta
 */
class NovaPoshtaApi
{
    private $apiKey = null;
    private $format = null;
    private $url = null;

    /**
     * NovaPoshtaApi constructor.
     * @param string $apiKey
     * @param string $url
     * @param string $format
     */
    public function __construct(string $apiKey, string $url, string $format = 'json')
    {
        $this->apiKey = $apiKey;
        $this->format = $format;
        $this->url = $url;
    }

    public function getWarehouses($city)
    {
        $data = [
            'apiKey' => $this->apiKey,
            'modelName' => 'Address',
            'calledMethod' => 'getWarehouses',
            'methodProperties' => [
                'Limit' => 400,
                'Language' => 'ru',
                'TypeOfWarehouseRef' => '841339c7-591a-42e2-8233-7a0a00f0ed6f',
                'CityName' => $city
            ],
        ];
        $handle = $this->getCurlHandle();
        curl_setopt($handle, CURLOPT_POSTFIELDS, json_encode($data));
        $response = curl_exec($handle);
        curl_close($handle);
        return $response;
    }

    /**
     * @return false|resource
     */
    private function getCurlHandle()
    {
        $handle = curl_init();
        curl_setopt($handle, CURLOPT_URL, $this->getUrl());
        curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($handle, CURLOPT_POST, true);
        return $handle;
    }

    /**
     * @return string
     */
    private function getUrl()
    {
        return "{$this->url}{$this->format}/";
    }
}
