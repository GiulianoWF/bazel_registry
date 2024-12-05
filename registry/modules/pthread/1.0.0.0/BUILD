package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libpthread-libimport",
    shared_library = "lib64/libpthread.so.0",
    hdrs = glob(["include/pthread.h"]),
    includes = ["include"],
)

cc_library(
    name = "pthread-lib",
    deps = [":libpthread-libimport"],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "pthread",
    deps = [":pthread-lib"],
    exports_filter = [":pthread-lib"],
    visibility = ["//visibility:public"],
)
