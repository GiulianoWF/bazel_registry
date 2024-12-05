package(default_visibility = ["//visibility:public"])

cc_import(
    name = "xerces-c-lib-import",
    shared_library = "lib64/libxerces-c-3.2.so",
    hdrs = glob(["include/xercesc/**/*.h"]),
    includes = ["include"],
)

cc_library(
    name = "xerces-c-lib",
    deps = [":xerces-c-lib-import"],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "xerces-c",
    deps = [":xerces-c-lib"],
    exports_filter = [":xerces-c-lib"],
    visibility = ["//visibility:public"],
)