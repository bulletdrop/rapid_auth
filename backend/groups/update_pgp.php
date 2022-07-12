<?php

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';


if (check_cookie())
{
    $uid = get_cookie_information()[2];
    $gid = get_gid_by_uid($uid);
    if (get_group_owner_uid_by_gid($gid) == $uid)
    {
        $private_key = $_POST["private_key"];
        $public_key = $_POST["public_key"];
        $private_key_password = $_POST["private_key_password"];
        update_group_table($private_key, $public_key, $private_key_password, $gid);
        echo '<script>window.location.href = "../../dashboard/manage_group.php";</script>';
    }
}

function update_group_table($private_key, $public_key, $private_key_password, $gid)
{
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    $statement = $pdo->prepare("UPDATE dashboard_groups SET private_key = ?, public_key = ?, private_key_password = ? WHERE gid=?;");
    $statement->execute(array($private_key, $public_key, $private_key_password, $gid));
}


?>