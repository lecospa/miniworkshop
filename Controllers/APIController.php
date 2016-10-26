<?php
namespace Controllers;

class APIController extends BaseController {
	public $protected = true;
	public function NotFound(\NotFoundException $e) {
		http_response_code(404);
		$this->json(array('error' => 'NotFoundException'));
	}
	public function Unauthorized(\UnauthorizedException $e) {
		http_response_code(401);
		$this->json(array('error' => 'UnauthorizedException'));
	}
	public function Forbidden(\ForbiddenException $e) {
		http_response_code(403);
		$this->json(array('error' => 'ForbiddenException'));
	}
	protected function json($data) {
		header('Content-Type: application/json; charset=utf-8');
		echo json_encode($data);
	}
	private function isLogin() {
		if (isset($_SESSION['scopes']) && is_array($_SESSION['scopes'])) {
			return true;
		} else {
			return false;
		}
	}
	public function check($scope) {
		if ($this->protected) {
			if (!$this->isLogin()) {
				throw new \UnauthorizedException;
			}
			if (!in_array($scope, $_SESSION['scopes'])) {
				throw new \ForbiddenException;
			}
		} else {
			// do nothing
		}
	}
}
