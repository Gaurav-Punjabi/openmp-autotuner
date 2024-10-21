CC=clang++

interceptor:
	$(CC) -shared -fPIC -o interceptors/fork_interceptor.so interceptors/fork_interceptor.cpp -ldl
	$(CC) -fopenmp -o foobar foobar.cpp
