package(default_visibility = ["//visibility:public"])

cc_import(
    name = "zlib-lib-import",
    shared_library = "lib64/libz.so.1",
    hdrs = [
        "include/zlib.h",
        "include/zconf.h",
    ],
    includes = ["include"],
)

cc_library(
    name = "zlib-lib",
    deps = [":zlib-lib-import"],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "zlib",
    deps = [":zlib-lib"],
    exports_filter = [":zlib-lib"],
    visibility = ["//visibility:public"],
)