#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0) && pwd)

cd ${SCRIPT_DIR}

wget https://www.adminer.org/latest.php -O adminer.php
wget https://raw.githubusercontent.com/vrana/adminer/master/designs/nette/adminer.css -O adminer.css
wget https://raw.github.com/vrana/adminer/master/plugins/plugin.php -P plugins
wget https://raw.github.com/vrana/adminer/master/plugins/dump-date.php -P plugins