<?php

session_start();

if (!isset($_SESSION['user'])) {
    $_SESSION['user'] = "";
    $_SESSION['name'] = "";
    $_SESSION['type'] = "";
}

function crypto($password)
{
    $cr = '';
    for ($position = 0; $position < strlen($password); $position++) {
        $spell = ord($password[$position]) + 1;
        $cr .= chr($spell);
    }
    return $cr;
}
function generateHash($password)
{
    $txt = crypto($password);
    $hash = password_hash($password, PASSWORD_DEFAULT);
    return $hash;
}

function hashTest($password, $hash)
{
    $ok = password_verify($password, $hash);
    return $ok;
}

/*if (hashTest('Test', '$2y$10$VMubEd9bz7jzcNib2xbGqOoGIdI9C6uuNbxvccVQrQoMIqtjpsn.i')) {
    echo "Your user was successfully logged.</br>";
} else {
    echo "Incorrect password, try it again...</br>";
}

echo generateHash('Linux');*/

crypto('admin');

function logout()
{
    unset($_SESSION['user']);
    unset($_SESSION['name']);
    unset($_SESSION['type']);
}

function is_logged()
{
    if (empty($_SESSION['user'])) {
        return false;
    } else {
        return true;
    }
}

function is_admin()
{
    $t = $_SESSION['type'] ?? null;
    if (is_null($t)) {
        return false;
    } else {
        if ($t == 'admin') {
            return true;
        } else {
            return false;
        }
    }
}

function is_editor()
{
    $t = $_SESSION['type'] ?? null;
    if (is_null($t)) {
        return false;
    } else {
        if ($t == 'editor') {
            return true;
        } else {
            return false;
        }
    }
}
