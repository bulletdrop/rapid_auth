<?php
session_start();
include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';


if (check_cookie())
{
    $uid = get_cookie_information()[2];
    $gid = get_gid_by_uid($uid);
    if (get_group_owner_uid_by_gid($gid) == $uid)
    {
        $new_license_key = $_POST["upgrade_key"];
        $rid = get_rid_by_license_key($new_license_key);
        if ($rid == 0)
        {
            $_SESSION["error_upgrade_key"] = true;
            //Invalid license key
        }
        else
        {
            set_key_used($new_license_key);
            update_group_table($rid, $gid);
        }
        echo '<script>window.location.href = "../../dashboard/manage_group.php";</script>';
    }
}

function update_group_table($rid, $gid)
{
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    $statement = $pdo->prepare("UPDATE dashboard_groups SET rid = ? WHERE gid=?;");
    $statement->execute(array($rid, $gid));
}

?>