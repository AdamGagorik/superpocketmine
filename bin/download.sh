#!/bin/bash
cd ~
mkdir pocketmine
cd ./pocketmine
wget -q -O - https://raw.githubusercontent.com/PocketMine/php-build-scripts/master/installer.sh | bash -s - -v stable

# stable
# beta
# development
