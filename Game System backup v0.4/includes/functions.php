<?php
function thumb($arc)
{
    $path = "pics/$arc";
    if (is_null($arc) || !file_exists($path)) {
        return "pics/unavailable.png";
    } else {
        return $path;
    }
}

function goBack()
{
    return "<a href='index.php'><span class='material-symbols-outlined'>
        arrow_back_ios
    </span></a>";
}

function msg_successful($m)
{
    $answer = "<div class='successful'><span class='material-symbols-outlined'>
    check_circle
    </span>$m</div>";
    return $answer;
}
function msg_warning($m)
{
    $answer = "<div class='warning'><span class='material-symbols-outlined'>
    info
    </span>$m</div>";
    return $answer;
}
function msg_error($m)
{
    $answer = "<div class='error'><span class='material-symbols-outlined'>
    error
    </span>$m</div>";
    return $answer;
}
