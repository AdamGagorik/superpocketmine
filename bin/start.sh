#!/bin/bash -e
TOPLEVEL=`git rev-parse --show-toplevel`

cd "${TOPLEVEL}" 
cd ./pocketmine

echo "****************************************"
echo "* POCKETMINE SERVER STARTED            *"
echo "****************************************"

screen -d -m -L -c ../bin/screenrc -S pocketmine ../bin/wrap.sh ./start.sh

cd "${TOPLEVEL}" 
