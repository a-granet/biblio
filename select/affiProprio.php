<?php
include '../conf_server.php';

$proprio = isset($_POST['proprio']) ? trim($_POST['proprio']) : '';

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Erreur de connexion : " . $conn->connect_error);
}

$conn->set_charset('utf8mb4');

if ($proprio === '') {
    echo "Veuillez saisir un propriétaire.";
    $conn->close();
    exit;
}

$stmt = $conn->prepare("SELECT titre, auteur FROM livres WHERE proprio = ?");
$stmt->bind_param("s", $proprio);
$stmt->execute();
$result = $stmt->get_result();

echo 'Les livres du propriétaire ' . htmlspecialchars($proprio, ENT_QUOTES, 'UTF-8') . ' sont :';
echo '<br><br>';

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo htmlspecialchars($row["titre"], ENT_QUOTES, 'UTF-8')
            . ' écrit par '
            . htmlspecialchars($row["auteur"], ENT_QUOTES, 'UTF-8');
        echo '<br>';
    }
} else {
    echo "Aucun livre trouvé pour ce propriétaire.";
}

$stmt->close();
$conn->close();
?>