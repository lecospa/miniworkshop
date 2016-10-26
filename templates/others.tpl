{extends file='bootstrap.tpl'}

{block name=head}
<link href="{$smarty.const.TOP}/css/responsive-full-background-image.css" rel="stylesheet">
<link href="{$smarty.const.TOP}/css/main.css" rel="stylesheet">
{/block}

{block name=body}
	<div class="page-header" style="text-align: center;">
<!--		<img src="{$smarty.const.IMGTOP}symposium_2015/1f4d0edb0362c8f241034f74d3699235-symposium-header-12.png" class="img-responsive center-block">-->
		<h1><big>NTU LeCosPA Mini Workshop</big></h1>
		<h1><big>New perspectives of Cosmology and Quantum Gravity</big></h1>
		<h3>Date: 10:00-18:00, Dec. 5 (Monday)</h3>
		<h3>Location: R812, Astro-Math Building</h3>
	</div>
	<div class="row">
		<div class="col-sm-3">
			<div class="list-group table-of-content">{include file='menu-part.tpl'}</div>
		</div>
		<div id="main" class="col-sm-9" style="{block name=main_style}{/block}">{block name=main}{/block}</div>
	</div>
{/block}
