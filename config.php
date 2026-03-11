
<?php
define('DB_HOST', 'localhost');
define('DB_NAME', 'pcto_fermi');
define('DB_USER', 'root');
define('DB_PASS', 'Ykkmacbook79');

session_set_cookie_params([
    'lifetime' => 0,                //Indica la durata del cookie in secondi.
    'path' => '/',                  //il cookie è inviato per tutte le pagine del dominio
    'domain' => '',                 //cookie valido per il dominio corrente
    'secure' => false,              //non solo https ma il cookie è inviato anche per connessioni http
    'httponly' => true, 
    'samesite' => 'Lax'           /* Il cookie viene inviato: nelle normali navigazioni verso il sito ma non nelle richieste cross-site automatiche (iframe, POST da altri siti)*/
]);

session_start();
?>
