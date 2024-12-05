package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libkmod-libimport",
    shared_library = "lib64/libkmod.so.2",
    hdrs = ["include/libkmod.h"],
    includes = ["include"],
)

cc_library(
    name = "libkmod-lib",
    deps = [":libkmod-libimport"],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "libkmod",
    deps = [":libkmod-lib"],
    exports_filter = [":libkmod-lib"],
    visibility = ["//visibility:public"],
)
