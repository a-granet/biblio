<?php 
include '../conf_server.php'; 


$titre = $_POST['titre'];
$auteur = $_POST['auteur'];
$genre = $_POST['genre'];
$proprio = $_POST['proprio'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

// Supprimer les probèmes d'encodage UTF8
$conn->query("SET NAMES UTF8");

$sql = "INSERT INTO livres (titre,auteur,genre,proprio) VALUES ('$titre','$auteur','$genre','$proprio')";

if ($conn->query($sql) === TRUE) {
    echo "Nouveau enregistrement réussi";
} else {
    echo "Erreur: " . $sql . "<br>" . $conn->error;
}

?>