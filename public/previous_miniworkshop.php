<?php
require_once('../init.php');
class Previous extends \Controllers\Controller {
	function get() {
		$this->smarty->assign('scope', __CLASS__);
		$this->smarty->display('previous_miniworkshop.html');
	}
}
new Previous;
