<?php

function get_keys_by_gid($gid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT kid, key_name, loader_user_uid, product_id, days_left, freezed, `lifetime` FROM loader_keys WHERE owner_gid=?");
    $statement->execute(array($gid));  
    $keys = array();
    while($row = $statement->fetch()) {
        array_push($keys, array($row["kid"], decrypt_data($row["key_name"], $key), $row["loader_user_uid"], $row["product_id"], $row["days_left"], $row["freezed"], $row["lifetime"]));
    }
    
    return $keys;
}

function update_key($gid, $kid, $loader_user_id, $days_left, $freezed, $lifetime, $key_name)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("UPDATE loader_keys SET loader_user_uid = ?, days_left = ?, freezed = ?, `lifetime` = ?, key_name = ?  WHERE owner_gid = ? AND kid = ?;");
    $statement->execute(array($loader_user_id, $days_left, $freezed, $lifetime, encrypt_data($key_name, $key), $gid, $kid));
}

function insert_key_in_db($gid, $key_name, $product_id, $lifetime, $freezed, $days_left)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("INSERT INTO loader_keys (owner_gid, product_id, days_left, freezed, `lifetime`, key_name) VALUES (?, ?, ?, ?, ?, ?);");
    $statement->execute(array($gid, $product_id, $days_left, $freezed, $lifetime, encrypt_data($key_name, $key)));
}

?>