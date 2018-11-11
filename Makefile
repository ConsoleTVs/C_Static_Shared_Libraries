static: static_library/calculator.a
	gcc source/main.c -o bin/main_static.exe $^

static_library/calculator.a: library/calculator.o
	ar rcs static_library/calculator.a $^

shared: shared_library/calculator.dll
	gcc source/main.c -o bin/main_shared.exe $^

shared_library/calculator.dll: library/calculator.o
	gcc -shared $^ -o shared_library/calculator.dll
	cp shared_library/calculator.dll bin/calculator.dll

library/calculator.o:
	gcc -c library/calculator.c -o library/calculator.o
