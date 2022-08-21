<!DOCTYPE html>
<html>

<head>
    <meta charset="utf8">
    <title>Add New User</title>
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
        if (!is_admin()) {
            echo msg_error(' Restricted Area! You are not the administrator!');
        } else {
            if (!isset($_POST['user'])) {
                require "new-user-form.php";
            } else {
                $user = $_POST['user'] ?? null;
                $name = $_POST['name'] ?? null;
                $password1 = $_POST['password1'] ?? null;
                $password2 = $_POST['password2'] ?? null;
                $type = $_POST['type'] ?? null;

                if ($password1 === $password2) {
                    if (empty($user) || empty($name) || empty($password1) || empty($password2) || empty($type)) {
                        echo msg_error(" All datas are mandatory!");
                    } else {
                        $password = generateHash($password1);
                        $q = "INSERT INTO users_game (users, name_user, passwd, type_user) VALUES ('$user', '$name', '$password', '$type')";
                        if ($data->query($q)) {
                            echo msg_successful("Success user $user added!");
                        } else {
                            echo msg_error("It was not possible to create user $user.");
                        }
                    }
                } else {
                    echo msg_error(" Passwords do not match. Please re-type the password.");
                }
            }
        }

        echo "<br>" . goBack();
        ?>
    </div>
    <?php require_once "footer.php"; ?>
</body>

</html>