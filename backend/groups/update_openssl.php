<?php

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';


if (check_cookie())
{
    $uid = get_cookie_information()[2];
    $gid = get_gid_by_uid($uid);
    if (get_group_owner_uid_by_gid($gid) == $uid)
    {
        $openssl_crypting_key = $_POST["openssl_crypting_key"];
        update_group_table($openssl_crypting_key, $gid);
        echo '<script>window.location.href = "../../dashboard/manage_group.php";</script>';
    }
}

function update_group_table($openssl_crypting_key, $gid)
{
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    $statement = $pdo->prepare("UPDATE dashboard_groups SET openssl_crypting_key = ? WHERE gid=?;");
    $statement->execute(array($openssl_crypting_key, $gid));
}


?>