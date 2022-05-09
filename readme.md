# clox

A virtual-machine for the lox language from [Crafting Interpreters](https://craftinginterpreters.com/).

### Build

Our Makefile just aliases to `cmake` and [CMakeLists.txt](CMakeLists.txt).

```zsh
$ make
```

### Run

Within the [Makefile](Makefile) we specify which script to run by setting the variable called `FILE`. Then,
invoking `make run` will, in turn, invoke `./clox ${FILE}`. 

```zsh
$ make run
```

Alternatively, you can invoke the binary directly:

```zsh
$ ./clox <params>
```

### Clean

Want to get rid of the `cmake-build-debug` directory? Run this...

```zsh
$ make clean
```