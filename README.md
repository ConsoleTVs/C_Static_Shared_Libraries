# Static and Shared libraries examples using C

This example show how to build static or shared libraries using C

## Building

- Shared library: Used to generate a .dll or .so and further embeed a run-time link with your program. The .dll / .so is required to run it.
- Static library: The library code is linked at compile time with your program, removing the need for a .dll / .so but increasing file size.

### Using the Mailfile

#### Static library

```
make static
```

#### Shared library

```
make shared
```

### Using gcc

#### Static library

```
gcc -c library/calculator.c -o library/calculator.o
ar rcs static_library/calculator.a library/calculator.o
gcc source/main.c -o bin/main_static.exe static_library/calculator.a
```

#### Shared library

```
gcc -c library/calculator.c -o library/calculator.o
gcc -shared library/calculator.o -o shared_library/calculator.dll
cp shared_library/calculator.dll bin/calculator.dll
gcc source/main.c -o bin/main_shared.exe shared_library/calculator.dll
```
