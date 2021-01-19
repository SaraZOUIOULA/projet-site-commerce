<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="txt/css" href="D:/MAMP/htdocs/public/css/home.css">
</head>
<body>

    <fieldset>   
    <legend>Formulaire de connexion</legend>
    <br>
        <form action="/login" method="post" >
            
            <label for="email">Adresse mail:</label>
            <input id="email" name="email" type="text">
            <br><br>
            <label for="password">Mot de passe:</label>
            <input id="password" name="password" type="password">
            <br><br>
            <button type="submit" name="connexion" valeur="connexion">Connexion</button>    
        </form>
    </fieldset>
</body>
</html>