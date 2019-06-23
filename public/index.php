<?php
declare(strict_types=1);

require '../vendor/autoload.php';

if (config('env', 'mode') === 'DEVELOPMENT') {
    error_reporting(E_ALL);
    ini_set('display_errors', 'On');
}

use NovaPoshta\Models\BasketModel;
use NovaPoshta\Models\GoodsModel;

$homeRoute = route()->get('/', function () {
    render('goods/list', [
        'goods' => GoodsModel::fetchAll()
    ]);
});
routes()->add($homeRoute);

$basketRoute = route()->get('/basket', function () {
    render('goods/basket');
});
routes()->add($basketRoute);

$getCheckoutRoute = route()->get('/checkout', function () {
    render('goods/checkout');
});
routes()->add($getCheckoutRoute);

$postCheckoutRoute = route()->post('/checkout', function () {
    $requestRules = [
        'name' => 'required|string|max:30',
        'phone' => 'required|string|max:30',
        'department' => 'required|string',
        'basket_snapshot' => 'required|string'
    ];
    if (!validator()->passes($_POST, $requestRules)) {
        throw new HttpInvalidParamException('Bad request');
    }
    BasketModel::save(
        $_POST['name'],
        $_POST['phone'],
        $_POST['department'],
        $_POST['basket_snapshot']
    );
    redirect('/');
});
routes()->add($postCheckoutRoute);

$apiFetchByIds = route()->get('/api/fetch', function () {
    $requestRules = [
        'ids' => 'required|array:numeric',
    ];
    if (!validator()->passes($_GET, $requestRules)) {
        throw new HttpInvalidParamException('Bad request');
    }
    echo json_encode(GoodsModel::fetchAllByIds($_GET['ids']));
});
routes()->add($apiFetchByIds);

$apiNovaposhtaSearchDepartment = route()->get('/api/novaposhta/city', function () {
    $requestRules = [
        'city' => 'required|string'
    ];
    if (!validator()->passes($_GET, $requestRules)) {
        throw new HttpInvalidParamException('Bad request');
    }

    echo novaposhta_api()->getWarehousesByCity($_GET['city']);
});
routes()->add($apiNovaposhtaSearchDepartment);


router()->setRoutes(routes());
router()->run();
