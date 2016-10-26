{strip}
<a class="list-group-item {if $scope eq 'Index'} active{/if}" href="{$smarty.const.TOP}/">Home</a>
<a class="list-group-item {if $scope eq 'Registration'} active{/if}" href="#">Registration</a>
<a class="list-group-item {if $scope eq 'Submission'} active{/if}" href="{$smarty.const.TOP}/submission.php">Title &amp; Abstract Submission</a>
<a class="list-group-item" href="http://lecospa.ntu.edu.tw">Back to LeCosPA</a>
{/strip}
