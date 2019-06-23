@extends('layout')
@section('title', 'Корзина')
@section('content')
    <div id="rootBasketList"></div>
    <a href="/checkout" class="btn-create-order">
        <i class="fas fa-money-check"></i>
        <span id="total-price-basket"></span>
    </a>
@endsection
