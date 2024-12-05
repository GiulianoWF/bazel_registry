package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libxslt-libimport",
    shared_library = "lib64/libxslt.so.1",
    hdrs = glob(["include/libxslt/*.h"]),
    includes = ["include"],
)

cc_library(
    name = "libxslt-lib",
    deps = [
        ":libxslt-libimport",
        "@@libxml2~//:libxml2-lib",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "libxslt",
    deps = [":libxslt-lib"],
    exports_filter = [":libxslt-lib"],
    visibility = ["//visibility:public"],
)

