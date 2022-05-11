<?php

function get_username_by_uid($uid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT username FROM dashboard_users WHERE uid= ?");
    $statement->execute(array($uid));   
    while($row = $statement->fetch()) {
        return decrypt_data($row["username"], $key);
    }
    
    return "0";
}

function get_uid_by_username($username)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT uid FROM dashboard_users WHERE username= ?");
    $statement->execute(array(encrypt_data($username, $key)));   
    while($row = $statement->fetch()) {
        return $row["uid"];
    }
    
    return "-1";
}

function get_email_by_username($username)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT email FROM dashboard_users WHERE username= ?");
    $statement->execute(array(encrypt_data($username, $key)));   
    while($row = $statement->fetch()) {
        return decrypt_data($row["email"], $key);
    }
    
    return "-1";
}

function get_username_by_email($email)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT username FROM dashboard_users WHERE email= ?");
    $statement->execute(array(encrypt_data($email, $key)));   
    while($row = $statement->fetch()) {
        return decrypt_data($row["username"], $key);
    }
    
    return "-1";
}

function get_last_ip_by_uid($uid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT last_ip FROM dashboard_users WHERE uid= ?");
    $statement->execute(array($uid));   
    while($row = $statement->fetch()) {
        return $row["last_ip"];
    }
    
    return "-1";
}


?>