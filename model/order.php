<?php

function addOrder($pdo, $data, $info){
    $sql="
        INSERT INTO `order`(id_client, paid)
        VALUES :id , :paid;
    ";
    $stmt= $pdo->prepare($sql);   
    try{
        $stmt->execute(['id_client'=>$data['id_client'], 'paid'=>$info['paid']]);
        $result=$stmt->fetch(); 
        return $result;        
        
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    } 
}

function getOrder($pdo, $data){
    $sql="
        SELECT * FROM `order`
        WHERE id_order= :id_order;
    ";
    $stmt= $pdo->prepare($sql);   
    try{
        $stmt->execute(['id_order'=>$data['id_order']]);
        $result=$stmt->fetch(); 
        return $result;        
        
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }   

}
function addContentOrder($pdo, $data){
    $sql="
        INSERT INTO `content_order` ( id_item, quantity)
        VALUES  :id_product, :quantity;
    ";
    $stmt= $pdo->prepare($sql);   
    try{
        $stmt->execute(['id_item'=>$data['id_item'], 'quantity'=>$data['quantity']]);
        $result=$stmt->fetch(); 
        return $result;        
        
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    } 
}


?>