<?php
include '../model/user.php';

if(isset($_POST['connexion']) && isset($_POST['email'])) {
	verifyClient($pdo, $_POST);
}
include '../view/login_view.php';