package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libxrandr-libimport",
    shared_library = "lib64/libXrandr.so.2",
    hdrs = ["include/X11/extensions/Xrandr.h"],
    includes = ["include"],
)

cc_library(
    name = "libxrandr-lib",
    deps = [
        ":libxrandr-libimport",
        "@@libx11~//:libx11-lib",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "libxrandr",
    deps = [":libxrandr-lib"],
    exports_filter = [":libxrandr-lib"],
    visibility = ["//visibility:public"],
)
