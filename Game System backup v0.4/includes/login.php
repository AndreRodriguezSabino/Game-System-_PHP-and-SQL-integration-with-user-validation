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
