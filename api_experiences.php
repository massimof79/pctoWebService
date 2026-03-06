
<?php
require_once __DIR__ . '/auth.php';

requireLogin();

$pdo = getPDO();
$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'POST') {
    $data = getJsonInput();

    $stmt = $pdo->prepare('
        INSERT INTO esperienze_pcto
        (id_studente, ente_ospitante, tutor_aziendale, tutor_scolastico, mansione,
         data_inizio, data_fine, ore_totali, descrizione, id_utente_inserimento)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ');

    $stmt->execute([
        $data['id_studente'],
        $data['ente_ospitante'],
        $data['tutor_aziendale'],
        $data['tutor_scolastico'],
        $data['mansione'],
        $data['data_inizio'],
        $data['data_fine'],
        $data['ore_totali'],
        $data['descrizione'],
        $_SESSION['user']['id']
    ]);

    jsonResponse([
        'ok' => true,
        'message' => 'Esperienza inserita',
        'id' => $pdo->lastInsertId()
    ], 201);
}

if ($method === 'GET') {

    $dal = $_GET['dal'];
    $al = $_GET['al'];

    $stmt = $pdo->prepare('
        SELECT e.*, s.nome, s.cognome
        FROM esperienze_pcto e
        JOIN studenti s ON e.id_studente = s.id
        WHERE e.data_inizio >= ? AND e.data_fine <= ?
        ORDER BY e.data_inizio
    ');

    $stmt->execute([$dal, $al]);
    $rows = $stmt->fetchAll();

    jsonResponse([
        'ok' => true,
        'count' => count($rows),
        'data' => $rows
    ]);
}

jsonResponse(['ok'=>false,'error'=>'Metodo non consentito'],405);
?>
