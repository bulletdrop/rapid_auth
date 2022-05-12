<?php

include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';


$statement = $pdo->prepare("SELECT total_users, total_groups, total_keys, current_date FROM `statistics` ORDER BY id DESC LIMIT 10 ");
$statement->execute(array(0));   
$last_10_stats = array();

while($row = $statement->fetch()) {
    array_push($last_10_stats, array($row["total_users"], $row["total_groups"], $row["total_keys"]));
}

echo json_encode($last_10_stats);

?>