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
