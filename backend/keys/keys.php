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

function generateRandomString($length = 10, $use_only_upper_chars = false) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';

    if ($use_only_upper_chars)
        $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';

    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
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

    $statement = $pdo->prepare("INSERT INTO loader_keys (owner_gid, product_id, days_left, freezed, `lifetime`, key_name, creator_uid) VALUES (?, ?, ?, ?, ?, ?, ?);");
    $statement->execute(array($gid, $product_id, $days_left, $freezed, $lifetime, encrypt_data($key_name, $key), get_cookie_information()[2]));
}

function get_key_creator_uid_by_kid($kid, $gid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT creator_uid FROM loader_keys WHERE owner_gid=? AND kid=?");
    $statement->execute(array($gid, $kid));  
    
    while($row = $statement->fetch()) {
        return $row["creator_uid"];
    }
    
    return "0";
}

function get_days_left_by_kid_and_gid($kid, $gid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT days_left FROM loader_keys WHERE owner_gid=? AND kid=?");
    $statement->execute(array($gid, $kid));  
    
    while($row = $statement->fetch()) {
        return $row["days_left"];
    }
    
    return "0";
}

function get_key_name_by_kid_and_gid($kid, $gid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';


    $statement = $pdo->prepare("SELECT key_name FROM loader_keys WHERE owner_gid=? AND kid=?");
    $statement->execute(array($gid, $kid));  
    
    while($row = $statement->fetch()) {
        return decrypt_data($row["key_name"], $key);
    }
    
    return "0";
}

function get_product_name_by_kid_and_gid($kid, $gid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';


    $statement = $pdo->prepare("SELECT product_id FROM loader_keys WHERE owner_gid=? AND kid=?");
    $statement->execute(array($gid, $kid));  
    
    while($row = $statement->fetch()) {
        return get_product_name_by_index($gid, $row["product_id"]);
    }
    
    return "0";
}

function check_if_key_with_same_name_exist($license_key, $gid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT kid FROM loader_keys WHERE owner_gid=? AND key_name = ?");
    $statement->execute(array($gid, encrypt_data($license_key, $key))); 
    
    if ($statement->rowCount() == 0)
        return false;

    return true;
}

function count_loader_keys_by_gid($gid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT kid FROM loader_keys WHERE owner_gid=?");
    $statement->execute(array($gid)); 
    
    return $statement->rowCount();
}

?>