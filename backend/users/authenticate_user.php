<?php

$post_username = $_POST["username"];
$post_password = $_POST["password"];

switch (false)
{
    case (strlen($post_password) > 4 && strlen($post_username) > 3):
        echo json_encode(array("status" => "too_short_input"));
        break;
    case (!valid_input($post_username, $post_password)):
        echo json_encode(array("status" => "success"));
        break;
    default:
        echo json_encode(array("status" => "wrong_input"));
        break;
}

function valid_input($username, $password)
{
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT uid FROM dashboard_users WHERE username = ? AND password = ?");
    $statement->execute(array(encrypt_data($username, $key), encrypt_data($password, $key)));   
    if ($statement->fetchColumn() == 0)
        return false;
    
    return true;
}

?>