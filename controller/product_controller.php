<?php
include '../model/product.php';
include '../view/product_view.php';

if(isset($_GET['category'])){
    $products=getAllProducts($pdo, $_GET['category']);
    echo "<div id='content'>";
    foreach($products as $product){
    echo "<div class='category'>";
    echo "<img src='".$product['image_item']."'>";
    echo "<p><strong>".$product['name_item']."</strong></p>";
    echo "<p>".$product['description_item']."</p>";
    echo "<form action='/order' method='POST'>
            <input type='number' name='quantity' min=1>
            <input type='hidden' name= 'id_product' value=".$product['id_item'].">
            <button type='submit' name='panier'>Ajouter au panier</button>
           </form>";
    echo"</div>";
    }
    echo"</div>";
}