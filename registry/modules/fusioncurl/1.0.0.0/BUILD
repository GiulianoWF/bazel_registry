package(default_visibility = ["//visibility:public"])


cc_import(
    name = "libcurl-libimport",
    shared_library = "lib64/libcurl.so.4.5.0",
    hdrs = glob(["include/curl/*.h"]),
    includes = ["include"],
)

cc_library(
    name = "curl-lib",
    deps = [
        ":libcurl-libimport",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "curl",
    deps = [":curl-lib"],
    exports_filter = [":curl-lib"],
    visibility = ["//visibility:public"],
)
