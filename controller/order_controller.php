<?php
include '../model/order.php';
include '../view/order_view.php';

if(isset($_SESSION['id'])){
    
    $commande=getOrder($pdo, $_SESSION);
    echo "<fieldset><legend> Panier ".$_SESSION['firstName']." ".$_SESSION['lastName']."</legend>";
    if($commande== false){ 
        addOrder($pdo, $_SESSION);
        echo"Recharger la page pour commencez vos achat !";
    }else{
        if(!isset($_GET['paid'])){
            addContentOrder($pdo,$_POST, $commande); 
        }
        echo "id client: ".$commande['id_client']."<br>";
        echo "id commande: ".$commande['id_order']."<br>";
        echo "payé: ".$commande['paid']."<br></fieldset>";
        echo "<button type='button' name='submit'><a href='/order?paid=true'>PAYER</a></button>"; 
    }
    
    var_dump($_GET);
    if(isset($_GET['paid'])){
        updateOrder($pdo, $commande);
        addOrder($pdo, $_SESSION);
    }
}