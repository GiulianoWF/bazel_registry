package(default_visibility = ["//visibility:public"])

cc_import(
    name = "sqlite3-lib-import",
    shared_library = "lib64/libsqlite3.so.0",
    hdrs = ["include/sqlite3.h"],
    includes = ["include"],
)

cc_library(
    name = "sqlite3-lib",
    deps = [":sqlite3-lib-import"],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "sqlite3",
    deps = [":sqlite3-lib"],
    exports_filter = [":sqlite3-lib"],
    visibility = ["//visibility:public"],
)
