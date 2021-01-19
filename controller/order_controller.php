<?php
include '../model/order.php';
include '../view/order_view.php';

if(isset($_SESSION['id'])){
    
    $commande=getOrder($pdo, $_SESSION);
    echo "<fieldset id='panier'><legend> Panier ".$_SESSION['firstName']." ".$_SESSION['lastName']."</legend>";
    if($commande== false){ 
        addOrder($pdo, $_SESSION);
        echo"Recharger la page pour commencez vos achat !";
    }else{
        if(!isset($_GET['paid'])){
            addContentOrder($pdo,$_POST, $commande); 
        }
        echo "Commande N° ".$commande['id_order']."<br>";
        if($commande['paid'] == 0){ 
            echo"Payé: non <br>";
        }else{
            echo "Payé: oui <br>";
        }
            $total=0;
            $content=getContentOrder($pdo,$commande);
            foreach($content as $item){
                echo "<img src='".$item['image_item']."'><br>";
                echo $item['name_item']."<br>";
                echo "Quantité: ".$item['quantity']."<br>";
                echo "Prix: ".$item['price']."€<br>";
                $totalProduit=$item['quantity']*$item['price'];
                echo "Prix total pour cet article: ". $item['quantity']*$item['price']."€<br>";
                echo $item['description_item'];
                echo "<br><br>";
                $total=$total+$totalProduit;
            }
            echo "Votre facture est d'un montant de : ".$total."€<br>";
            echo"</fieldset>";
        echo "<button type='button' name='submit'><a href='/order?paid=true'>PAYER</a></button>"; 
    }
    if(isset($_GET['paid'])){
        updateOrder($pdo, $commande);
        addOrder($pdo, $_SESSION);
    }
}