{extends file='bootstrap.tpl'}

{block name=head}
<link href="{$smarty.const.TOP}/css/responsive-full-background-image.css" rel="stylesheet">
<link href="{$smarty.const.TOP}/css/main.css" rel="stylesheet">
{/block}

{block name=body}
	<div class="page-header" style="text-align: center;">
<!--		<img src="{$smarty.const.IMGTOP}symposium_2015/1f4d0edb0362c8f241034f74d3699235-symposium-header-12.png" class="img-responsive center-block">-->
		<h1><big>LeCosPA 2016 Mini Workshop</big></h1>
	</div>
	<div class="row">
		<div class="col-sm-3">
			<div class="list-group table-of-content">{include file='menu-part.tpl'}</div>
		</div>
		<div id="main" class="col-sm-9" style="{block name=main_style}{/block}">{block name=main}{/block}</div>
	</div>
{/block}
