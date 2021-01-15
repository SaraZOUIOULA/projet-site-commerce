<?php

function addClient($pdo, $data){
    $firstname=$data['firstname'];
    $lastname=$data['lastname'];
    $email=$data['email'];
    $mdp=$data['password'];
    $phone=$data['phone'];

        $sql = "
        insert into client (first_name, last_name, email, password_client, phone)
        values(:firstname, :lastname, :email, :mdp, :phone);
    ";
    $stmt= $pdo->prepare($sql);   
    
    try{
        return $stmt->execute($data);
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }
   
}

function getAllUsers($pdo){
        $sql="   
        SELECT *
        FROM client
    ";
    $stmt = $pdo->prepare($sql);
    try{
    $stmt->execute();
    return $stmt->fetchAll();
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }
}

function getUser($pdo, $id){
        $sql="   
        SELECT *
        FROM client
        WHERE id= :id
    ";
    $stmt = $pdo->prepare($sql);
    try{
    $stmt->execute(["id"=> $id]);
    return $stmt->fetch();
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }
}

function deleteUser($pdo, $data){
    
    $firstname=$data['firstname'];
    $lastname=$data['lastname'];
    $email=$data['email'];
    $mdp=$data['password_client'];
    $phone=$data['phone'];

    $sql = "
    DELETE FROM `client`
    WHERE first_name= :firstname, last_name= :lastname, email= :email, password_client= :mdp, phone= :phone;
 ";
 $stmt= $pdo->prepare($sql);   
 
 try{
     return $stmt->execute($data);
 }catch(Exception $e){
     $pdo->rollBack();
     throw $e;
 }
}

function updateUser($pdo, $data, $id){

    $sql = "
       UPDATE client
       SET (firstname=:firstname, lastname=:lastname, email=:email)
       WHERE id= :id;
    ";
    $stmt= $pdo->prepare($sql);   
    
    try{
        return $stmt->execute(["id"=> $id]);
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }

}

function verifyUser($pdo, $data){
    $email=$data['email'];
    $mdp=$data['password'];

        $sql = "
        SELECT *
        FROM `client`
        where email= :email ;
    ";
    $stmt = $pdo->prepare($sql);
    try{
    $stmt->execute($data);
    $result=$stmt->fetch();
    password_verify($mdp, $result['password_client']);
    return true;
    session_start();
    $_SESSION['firstName'] = $result['first_name'];
    $_SESSION['lastName'] = $result['last_name'];
    $_SESSION['email'] = $result['email'];
    echo 'Bienvenue '.$_SESSION['firstName']." ".$_SESSION['lastName'];
    // diriger vers une autre page https://www.php.net/manual/fr/function.header.php
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    } 
}