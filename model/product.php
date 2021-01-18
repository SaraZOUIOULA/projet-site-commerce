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
        $id_cat=$data['id_category'];
        $sql="   
            SELECT *
            FROM item
            WHERE id_category= :$id_cat
    ";
    $stmt = $pdo->prepare($sql);
    try{
    $stmt->execute();
    $products= $stmt->fetchAll();
    return $products;
    }catch(Exception $e){
        $pdo->rollBack();
        throw $e;
    }
}

/*
function getAllClients($pdo){
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



function deleteClient($pdo, $data){
    
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
*/
?>