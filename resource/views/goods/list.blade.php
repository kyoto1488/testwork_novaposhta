@extends('layout')
@section('title', 'Список товаров')
@section('content')
    <div class="items-container">
        @foreach($goods as $good)
            <div class="card-item">
                <header class="header">
                    <img src="{{ $good['pic'] }}" alt="{{ $good['title'] }}" class="pic">
                </header>
                <div class="card-body">
                    <h5 class="title">
                        {{ $good['title'] }}
                    </h5>
                    <p class="description">
                        {{ $good['description'] }}
                    </p>
                    <p class="price">
                        {{ $good['price'] }}$
                    </p>
                </div>
                <footer class="footer">
                    <div class="left-side">
                    </div>
                    <div class="right-side">
                        <button
                                type="button"
                                data-action="toggle-text-button-basket-item"
                                data-price="{{ $good['price'] }}"
                                data-id="{{ $good['id'] }}"
                                data-quantity="1"
                                class="btn-add-to-basket">
                            Добавить в корзину
                        </button>
                    </div>
                </footer>
            </div>
        @endforeach
    </div>
@endsection
