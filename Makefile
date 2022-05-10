FILE := scripts/hello.lox

default:
	make clean
	make cmake
	# copy the executable from build folder to root folder
	cp cmake-build-debug/clox .

cmake:
	# invoke "cmake" to build the CMake project files
	cmake -S . -B cmake-build-debug
	# invoke "make" to compile the C files into a binary
	make -C cmake-build-debug

run:
	make
	./clox ${FILE}

clean:
	# get rid of all of the build files
	rm -f clox
	rm -rf cmake-build-debug