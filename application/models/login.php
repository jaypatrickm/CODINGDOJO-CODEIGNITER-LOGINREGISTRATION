<?php
class login extends CI_Model {

	function get_user_by_email($email)
	{ 
		return $this->db->query("SELECT * FROM users WHERE email = ?", array($email))->row_array();
	}
	function get_user_by_id($id)
	{ 
    	return $this->db->query("SELECT * FROM users WHERE id = ?", array($id))->row_array();
	}
	function register_user($values)
  	{
  		$query = "INSERT INTO users (first_name, last_name, email, salt, password, date_of_birth, profile_picture, created_at, updated_at) VALUES (?,?,?,?,?,?,?, NOW(), NOW())";
		$result = $this->db->query($query, $values);
		$record_id = $this->db->insert_id($result);
		return $record_id;
	}
}
?>