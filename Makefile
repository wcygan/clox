default:
	cmake -S . -B cmake-build-debug
	make -C cmake-build-debug

run:
	./cmake-build-debug/clox

clean:
	rm -rf cmake-build-debug