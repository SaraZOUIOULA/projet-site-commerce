<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <fieldset>
    <legend>Formulaire d'inscription</legend>
    <br>

    <form action="/signin" method="POST">
        
        <label for="firstname">Prénom:</label>
        <input id="firstname" name="firstname" type="text">
        <br>
        <label for="lastname">Nom de famille:</label>
        <input id="lastname" name="lastname" type="text">
        <br>
        <label for="email">Adress mail:</label>
        <input id="email" name="email" type="text">
        <br>
        <label for="password">Mot de passe :</label>
        <input id="password" name="password" type="password">
        <br>
        <label for="phone">Numéro de téléphone :</label>
        <input id="phone" name="phone" type="tel" pattern="[0-9]{10}" required>
        <br><br>
        <button type="submit" name="submit">Valider</button>
    </form>

    </fieldset>
</body>
</html>