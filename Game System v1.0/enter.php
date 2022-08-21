<?php
echo "<header style='padding-bottom: 30px';>";
if (empty($_SESSION['user'])) {
    echo "<a href='user_login.php'>login</a>";
} else {
    echo "Hello, " . $_SESSION['name'] . " | ";
    echo "<a href='edit-user.php'>My details</a> | ";
    if (is_admin()) {
        echo "<a href='new-user.php'>New user</a> | ";
        echo "New game | ";
    }
    echo "<a href='user_logout.php'>Log out </a>";
}
echo "</header>";
