all :
	crystal build -D preview_mt ./src/ex1/app.cr -o ex1

libs:
	shards install

run :
	./ex1

clean :
	rm -rf   ex1 ex1.dwarf lib shard.lock

fmt:
	crystal tool  format .
