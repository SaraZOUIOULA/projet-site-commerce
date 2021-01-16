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
        echo"Inscription confirmée";
        header('Location: http://localhost:81/login'); 
        exit(); 
        return $stmt->execute();
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    } 
}


function verifyClient($pdo, $data){
    $mdp=password_hash($data['password'], PASSWORD_DEFAULT);

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
    password_verify($mdp, $result['password_client']);
    //return true;
    session_start();
    $_SESSION['firstName'] = $result['first_name'];
    $_SESSION['lastName'] = $result['last_name'];
    $_SESSION['email'] = $result['email'];
    header ('Location: http://localhost:81/');
    exit();
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    } 
}

function getClient($pdo, $_SESSION){
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