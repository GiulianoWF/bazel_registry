package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libudev-libimport",
    shared_library = "lib64/libudev.so.1",
    hdrs = ["include/libudev.h"],
    includes = ["include"],
)

cc_library(
    name = "libudev-lib",
    deps = [
        ":libudev-libimport",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "libudev",
    deps = [":libudev-lib"],
    exports_filter = [":libudev-lib"],
    visibility = ["//visibility:public"],
)