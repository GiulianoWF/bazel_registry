package(default_visibility = ["//visibility:public"])

exports_files(glob(["include/**/*.h"]))

cc_import(
    name = "protobuf-lib-import",
    shared_library = "lib64/libprotobuf.so",
    # hdrs = glob(["include/**/*.h"]),
)

cc_library(
    name = "protobuf-lib",
    hdrs = glob([
        "include/**/*.h",
        "include/**/*.inc",
    ]),
    includes = ["include"],
    deps = [":protobuf-lib-import"],
)

cc_shared_library(
    name = "protobuf",
    deps = [":protobuf-lib"],
    exports_filter = [":protobuf-lib"],
)
