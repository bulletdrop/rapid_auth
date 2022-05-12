<?php

function check_username_in_use($username)
{
    /*
    This function checks if the username is allready in use
    */
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';

    $statement = $pdo->prepare("SELECT uid FROM dashboard_users WHERE username = ?");
    $statement->execute(array(encrypt_data($username, $key)));   
    if ($statement->fetchColumn() == 0)
        return false;
    
    return true;
}

function check_email_in_use($email)
{
    /*
    This function checks if the email address is allready in use
    */
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    $statement = $pdo->prepare("SELECT uid FROM dashboard_users WHERE email = ?");
    $statement->execute(array(encrypt_data($email, $key)));   
    if ($statement->fetchColumn() == 0)
        return false;
    
    return true;
}

function create_user($username, $password, $email)
{
    /*
    This function creates the user
    */
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';

    $statement = $pdo->prepare("INSERT INTO dashboard_users (username, password, email) VALUES (?, ?, ?);");
    $statement->execute(array(encrypt_data($username, $key), encrypt_data($password, $key), encrypt_data($email, $key)));
}

function passed_password_policy($password)
{
    
    include $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/config.php';
    include_once $_SERVER['DOCUMENT_ROOT'].'/rapid_auth/backend/includes.php';
    
    //Checks if the password is long enough
    if (strlen($password) < $password_length)
        return false;
    
        
    
    if ($needs_lower_char)
    {
        $has_lower_char = false;

        foreach (str_split($password) as $char)
        {
            foreach (str_split($lower_case_chars) as $s_chars)
            {
                if ($char == $s_chars)
                    $has_lower_char = true;
            }
        }

        if (!$has_lower_char)
            return false;
    }
    
    //Checks if the password contains a captial char (if enabled in config.php)
    if ($needs_capital_char)
    {
        $has_captial_char = false;

        foreach (str_split($password) as $char)
        {
            foreach (str_split($captial_chars) as $s_chars)
            {
                if ($char == $s_chars)
                $has_captial_char = true;
            }
        }

        if (!$has_captial_char)
            return false;
    }
    
    //Checks if the password contains a special char (if enabled in config.php)
    if ($needs_special_char)
    {
        $has_special_char = false;

        foreach (str_split($password) as $char)
        {
            foreach (str_split($special_chars) as $s_chars)
            {
                if ($char == $s_chars)
                    $has_special_char = true;
            }
        }

        if (!$has_special_char)
            return false;
    }

    //Checks if the password contains a number (if enabled in config.php)
    if ($needs_number)
    {
        $has_number = false;

        foreach (str_split($password) as $char)
        {
            foreach (str_split($number_chars) as $s_chars)
            {
                if ($char == $s_chars)
                    $has_number = true;
            }
        }

        if (!$has_number)
            return false;
    }

    return true;   
}
?>