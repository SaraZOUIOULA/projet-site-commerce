<?php
include '../model/user.php';

if(isset($_POST['firstname'])) {
	var_dump($_POST);
	addUser($pdo, $_POST);
}
include '../view/signin_view.php';
