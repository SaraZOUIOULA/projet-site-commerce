<?php
include '../model/user.php';

if(isset($_POST['connexion'])) {
	verifyUser($pdo, $_POST);
}
include '../view/login_view.php';