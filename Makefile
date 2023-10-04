all :
	crystal build -D preview_mt ./src/gui.cr -o MyApp

run :
	./MyApp

clean :
	rm -rf .git MyApp MyApp.dwarf lib shard.lock

fmt:
	crystal tool  format .
