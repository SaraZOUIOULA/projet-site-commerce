<?php

function addClient($pdo, $data){
    
        $sql = "
        INSERT INTO client (first_name, last_name, email, password_client, phone)
        VALUES(:firstname, :lastname, :email, :mdp, :phone);
    ";
    $mdp_hash=password_hash($data['password'], PASSWORD_DEFAULT);
    $stmt= $pdo->prepare($sql);   
    $stmt-> bindValue(':firstname', $data['firstname']);
    $stmt-> bindValue(':lastname', $data['lastname']);
    $stmt-> bindValue(':email', $data['email']);
    $stmt-> bindValue(':mdp', $mdp_hash);
    $stmt-> bindValue(':phone', $data['phone']);
    try{
        $result=$stmt->execute(); 
        return $result;
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    } 
}


function verifyClient($pdo, $data){
        $sql = "
        SELECT *
        FROM `client`
        where email= :email ;
    ";
    $stmt = $pdo->prepare($sql);
    $stmt-> bindValue(':email', $data['email']);
    try{
    $stmt->execute();
    $result=$stmt->fetch();
    $result['password_client'];
    if(password_verify($data['password'], $result['password_client'])){
        session_start();
        $_SESSION['id']= $result['id'];
        $_SESSION['firstName'] = $result['first_name'];
        $_SESSION['lastName'] = $result['last_name'];
        header ('Location: /');
        exit();
    }else {
        echo 'mdp erroné';
    }
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    } 
}

function getClient($pdo, $data){
    $sql="
        SELECT * FROM client
        WHERE id= :id;
    ";
    $stmt = $pdo->prepare($sql);
    try{
        $stmt->execute(['id'=>$data['id']]);
        $products= $stmt->fetch();
        return $products;
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }
}

function deleteClient($pdo, $data){
    $sql="
        DELETE FROM `client` 
        WHERE id= :id; 
    ";
    $stmt = $pdo->prepare($sql);
    try{
        $stmt->execute(['id'=>$data['id']]);
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }
}

?>