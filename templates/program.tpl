{block name=head append}
<link href="{$smarty.const.TOP}/css/program.css" rel="stylesheet">
{/block}
{block name=main}
<!--<div class="page-header">
	<h1>Conference Program</h1>
</div>-->
<div style="overflow-y: auto;">
<table class="table table-bordered" id="timetable">
	<thead>
	<tr style="height: 45px;">
		<th>Time</th>
		<th>Name</th>
		<th>Title</th>
	</tr>
	</thead>
	<tbody>
	<tr style="height: 40px;">
		<th>09:30 - 10:00</th>
		<td>{$people[12].first_name|escape} {$people[12].last_name|escape}</td>
		<td>Welcome Coffee</td>
	</tr>
	<tr>
		<td colspan="3" style="height: 40px;"><strong>Chair</strong>: Dong-han Yeom (2 hours)</td>
	</tr>
	<tr>
		<th></th>
		<td></td>
		<td></td>
	</tr>
	</tbody>
</table>
</div>
{/block}
