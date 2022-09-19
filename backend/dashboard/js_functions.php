<?php

function redirect($url)
{
    echo "<script>window.location.href = '$url';</script>";
}

function console_log($data)
{
    echo '<script>console.log("' . $data . '");</script>';
}

?>