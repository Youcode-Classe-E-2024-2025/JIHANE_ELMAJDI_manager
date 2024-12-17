<?php
$HOSTNAME = "localhost";
$ROOT = "root";
$PASSWORD = "";
$DATABASE = "bibliothéque";
$connection = mysqli_connect($HOSTNAME, $ROOT, $PASSWORD, $DATABASE);
if ($connection) {
    die("Error of connection");
}
