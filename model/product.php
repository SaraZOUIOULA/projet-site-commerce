<?php
    
function getAllCategory($pdo){
        $sql="   
        SELECT *
        FROM category
    ";
    $stmt = $pdo->prepare($sql);
    try{
        $stmt->execute();
        $categories= $stmt->fetchAll();
        return $categories;
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }
}

function getAllProducts($pdo, $data){
        $sql="   
            SELECT *
            FROM item
            WHERE id_category= :id_cat
    ";
    $stmt = $pdo->prepare($sql);
    try{
        $stmt->execute(['id_cat'=> $data]);
        $products= $stmt->fetchAll();
        return $products;
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }
}
?>