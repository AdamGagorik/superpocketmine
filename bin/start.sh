#!/bin/bash -e

cd ~
cd ./pocketmine

echo "****************************************"
echo "* POCKETMINE SERVER STARTED            *"
echo "****************************************"

screen -d -m -L -c ../bin/screenrc -S pocketmine ../bin/wrap.sh ./start.sh

cd ~
