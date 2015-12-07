all: help running

help:
	-@echo ""
	-@echo "+-----------------------+"
	-@echo "| MINECRAFT PE SERVER   |"
	-@echo "+-----------------------+"
	-@echo ""
	-@echo "  make start     : start server"
	-@echo "  make stop      : stop server"
	-@echo "  make game      : attach to server (USE CTRL-A d to exit!)"
	-@echo "  make running   : show if server is running"
	-@echo ""

start: help
	-@echo "+-----------------------+"
	-@echo "| START                 |"
	-@echo "+-----------------------+"
	-@echo ""
	-@./bin/start.sh
	-@echo ""

stop: help
	-@echo "+-----------------------+"
	-@echo "| STOP                  |"
	-@echo "+-----------------------+"
	-@echo ""
	-@./bin/stop.sh
	-@echo ""

game:
	-@./bin/attach.sh

running: help
	-@echo "+-----------------------+"
	-@echo "| RUNNING               |"
	-@echo "+-----------------------+"
	-@echo ""
	-@ps aux | grep "SCREEN.*pocketmine"  | grep -v grep
	-@echo ""

.PHONY: log
log:
	tail -n 100 ./log/server.log

