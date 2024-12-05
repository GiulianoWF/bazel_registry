package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libdb-libimport",
    shared_library = "lib64/libdb-6.so",
    hdrs = glob(["include/libdb/**/*.h"]),
    includes = ["include"],
)

cc_library(
    name = "libdb-lib",
    deps = [
        ":libdb-libimport",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "libdb",
    deps = [":libdb-lib"],
    exports_filter = [":libdb-lib"],
    visibility = ["//visibility:public"],
)
