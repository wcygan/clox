FILE := scripts/hello.lox

default:
	rm clox
	rm -rf cmake-build-debug
	cmake -S . -B cmake-build-debug
	make -C cmake-build-debug
	cp cmake-build-debug/clox .

run:
	./clox ${FILE}

clean:
	rm -rf cmake-build-debug