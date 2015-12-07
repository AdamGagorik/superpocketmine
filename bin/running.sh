#!/bin/bash -e

if pgrep "php" > /dev/null; then
    echo "The server is probably running."
    echo ""
else
    echo "The server is probably stopped."
    echo ""
fi

ps aux | grep "SCREEN.*pocketmine"  | grep -v grep
