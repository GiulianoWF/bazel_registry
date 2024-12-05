package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libicuuc-libimport",
    shared_library = "lib64/libicuuc.so.60",
    hdrs = glob(["include/unicode/**/*.h"]),
    includes = ["include"],
)

cc_import(
    name = "libicudata-libimport",
    shared_library = "lib64/libicudata.so.60",
    includes = ["include"],
)

cc_library(
    name = "icu-lib",
    deps = [
        ":libicuuc-libimport",
        ":libicudata-libimport",
    ],
    hdrs = glob([
        "include/unicode/**/*.h",
        "include/unicode/*.h",
    ]),
    includes = ["include"],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "icu",
    deps = [":icu-lib"],
    exports_filter = [":icu-lib"],
    visibility = ["//visibility:public"],
)