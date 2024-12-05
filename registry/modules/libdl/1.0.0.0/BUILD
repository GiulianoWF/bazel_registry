cc_import(
    name = "libdl-lib",
    shared_library = "lib64/libdl.so",
    hdrs = glob(["**/*.h"]),
    includes = ["."],
)

cc_shared_library(
    name = "libdl",
    deps = [":libdl-lib"],
    exports_filter = [":libdl-lib"],
    visibility = ["//visibility:public"],
)