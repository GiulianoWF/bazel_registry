package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libapr-1-libimport",
    shared_library = "lib64/libapr-1.so.0",
    hdrs = glob(["include/apr-1/**/*.h"]),
    includes = ["include/apr-1"],
)

cc_import(
    name = "libaprutil-1-libimport",
    shared_library = "lib64/libaprutil-1.so.0",
    hdrs = glob(["include/apr-1/**/*.h"]),
    includes = ["include/apr-1"],
)

cc_library(
    name = "apache-lib",
    hdrs = glob([
        "include/httpd/**/*.h",
        "include/apr-1/**/*.h",
    ]),
    includes = [
        "include/httpd",
        "include/apr-1",
    ],
    deps = [
        ":libapr-1-libimport",
        ":libaprutil-1-libimport",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "apache",
    deps = [":apache-lib"],
    exports_filter = [":apache-lib"],
    visibility = ["//visibility:public"],
)