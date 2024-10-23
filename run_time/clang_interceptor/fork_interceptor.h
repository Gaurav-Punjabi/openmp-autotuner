#include <iostream>

extern "C" {
	void __kmpc_fork_call(void *, int, void *);
}
