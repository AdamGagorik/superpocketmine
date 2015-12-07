#!/bin/bash -e
TOPLEVEL=`git rev-parse --show-toplevel`

cd "${TOPLEVEL}" 
cd ./pocketmine

if pgrep "php" > /dev/null; then
    echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    echo ""
    echo "Please stop any existing servers before starting a new one."
    echo ""
    echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    exit -1
fi

echo "****************************************"
echo "* POCKETMINE SERVER STARTED            *"
echo "****************************************"

screen -d -m -L -c ../bin/screenrc -S pocketmine ../bin/wrap.sh ./start.sh

cd "${TOPLEVEL}" 
