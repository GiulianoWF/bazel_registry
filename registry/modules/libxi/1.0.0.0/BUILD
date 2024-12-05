package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libxi-libimport",
    shared_library = "lib64/libXi.so.6",
    hdrs = [
        "include/X11/extensions/XInput.h",
        "include/X11/extensions/XInput2.h"
    ],
    includes = ["include"],
)

cc_library(
    name = "libxi-lib",
    deps = [
        ":libxi-libimport",
        "@@libx11~//:libx11-lib",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "libxi",
    deps = [":libxi-lib"],
    exports_filter = [":libxi-lib"],
    visibility = ["//visibility:public"],
)
