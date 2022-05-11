<?php
include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';

if ($_POST["todo"] == "encrypt")
    echo encrypt_data($_POST["data"], $key);
else
    echo decrypt_data($_POST["data"], $key);
?>