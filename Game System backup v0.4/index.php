<!DOCTYPE html>
<html>

<head>
    <meta charset="utf8">
    <title>Game System</title>
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

</head>

<body>
    <?php
    require_once "includes/database.php";
    require_once "includes/login.php";
    require_once "includes/functions.php";
    $order = $_GET['o'] ?? "n";
    $key = $_GET['c'] ?? "";
    ?>
    <div id="body">

        <h1>Please, choose your game:</h1>
        <?php include_once "enter.php"; ?>
        <form method="get" id="search" action="index.php">
            Order:
            <a href="index.php?o=n&c=<?php echo $key ?>">Name</a> |
            <a href="index.php?o=p&c=<?php echo $key ?>">Producer</a> |
            <a href="index.php?o=n1&c=<?php echo $key ?>">Highest Rate</a> |
            <a href="index.php?o=n2&c=<?php echo $key ?>">Lowest Rate</a> |
            <a href="index.php">Show all</a> |
            Search: <input type="text" name="c" size="10" maxlength="40" />
            <input type="submit" value="OK" />
        </form>
        <table class="list">
            <?php
            $q = "select ga.cod, ga.name, ge.genre, p.producer, ga.cover from games as ga 
            join genres as ge on ga.genre = ge.cod join producers as p on ga.producer = p.cod ";

            if (!empty($key)) {
                $q .= "WHERE ga.name LIKE
                 '%$key%' OR p.producer LIKE '%$key%' OR ge.genre LIKE '%$key%' ";
            }

            switch ($order) {
                case "p":
                    $q .= "ORDER BY p.producer";
                    break;
                case "n1":
                    $q .= "ORDER BY ga.rate DESC";
                    break;
                case "n2":
                    $q .= "ORDER BY ga.rate";
                    break;
            }

            $search = $data->query($q);
            if (!$search) {
                echo "<tr><td>Unfortunately your search was unsuccessful.";
            } else {
                if ($search->num_rows == 0) {
                    echo "<tr><td>None records were found.";
                } else {
                    while ($rec = $search->fetch_object()) {
                        $t = thumb($rec->cover);
                        echo "<tr><td><img src='$t' class='mini'/>";
                        echo "<td><a href='details.php?cod=$rec->cod'>$rec->name</a>";
                        echo "[$rec->genre]";
                        echo "<br/>$rec->producer";
                        echo "<td>admin";
                    }
                }
            }
            ?>
        </table>
    </div>
    <?php include_once "footer.php"; ?>
</body>


</html>