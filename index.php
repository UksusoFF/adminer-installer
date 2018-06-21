<?php

function adminer_object()
{
    include_once "./plugins/plugin.php";
    include_once "./plugins/dump-date.php";

    $plugins = [
        new AdminerDumpDate,
    ];

    return new AdminerPlugin($plugins);
}

include "./adminer.php";
