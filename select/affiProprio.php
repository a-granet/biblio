<?php
include '../conf_server.php';

$proprio = $_POST['proprio'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

// Supprimer les probèmes d'encodage UTF8
$conn->query("SET NAMES UTF8");


$sql = "SELECT  titre, auteur, genre FROM livres WHERE proprio='$proprio' ";
$result = $conn->query($sql);

echo 'Les livres du proprio  sont :';
echo '<br>';
echo '<br>';

if ($result->num_rows >0) {
    while ($row = $result->fetch_assoc()) {
       echo $row['titre'] . ' écrit par ' . $row['auteur'];
        echo '<br>';
    }
} else {
    echo "Aucun  propriétaire.";
}

$conn->close();
?>