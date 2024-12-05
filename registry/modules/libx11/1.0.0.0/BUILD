package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libx11-libimport",
    shared_library = "lib64/libX11.so.6",
    hdrs = glob(["include/X11/**/*.h"]),
    includes = ["include"],
)

cc_library(
    name = "libx11-lib",
    deps = [
        ":libx11-libimport",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "libx11",
    deps = [":libx11-lib"],
    exports_filter = [":libx11-lib"],
    visibility = ["//visibility:public"],
)
