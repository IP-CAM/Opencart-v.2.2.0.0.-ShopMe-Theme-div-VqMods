<?php
class ModelMenuModule15 extends Model {
	function getExtensions($type) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "extension WHERE `type` = '" . $this->db->escape($type) . "' AND `code` = 'megamenu'");

		return $query->rows;
	}
}