<?php
include '../model/user.php';

if(isset($_POST['submit'])) {
	addClient($pdo, $_POST);
}
include '../view/signin_view.php';
