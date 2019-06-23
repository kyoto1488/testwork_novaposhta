<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>@yield('title', 'Localhost')</title>
    <link rel="stylesheet" href="/static/app.css">
</head>
<body>
<main class="content">
    @yield('content')
    <a href="/basket" class="btn-basket-open">
        <i class="fas fa-shopping-basket"></i>
        <span id="count-items" class="badge"></span>
    </a>
</main>
<script src="https://kit.fontawesome.com/ce6bcb8e5e.js"></script>
<script src="/static/bundle.js"></script>
@stack('script')
</body>
</html>
