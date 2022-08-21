<!DOCTYPE html>
<html>

<head>
    <meta charset="utf8">
    <title>Edit User Details</title>
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <style>
        div#body {
            width: 500px;
            font-size: 13pt;
            margin-top: 250px;
            border-radius: 30px;
        }

        td {
            padding: 6px;
        }
    </style>
</head>

<body>
    <?php
    require_once "includes/database.php";
    require_once "includes/login.php";
    require_once "includes/functions.php";
    ?>
    <div id="body">
        <?php
        if (!is_logged()) {
            echo msg_error("Proceed with your <a href='user_login.php'>login</a> to edit your data.");
        } else {
            if (!isset($_POST['user'])) {
                include "edit-user-form.php";
            } else {
                $user = $_POST['user'] ?? null;
                $name = $_POST['name'] ?? null;
                $type = $_POST['type'] ?? null;
                $password1 = $_POST['password1'] ?? null;
                $password2 = $_POST['password2'] ?? null;

                $q = "update users_game set users = '$user', name_user = '$name'";
                if (empty($password1) || is_null($password1)) {
                    echo msg_warning("Previous password kept.");
                } else {
                    if ($password1 === $password2) {
                        $password = generateHash($password1);
                        $q .= ", passwd='$password'";
                    } else {
                        echo msg_error("Passwords do not match!");
                    }
                }
                $q .= " where users = '" . $_SESSION['user'] . "'";

                if ($data->query($q)) {
                    echo msg_successful(" User was modified successfully!");
                    logout();
                    echo msg_warning(" By safety reasons, please <a href='user_login.php'>login</a> again.");
                } else {
                    echo msg_error(" It was not possible to modify the user details.");
                }
            }
        }
        echo goBack();
        ?>
    </div>
    <?php require_once "footer.php"; ?>
</body>

</html>