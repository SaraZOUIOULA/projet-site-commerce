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

?>