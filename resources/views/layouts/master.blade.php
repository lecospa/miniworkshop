<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="Mini-workshop,LeCosPA,Gravity" />
	<meta name="description" content="New perspectives of Cosmology and Quantum Gravity" />
	<meta property="og:title" content="@yield('title', 'NTU LeCosPA Mini-workshop')" />
	<meta property="og:url" content="http://lecospa.ntu.edu.tw/miniworkshop/" />
	<title>@yield('title', 'NTU LeCosPA Mini-workshop')</title>
	<link href="{{ asset('css/bootstrap-darkly.min.css') }}" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<link href="{{ asset('css/main.css') }}" rel="stylesheet">
</head>
<body class="container-fluid">
    <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-56608889-2', 'auto');
    ga('send', 'pageview');
    </script>
	<div class="page-header" style="text-align: center;">
<!--		<img src="//image.lecospa.mar98.tk/symposium_2015/1f4d0edb0362c8f241034f74d3699235-symposium-header-12.png" class="img-responsive center-block">	-->
		<h1><big>NTU LeCosPA Mini-workshop</big></h1>
		<h1><big>New perspectives of Cosmology and Quantum Gravity</big></h1>
		<h3>Date: 10:00-18:00, Dec. 5 (Monday)</h3>
		<h3>Location: R812, Astro-Math Building</h3>
	</div>
	<div class="row">
		<div class="col-sm-3">
			<div class="list-group table-of-content">@include('shared/menu')</div>
		</div>
		<div id="main" class="col-sm-9">@yield('body')</div>
	</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
