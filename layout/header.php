<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../public/css/main.css">
    <script type="text/javascript" src="../public/js/main.js"></script>
    <title>Welcome</title>
</head>

<body>
    <nav class="menu">
        <ul>
            <li><a href="/">accueil</a></li>
            <li><a href="/signin">inscription</a></li>
            <li><a href="/login">connexion</a></li>
                <?php 
                    session_start();
                    if(isset($_SESSION['id'])){
                    echo "<li><a href='/login?profil=view'>Mon profile</a></li>";
                    echo "<li><a href='/login?status=notLog'>Déconnexion</a></li>";
                    echo "<li><a href='/login?status=signout'>Désinscription</a></li>";
                    echo "<li><a href='/order'>Panier</a></li>";
                    }
                ?>
            
        </ul>
    </nav>
    
    
</body>
</html>