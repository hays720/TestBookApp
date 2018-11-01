<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="icon" href="favicon.png" type="image/png">
    <link href="{{ asset('css/bootstrap.min.css') }} " rel="stylesheet" type="text/css">
    <link href=" {{ asset('css/style.css') }} " rel="stylesheet" type="text/css">
    <link href="{{ asset('css/font-awesome.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('css/animate.css') }}" rel="stylesheet" type="text/css">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
@yield('content')
<script type="text/javascript" src=" {{ asset('js/jquery-1.11.0.min.js') }} "></script>
<script type="text/javascript" src="{{ asset('js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/jquery-scrolltofixed.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/jquery.nav.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/jquery.easing.1.3.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/jquery.isotope.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/wow.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/custom.js') }}"></script>
</body>
</html>