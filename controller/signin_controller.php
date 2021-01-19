<?php
include '../model/user.php';

if(isset($_POST['submit'])) {
	if(isset($_POST['email'])){
		var_dump(addClient($pdo, $_POST));
		echo"Inscription confirmée";
        header('Location: /login'); 
	}
}
include '../view/signin_view.php';
