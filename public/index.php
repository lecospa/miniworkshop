<?php
require_once('../init.php');
class Program extends \Controllers\Controller {
	function get() {
		$this->smarty->assign('scope', __CLASS__);
		$conn = new \Conn();
		$stmt = $conn->prepare("SELECT `id`, `first_name`, `last_name` FROM `people` ORDER BY `id`");
		$stmt->execute();
		$people = $stmt->fetchAll(\PDO::FETCH_ASSOC);
		$p = array();
		foreach ($people as $person) {
			$p[$person['id']] = $person;
		}
		$this->smarty->assign('people', $p);
		
		$stmt = $conn->prepare("SELECT `id`, `title`, `abstract` FROM `talks` ORDER BY `id`");
		$stmt->execute();
		$talks = $stmt->fetchAll(\PDO::FETCH_ASSOC);
		$t = array();
		foreach ($talks as $talk) {
			$t[$talk['id']] = $talk;
		}
		$this->smarty->assign('talks', $t);
		$this->smarty->display('program.tpl');
	}
}
new Program;

