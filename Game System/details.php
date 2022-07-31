<!DOCTYPE html>
<html>

<head>
    <meta charset="utf8">
    <title>Game System</title>
    <link rel="stylesheet" href="style/style.css">
</head>

<body>
    <?php
    require_once "includes/database.php";
    require_once "includes/functions.php";
    ?>
    <div id="body">
        <?php
        include_once "enter.php";
        $c = $_GET['cod'] ?? 0;
        $search = $data->query("select * from games where cod='$c'");
        ?>
        <h1>Game Details</h1>
        <table class='details'>
            <?php
            if ($search->num_rows == 1) {
                $rec = $search->fetch_object();
                $t = thumb($rec->cover);
                echo "<tr><td rowspan='3'><img src='$t' class='full'/>";
                echo "<td><h2>$rec->name</h2>";
                echo "Rate: " . number_format($rec->rate, 1) . "/10.0";
                echo "<tr><td>$rec->description";
                echo "<tr><td>Admin";
            } else {
                echo "<tr><td>None records found!";
            }
            ?>
        </table>
        <a href="index.php"><img src="icons/icoback.png" /></a>
    </div>
    </div>
    <?php include_once "footer.php"; ?>
</body>

</html>