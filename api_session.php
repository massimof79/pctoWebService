
<?php
require_once __DIR__ . '/auth.php';

if (!empty($_SESSION['user'])) {
    jsonResponse([
        'ok' => true,
        'authenticated' => true,
        'user' => $_SESSION['user']
    ]);
}

jsonResponse([
    'ok' => true,
    'authenticated' => false
]);
?>
