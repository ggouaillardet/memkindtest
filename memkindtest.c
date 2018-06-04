#include <dlfcn.h>

#include "MemkindTest.h"
void Java_MemkindTest_dlopen (JNIEnv *env, jclass obj) {
    void * handle;
    handle = dlopen("libmemkind.so", RTLD_LAZY);
    dlclose(handle);
}

