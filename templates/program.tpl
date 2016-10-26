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
		<td></td>
		<td style="background-color: #FFFFF4;">Welcome Coffee</td>
	</tr>
	<tr>
		<td colspan="3" style="height: 40px; background-color: #FFFAF4;"><strong>Chair</strong>: Dong-han Yeom (2 hours)</td>
	</tr>
	<tr style="height: 40px;">
		<th>10:00 - 11:00</th>
		<td><strong>Antonino Marciano</strong></td>
		<td>{$talks[1].title|escape}</td>
	</tr>
	<tr style="height: 40px;">
		<th>11:00 - 11:30</th>
		<td><strong>Suddho Brahma</strong></td>
		<td>{$talks[2].title|escape}</td>
	</tr>
	<tr style="height: 40px;">
		<th>11:30 - 12:00</th>
		<td><strong>Jibril Ben Achour</strong></td>
		<td>{$talks[3].title|escape}</td>
	</tr>
	<tr style="height: 40px;">
		<th>12:00 - 13:30</th>
		<td></td>
		<td style="font-style: italic; background-color: #FFFFF4;">Lunch</td>
	</tr>
	<tr>
		<td colspan="3" style="height: 40px; background-color: #FFFAF4;"><strong>Chair</strong>: Fabien Nugier (2 hours)</td>
	</tr>
	<tr style="height: 40px;">
		<th>13:30 - 14:00</th>
		<td><strong>Frederico Arroja</strong></td>
		<td>{$talks[4].title|escape}</td>
	</tr>
	<tr style="height: 40px;">
		<th>14:00 - 14:30</th>
		<td><strong>Dong-han Yeom</strong></td>
		<td>{$talks[5].title|escape}</td>
	</tr>
	<tr style="height: 40px;">
		<th>14:30 - 15:00</th>
		<td><strong>Fabien Nugier</strong></td>
		<td>{$talks[6].title|escape}</td>
	</tr>
	<tr style="height: 40px;">
		<th>15:00 - 15:30</th>
		<td><strong>Hsu-Wen Chiang</strong></td>
		<td>{$talks[7].title|escape}</td>
	</tr>
	<tr style="height: 40px;">
		<th>15:30 - 16:00</th>
		<td></td>
		<td style="font-style: italic; background-color: #FFFFF4;">Coffee Break</td>
	</tr>
	<tr>
		<td colspan="3" style="height: 40px; background-color: #FFFAF4;"><strong>Chair</strong>: Frederico Arroja (2 hours)</td>
	</tr>
	<tr style="height: 40px;">
		<th>16:00 - 16:30</th>
		<td><strong>Yu-Hsiang Lin</strong></td>
		<td>{$talks[8].title|escape}</td>
	</tr>
	<tr style="height: 40px;">
		<th>16:30 - 17:00</th>
		<td><strong>Chien-Ting Chen</strong></td>
		<td>{$talks[9].title|escape}</td>
	</tr>
	<tr style="height: 40px;">
		<th>17:00 - 17:30</th>
		<td><strong>Che-Yu Chen</strong></td>
		<td>{$talks[10].title|escape}</td>
	</tr>
	<tr style="height: 40px;">
		<th>17:30 - 18:00</th>
		<td><strong>Chih-Hung Wu</strong></td>
		<td>{$talks[11].title|escape}</td>
	</tr>
	</tbody>
</table>
</div>
{/block}
