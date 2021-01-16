<?php
include '../model/user.php';

if(isset($_POST['submit'])) {
	if(!isset($_POST['email'])){
		addClient($pdo, $_POST);
	}
}
include '../view/signin_view.php';
