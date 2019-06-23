@extends('layout')
@section('title', 'Оформить заказ')
@section('content')
    <form id="form-create-order" method="post" action="/checkout">
        <h5>Доставка</h5>
        <input type="text" placeholder="Название города" id="search-city">
        <input type="text" placeholder="Номер отделения" id="search-department">
        <select name="department" id="select-department">
            <option selected value="none">Не выбран</option>
        </select>
        <hr>
        <h5>Стоимость: <span id="total-price"></span>$</h5>
        <input type="hidden" name="basket_snapshot" value="">
        <input type="text" placeholder="Имя" required name="name">
        <input type="text" placeholder="Телефон" required name="phone">
        <button type="submit">Отправить</button>
    </form>
@endsection
