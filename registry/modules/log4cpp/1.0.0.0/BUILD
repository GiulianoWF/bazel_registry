package(default_visibility = ["//visibility:public"])

cc_import(
    name = "log4cpp-libimport",
    shared_library = "lib64/liblog4cpp.so.5",
    hdrs = glob(["include/log4cpp/**/*.h"]),
    includes = ["include"],
)

cc_library(
    name = "log4cpp-lib",
    deps = [
        ":log4cpp-libimport",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "log4cpp",
    deps = [":log4cpp-lib"],
    exports_filter = [":log4cpp-lib"],
    visibility = ["//visibility:public"],
)