<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <title>Ajoute un livre</title>
</head>

<body>
    <h1>Ajouter un livre</h1>
    <br><br>
    <form action="affi.php" method="post">

        <label for="titre">titre : </label>
        <input type="text" name="titre" id="titre">
        <br><br>
        <label for="auteur">auteur : </label>
        <input type="text" name="auteur" id="auteur">
        <br><br>
        <label for="genre">genre : </label>
        <input type="text" name="genre" id="genre">
        <br><br>
        <label for="proprio">proprio : </label>
        <input type="text" name="proprio" id="proprio">
        <br><br>

        <input type="submit" value="Envoyer">

    </form>
</body>

</html>