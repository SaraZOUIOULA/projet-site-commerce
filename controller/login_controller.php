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

if(isset($_GET['profil'])){
	if($_GET['profil'] == 'view'){
		$profile=getClient($pdo, $_SESSION);
		echo "Name:".$profile['first_name']." ".$profile['last_name']."<br>";
		echo "Mail:".$profile['email']."<br>";
		echo "Phone:".$profile['phone'];"<br>";
	}
}

if(isset($_POST['connexion']) && isset($_POST['email'])) {
	verifyClient($pdo, $_POST);
}


include '../view/login_view.php';