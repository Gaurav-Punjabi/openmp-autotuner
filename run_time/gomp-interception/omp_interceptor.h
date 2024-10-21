#include <iostream>

extern "C" {

    void GOMP_parallel(void (*fn) (void *), void *data, unsigned num_threads, unsigned int flags);

}
