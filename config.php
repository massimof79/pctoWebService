
<?php
define('DB_HOST', 'localhost');
define('DB_NAME', 'pcto_fermi');
define('DB_USER', 'root');
define('DB_PASS', '');

session_set_cookie_params([
    'lifetime' => 0,
    'path' => '/',
    'domain' => '',
    'secure' => false,
    'httponly' => true,
    'samesite' => 'Lax'
]);

session_start();
?>
