{extends file='others.tpl'}
{block name=main}
<div class="page-header">
	<h1>Title & Abstract Submission</h1>
</div>

{if $message != ''}
<div class="alert alert-success" role="alert">{$message|escape}</div>
{/if}
<form class="form-horizontal">
	<div class="form-group">
		<label class="col-sm-2 control-label">Name</label>
		<div class="col-sm-10">
			<p class="form-control-static">{$person.first_name|escape} {$person.last_name|escape}</p>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">Email</label>
		<div class="col-sm-10">
			<p class="form-control-static">{$person.email|escape}</p>
		</div>
	</div>
</form>

{foreach $talks as $talk}
<hr>
<h2>Talk</h2>
<form action="person/talk.php?token={$token}&person_id={$person.id}&talk_id={$talk.id}&method=patch" method="POST" class="form-horizontal">
	<div class="form-group">
		<label for="title-input-{$talk.id}" class="col-sm-2 control-label">Title</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="title-input-{$talk.id}" placeholder="Your speak title" value="{$talk.title|escape}" name="title">
		</div>
	</div>
	<div class="form-group">
		<label for="abstract-input-{$talk.id}" class="col-sm-2 control-label">Abstract <small>(less than 300 words)</small></label>
		<div class="col-sm-10">
			<textarea id="abstract-input-{$talk.id}" class="form-control" rows="10" name="abstract">{$talk.abstract|escape}</textarea>
		</div>
	</div>
	{if $talk.session == 'Parallel'}
	<div class="form-group">
		<label for="session-id-input-{$talk.id}" class="col-sm-2 control-label">Session Code</label>
		<div class="col-sm-6">{strip}
			<select id="session-id-input-{$talk.id}" name="session_id" class="form-control">
				<option value="0" {if $talk.session_id eq '0'}selected{/if}></option>
				{foreach $sessions as $session}
				<option value="{$session.id}" {if $talk.session_id eq $session.id}selected{/if}>{$session.title|escape} ({$session.abbreviation|escape})</option>
				{/foreach}
			</select>
		{/strip}</div>
	</div>
	{/if}
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary">Update Information</button>
		</div>
	</div>
</form>
{/foreach}
{/block}
