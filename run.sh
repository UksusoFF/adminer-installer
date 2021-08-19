#!/bin/bash

set -e

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
PLUGIN_DIR="${SCRIPT_DIR}/plugins"
THEME=$1

mkdir -p "${PLUGIN_DIR}"

curl -L https://www.adminer.org/latest.php > "${SCRIPT_DIR}/adminer.php"
curl https://raw.githubusercontent.com/vrana/adminer/master/designs/nette/adminer.css > "${SCRIPT_DIR}/adminer.css"
curl https://raw.githubusercontent.com/vrana/adminer/master/plugins/plugin.php > "${PLUGIN_DIR}/plugin.php"
curl https://raw.githubusercontent.com/vrana/adminer/master/plugins/dump-date.php > "${PLUGIN_DIR}/dump-date.php"

if [ "$THEME" == "dark" ]; then
  cat "adminer-dark.css" >> "adminer.css"
fi