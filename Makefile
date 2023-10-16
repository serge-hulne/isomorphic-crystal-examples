all : ex1 ex2

ex1 : src/ex1/app.cr src/ex1/css.cr src/ex1/register.cr src/ex1/state.cr
	crystal build -D preview_mt ./src/ex1/app.cr -o ex1

ex2 : src/ex2/app.cr src/ex2/css.cr src/ex2/register.cr src/ex2/state.cr
	crystal build -D preview_mt ./src/ex2/app.cr -o ex2

libs:
	shards install

run :
	./ex1

clean :
	rm -rf   ex1 ex2 *.dwarf lib shard.lock

fmt:
	crystal tool  format .
