<?php
include '../model/user.php';
if(isset($_GET['status'])){
	if($_GET['status'] == 'notLog'){
		session_destroy();
		header('location: /');
	}
}

if(isset($_GET['status'])){
	if($_GET['status'] == 'signout'){
		deleteClient($pdo, $_SESSION);
		session_destroy();
		header('location: /');
	}
}

if(isset($_POST['connexion']) && isset($_POST['email'])) {
	verifyClient($pdo, $_POST);
}

if(isset($_SESSION['id'])){
	getClient($pdo, $_SESSION);
	echo $_SESSION['firstName']." ".$_SESSION['lastName'];
}
include '../view/login_view.php';