<!DOCTYPE html>
<html>

<head>
    <meta charset="utf8">
    <title>User Login - Game System</title>
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
        $u = $_POST['user_'] ?? null;
        $p = $_POST['password_'] ?? null;

        if (is_null($u) || is_null($p)) {
            require "user-login-form.php";
        } else {
            $q = "SELECT users, name_user, passwd, type_user from 
            users_game WHERE users = '$u' LIMIT 1";
            $search = $data->query($q);
            if (!$search) {
                echo msg_error('Database access failed!');
            } else {
                if ($search->num_rows > 0) {
                    $rec = $search->fetch_object();
                    if (hashTest($p, $rec->passwd)) {
                        echo msg_successful(' Logged successfully');
                        $_SESSION['user'] = $rec->users;
                        $_SESSION['name'] = $rec->name_user;
                        $_SESSION['type'] = $rec->type_user;
                    } else {
                        echo msg_error(' Incorrect Password!');
                    }
                } else {
                    echo msg_error(' User does not exist!');
                }
            }
        }
        echo "<br>" . goBack();
        ?>
    </div>
    <?php require_once "footer.php"; ?>
</body>

</html>