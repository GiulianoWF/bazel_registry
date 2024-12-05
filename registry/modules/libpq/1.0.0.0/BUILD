package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libpq-libimport",
    shared_library = "lib64/libpq.so.5",
    hdrs = glob(["include/postgresql/**/*.h"]),
    includes = ["include"],
)

cc_library(
    name = "libpq-lib",
    deps = [
        ":libpq-libimport",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "libpq",
    deps = [":libpq-lib"],
    exports_filter = [":libpq-lib"],
    visibility = ["//visibility:public"],
)
