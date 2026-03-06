
<?php
require_once __DIR__ . '/db.php';

function jsonResponse($data, int $status = 200): void {
    http_response_code($status);
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
    exit;
}

function requireLogin(): void {
    if (empty($_SESSION['user'])) {
        jsonResponse([
            'ok' => false,
            'error' => 'Utente non autenticato'
        ], 401);
    }
}

function getJsonInput(): array {
    $raw = file_get_contents('php://input');
    $data = json_decode($raw, true);

    if (!is_array($data)) {
        jsonResponse([
            'ok' => false,
            'error' => 'JSON non valido'
        ], 400);
    }

    return $data;
}

function validateDate(string $date): bool {
    $d = DateTime::createFromFormat('Y-m-d', $date);
    return $d && $d->format('Y-m-d') === $date;
}
?>
