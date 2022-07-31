<?php
$data = new mysqli("localhost", "root", "Mast400bose*", "Game_System");
if ($data->connect_errno) {
    echo "<p>Error was found $data->errno --> $data->connect_error</p>";
    die();
}
$data->query("use Game_System");

$data->query("SET NAMES 'utf8'");
$data->query("SET character_set_connection=utf8");
$data->query("SET character_set_client=utf8");
$data->query("SET character_set_results=utf8");

/*$search = $data->query("select * from genres");
if (!$search) {
    echo "<p>Search failed! $data->error</p>";
} else {
    while ($rec = $search->fetch_object()) {
        print_r($rec);
    }
}*/
