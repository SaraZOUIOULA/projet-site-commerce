<?php

include '../model/product.php';
include '../view/home_view.php';


$categories=getAllCategory($pdo);
echo "<div id='content'>";
foreach($categories as $category){ 
    echo "<div class='category'><img src='images/";
    switch($category['id_category']){
        case 1:
            echo "maquillage.jpg'>";
            break;
        case 2:
            echo "soin.jpg'>";
            break;
        case 3:
            echo "soin_capillaire.jpg'>";
            break;
        case 4:
            echo "soin_corporel.jpg'>";
            break;
        case 5:
            echo "accessoires.jpg'>";
            break;
    }
    echo"<br>";
    echo "<a href='/product?category=".$category['id_category']."'>".$category['name_category']."</a></div> <br><br>";
}
echo "</div>";


//var_dump(getAllUsers($pdo));
//var_dump(getUser($pdo, 4));

/* while($data = ($stnt->fetch()){
   var_dump($data);
};
*/

/*$allUsers=$stnt->fetchAll();
    foreach($allUsers as $user){
    var_dump($user);
}
*/


