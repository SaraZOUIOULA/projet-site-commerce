<?php
include '../model/product.php';
include '../view/product_view.php';

$categories=getAllCategory($pdo);
$products=getAllProducts($pdo, $categories);
var_dump($products);