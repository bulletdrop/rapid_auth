<?php

function get_loader_users_by_gid($gid)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT 
    uuid,
    username,
    `password`,
    active,
    key_array,
    windows_username,
    gpu_name,
    gpu_ram,
    drive_count,
    cpu_name,
    cpu_cores,
    os_caption,
    os_serial_number,
    last_ip,
    active_hwid,
    windows_username_attempt,
    gpu_name_attempt,
    gpu_ram_attempt,
    drive_count_attempt,
    cpu_name_attempt,
    cpu_cores_attempt,
    os_caption_attempt,
    os_serials_number_attempt,
    last_ip_attempt FROM loader_users WHERE group_gid=?");

    $statement->execute(array($gid));  
    $users = array();
    while($row = $statement->fetch()) {
        array_push($users, array(
            $row["uuid"],
            decrypt_data($row["username"], $key),
            decrypt_data($row["passwrd"], $key),
            $row["active"],
            $row["key_array"],
            decrypt_data($row["windows_username"], $key),
            decrypt_data($row["gpu_name"], $key),
            $row["gpu_ram"],
            $row["drive_count"],
            decrypt_data($row["cpu_name"], $key),
            $row["cpu_cores"],
            decrypt_data($row["os_caption"], $key),
            decrypt_data($row["os_serial_number"], $key),
            $row["last_ip"],
            $row["active_hwid"],
            decrypt_data($row["windows_username_attempt"], $key),
            decrypt_data($row["gpu_name_attempt"], $key),
            $row["gpu_ram_attempt"],
            $row["drive_count_attempt"],
            decrypt_data($row["cpu_name_attempt"], $key),
            $row["cpu_cores_attempt"],
            decrypt_data($row["os_caption_attempt"], $key),
            decrypt_data($row["os_serials_number_attempt"], $key),
            $row["last_ip_attempt"]
        ));
    }  
    return $users;
}

?>