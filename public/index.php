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
$basketRoute = route()->get('/basket', function () {
    render('goods/basket');
});
$getCheckoutRoute = route()->get('/checkout', function () {
    render('goods/checkout');
});
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
$apiFetchByIds = route()->get('/api/fetch', function () {
    $requestRules = [
        'ids' => 'required|array:numeric',
    ];
    if (!validator()->passes($_GET, $requestRules)) {
        throw new HttpInvalidParamException('Bad request');
    }
    echo json_encode(GoodsModel::fetchAllByIds($_GET['ids']));
});
$apiNovaposhtaSearchDepartment = route()->get('/api/novaposhta/street', function () {
    $requestRules = [
        'find' => 'required|string'
    ];
    if (!validator()->passes($_GET, $requestRules)) {
        throw new HttpInvalidParamException('Bad request');
    }

    echo novaposhta_api()->getWarehouses($_GET['find']);
});



routes()->add($apiNovaposhtaSearchDepartment);
routes()->add($getCheckoutRoute);
routes()->add($postCheckoutRoute);
routes()->add($apiFetchByIds);
routes()->add($homeRoute);
routes()->add($basketRoute);
router()->setRoutes(routes());
router()->run();




