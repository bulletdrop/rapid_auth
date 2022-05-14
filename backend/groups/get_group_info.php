<?php

function get_group_name_by_gid($gid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT group_name FROM dashboard_groups WHERE gid=?");
    $statement->execute(array($gid));  
    
    while($row = $statement->fetch()) {
        return decrypt_data($row["group_name"], $key);
    }
    
    return "-1";
}

function get_group_gid_by_group_name($group_name)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT gid FROM dashboard_groups WHERE group_name=?");
    $statement->execute(array(encrypt_data($group_name, $key)));  
    
    while($row = $statement->fetch()) {
        return $row["gid"];
    }
    
    return "-1";
}

function get_member_array_by_gid($gid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT member_array FROM dashboard_groups WHERE gid=?");
    $statement->execute(array($gid));  
    
    while($row = $statement->fetch()) {
        return $row["member_array"];
    }
    
    return "-1";
}


?>