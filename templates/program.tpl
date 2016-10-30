{extends file='others.tpl'}
{block name=head append}
<link href="{$smarty.const.TOP}/css/program.css" rel="stylesheet">
{/block}
{block name=main}
<!--<div class="page-header">
	<h1>Conference Program</h1>
</div>-->
<div style="overflow-y: auto;">
<table class="table table-bordered" id="timetable">
	<thead style="background-color: #FFECF5;">
	<tr style="height: 45px;">
		<th>Time</th>
		<th>Name</th>
		<th style="width: 70%;">Title</th>
	</tr>
	</thead>
	<tbody>
	<tr style="height: 40px;">
		<th>09:30 - 10:00</th>
		<td colspan="2" style="font-style: italic; background-color: #FFFFF4;">Welcome Coffee</td>
	</tr>
	<tr>
		<td colspan="3" style="height: 40px; background-color: #FFFAF4;"><strong>Chair</strong>: {$people[5].first_name|escape} {$people[5].last_name|escape} (2 hours)</td>
	</tr>
	<tr style="height: 40px;">
		<th>10:00 - 11:00</th>
		<td><strong>{$people[1].first_name|escape} {$people[1].last_name|escape}</strong></td>
		<td>{$talks[1].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs1')" style="float: right;">Show/Hide Abstract</button><div id="abs1" style="display:none; text-align: left;"><br>{$talks[1].abstract|escape}</div></td>
	</tr>
	<tr style="height: 40px;">
		<th>11:00 - 11:30</th>
		<td><strong>{$people[2].first_name|escape} {$people[2].last_name|escape}</strong></td>
		<td>{$talks[2].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs2')" style="float: right;">Show/Hide Abstract</button><div id="abs2" style="display:none; text-align: left;"><br>{$talks[2].abstract|escape}</div></td>
	</tr>
	<tr style="height: 40px;">
		<th>11:30 - 12:00</th>
		<td><strong>{$people[3].first_name|escape} {$people[3].last_name|escape}</strong></td>
		<td>{$talks[3].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs3')" style="float: right;">Show/Hide Abstract</button><div id="abs3" style="display:none; text-align: left;"><br>{$talks[3].abstract|escape}</div></td>
	</tr>
	<tr style="height: 40px;">
		<th>12:00 - 13:30</th>
		<td colspan="2" style="font-style: italic; background-color: #FFFFF4;">Lunch</td>
	</tr>
	<tr>
		<td colspan="3" style="height: 40px; background-color: #FFFAF4;"><strong>Chair</strong>: {$people[6].first_name|escape} {$people[6].last_name|escape} (2 hours)</td>
	</tr>
	<tr style="height: 40px;">
		<th>13:30 - 14:00</th>
		<td><strong>{$people[4].first_name|escape} {$people[4].last_name|escape}</strong></td>
		<td>{$talks[4].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs4')" style="float: right;">Show/Hide Abstract</button><div id="abs4" style="display:none; text-align: left;"><br>{$talks[4].abstract|escape}</div></td>
	</tr>
	<tr style="height: 40px;">
		<th>14:00 - 14:30</th>
		<td><strong>{$people[5].first_name|escape} {$people[5].last_name|escape}</strong></td>
		<td>{$talks[5].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs5')" style="float: right;">Show/Hide Abstract</button><div id="abs5" style="display:none; text-align: left;"><br>{$talks[5].abstract|escape}</div></td>
	</tr>
	<tr style="height: 40px;">
		<th>14:30 - 15:00</th>
		<td><strong>{$people[6].first_name|escape} {$people[6].last_name|escape}</strong></td>
		<td>{$talks[6].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs6')" style="float: right;">Show/Hide Abstract</button><div id="abs6" style="display:none; text-align: left;"><br>{$talks[6].abstract|escape}</div></td>
	</tr>
	<tr style="height: 40px;">
		<th>15:00 - 15:30</th>
		<td><strong>{$people[7].first_name|escape} {$people[7].last_name|escape}</strong></td>
		<td>{$talks[7].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs7')" style="float: right;">Show/Hide Abstract</button><div id="abs7" style="display:none; text-align: left;"><br>{$talks[7].abstract|escape}</div></td>
	</tr>
	<tr style="height: 40px;">
		<th>15:30 - 16:00</th>
		<td colspan="2" style="font-style: italic; background-color: #FFFFF4;">Coffee Break</td>
	</tr>
	<tr>
		<td colspan="3" style="height: 40px; background-color: #FFFAF4;"><strong>Chair</strong>: {$people[4].first_name|escape} {$people[4].last_name|escape} (2 hours)</td>
	</tr>
	<tr style="height: 40px;">
		<th>16:00 - 16:30</th>
		<td><strong>{$people[12].first_name|escape} {$people[12].last_name|escape}</strong></td>
		<td>{$talks[12].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs8')" style="float: right;">Show/Hide Abstract</button><div id="abs8" style="display:none; text-align: left;"><br>{$talks[12].abstract|escape}</div></td>
	</tr>
	<tr style="height: 40px;">
		<th>16:30 - 17:00</th>
		<td><strong>{$people[8].first_name|escape} {$people[8].last_name|escape}</strong></td>
		<td>{$talks[8].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs9')" style="float: right;">Show/Hide Abstract</button><div id="abs9" style="display:none; text-align: left;"><br>{$talks[8].abstract|escape}</div></td>
	</tr>
	<tr style="height: 40px;">
		<th>17:00 - 17:30</th>
		<td><strong>{$people[9].first_name|escape} {$people[9].last_name|escape}</strong></td>
		<td>{$talks[9].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs10')" style="float: right;">Show/Hide Abstract</button><div id="abs10" style="display:none; text-align: left;"><br>{$talks[9].abstract|escape}</div></td>
	</tr>
	<tr style="height: 40px;">
		<th>17:30 - 18:00</th>
		<td><strong>{$people[10].first_name|escape} {$people[10].last_name|escape}</strong></td>
		<td>{$talks[10].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs11')" style="float: right;">Show/Hide Abstract</button><div id="abs11" style="display:none; text-align: left;"><br>{$talks[10].abstract|escape}</div></td>
	</tr>
	<tr style="height: 40px;">
		<th>18:00 - 18:30</th>
		<td><strong>{$people[11].first_name|escape} {$people[11].last_name|escape}</strong></td>
		<td>{$talks[11].title|escape} <button type="button" class="btn btn-primary btn-xs" data-toggle="button" aria-pressed="false" autocomplete="off" onclick="show('abs11')" style="float: right;">Show/Hide Abstract</button><div id="abs11" style="display:none; text-align: left;"><br>{$talks[11].abstract|escape}</div></td>
	</tr>
	</tbody>
</table>
</div>

{* Show/Hide Session Code *}
{literal}
<script>
	function show(item){
		if(document.getElementById(item).style.display == "none"){
			document.getElementById(item).style.display = "block";
		} else {
			document.getElementById(item).style.display = "none";
		}
	}
</script>
{/literal}

{/block}
