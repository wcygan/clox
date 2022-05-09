FILE := scripts/hello.lox

default:
	make clean
	cmake -S . -B cmake-build-debug
	make -C cmake-build-debug
	cp cmake-build-debug/clox .

run:
	make
	./clox ${FILE}

clean:
	rm -f clox
	rm -rf cmake-build-debug