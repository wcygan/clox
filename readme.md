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

## CLion

I'm using [CLion](https://www.jetbrains.com/clion/) to edit my source files. It's pretty nice, however, I sometimes get into messes with CMake & CLion not cooperating nicely. When that happens, I do the following:

1. Close my project
2. Remove the project from CLion's project list
3. execute these commands:

```bash
$ rm -rf .idea
$ rm -rf cmake-build-debug
```

4. Open the project up in CLion *without using our own makefile*

For some reason it isn't a fan of the "UNIX Makefile" and wants to do its own thing instead.