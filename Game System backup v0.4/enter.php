<?php
echo "<header style='padding-bottom: 30px';>";
if (empty($_SESSION['user'])) {
    echo "<a href='user_login.php'>login</a>";
} else {
    echo "Hello, " . $_SESSION['name'] . "|";
    echo "<a href='user_login.php'>Log out </a>";
}
echo "</header>";
