package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libxml2-libimport",
    shared_library = "lib64/libxml2.so.2",
    hdrs = glob(["include/libxml2/**/*.h"]),
    includes = ["include/libxml2"],
)

cc_library(
    name = "libxml2-lib",
    deps = [
        ":libxml2-libimport",
        "@@icu~//:icu-lib",
    ],
    visibility = ["//visibility:public"],
    hdrs = glob(["include/libxml2/**/*.h"]),
    includes = ["include/libxml2"],
)

cc_shared_library(
    name = "libxml2",
    deps = [":libxml2-lib"],
    exports_filter = [":libxml2-lib"],
    visibility = ["//visibility:public"],
)
