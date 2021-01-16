<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="txt/css" href="D:/MAMP/htdocs/public/css/home.css">
</head>
<body>
    <h1>Formulaire de connexion</h1>

    <form action="/login" method="post" >
        <fieldset>
        <legend>S'identifier:</legend>
        <label for="email">Adresse mail:</label>
        <input id="email" name="email" type="text">
        <br><br>
        <label for="password">Mot de passe:</label>
        <input id="password" name="password" type="password">
        <br><br>
        <button type="submit" name="connexion" valeur="connexion">Connexion</button>
        </fieldset>
    </form>
</body>
</html>