<?php
include '../model/product.php';
include '../view/product_view.php';

if(isset($_GET['category'])){
    $products=getAllProducts($pdo, $_GET['category']);
    foreach($products as $product){
    echo "<img src='".$product['image_item']."'>";
    echo "<p>".$product['name_item']."</p>";
    echo "<p>".$product['description_item']."</p>";
    echo "<form methode='POST'>
            <input type='number' nom='quantity' min=1>
            <input type='hidden' nom= 'id_product' value=".$product['id_item'].">
            <button type='submit' name='panier'>Ajouter au panier</button>
           </form>";
    }

}