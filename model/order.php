<?php

function addOrder($pdo, $data){
    $sql="
        INSERT INTO `order`(id_client, paid)
        VALUES (:id, 0);
    ";
    $stmt= $pdo->prepare($sql);   
    try{
        return $stmt->execute(['id'=>$data['id']]);    
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    } 
}

function getOrder($pdo, $data){
    $sql="
        SELECT * FROM `order`
        WHERE id_client= :id AND paid= 0;
    ";
    $stmt= $pdo->prepare($sql);   
    try{
        $stmt->execute(['id'=>$data['id']]);
        $result=$stmt->fetch(); 
        return $result;        
        
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }   

}

function updateOrder($pdo, $data){
    $sql="
        UPDATE `order`
        SET paid= 1
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

function addContentOrder($pdo, $data, $info){
    $sql="
        INSERT INTO `content_order` (id_order, id_item, quantity)
        VALUES  (:id_order, :id_item, :quantity)

    ";
    $stmt= $pdo->prepare($sql);   
    try{
        $stmt->execute(['id_order'=>$info['id_order'],'id_item'=>$data['id_product'], 'quantity'=>$data['quantity']]);
        $result=$stmt->fetch(); 
        return $result;        
        
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    } 
}


function getContentOrder($pdo, $data){
    $sql="
        SELECT * 
        FROM `content_order`, `item`
        WHERE id_order= :id_order  AND content_order.id_item=item.id_item

    ";
    $stmt= $pdo->prepare($sql);   
    try{
        $stmt->execute(['id_order'=>$data['id_order']]);
        $result=$stmt->fetchAll(); 
        return $result;        
        
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    } 
}

?>