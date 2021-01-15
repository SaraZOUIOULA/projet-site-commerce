<?php

function addUser($pdo, $data){
    $firstname=$data['firstname'];
    $lastname=$data['lastname'];
    $email=$data['email'];

        $sql = "
        insert into user (first_name, last_name, email)
        values(:firstname, :lastname, :email)
    ";
    $stmt= $pdo->prepare($sql);   
    
    try{
        return $stmt->execute($data);
        
        /*ou (
            [
                "firstname"=>$firstname
            ],
            [
                "lastname"=>$lastname
            ],
            [
                "email"=>$email
            ],
        );
        */
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }
   
}

function getAllUsers($pdo){
        $sql="   
        SELECT *
        FROM user
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
        FROM user
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

function deleteUser(){

}

function updateUser($pdo, $data, $id){

    $sql = "
       UPDATE user
       SET firstname=:firstname, lastname=:lastname, email=:email)
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