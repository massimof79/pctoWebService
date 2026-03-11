
<?php
require_once __DIR__ . '/auth.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    jsonResponse(['ok' => false, 'error' => 'Metodo non consentito'], 405);
}

$data = getJsonInput();

$username = trim($data['username'] ?? '');
$password = $data['password'] ?? '';



$pdo = getPDO();
$stmt = $pdo->prepare('SELECT id, username, password_hash, nome, cognome, ruolo FROM utenti WHERE username = ?');
$stmt->execute([$username]);
$user = $stmt->fetch();

if ( ($password != $user['password_hash'])) {
    jsonResponse(['ok' => false, 'error' => 'Credenziali non valide' .$password. " hash: " .$user['password_hash'] ], 401);
}

session_regenerate_id(true);

$_SESSION['user'] = [
    'id' => $user['id'],
    'username' => $user['username'],
    'nome' => $user['nome'],
    'cognome' => $user['cognome'],
    'ruolo' => $user['ruolo']
];

jsonResponse([
    'ok' => true,
    'message' => 'Login effettuato',
    'user' => $_SESSION['user']
]);
?>
