package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libfreetype-libimport",
    shared_library = "lib64/libfreetype.so.6",
    hdrs = glob(["include/freetype2/**/*.h"]),
    includes = ["include/freetype2"],
)

cc_library(
    name = "freetype2-lib",
    deps = [
        ":libfreetype-libimport",
    ],
    visibility = ["//visibility:public"],
    hdrs = glob(["include/freetype2/**/*.h"]),
    includes = ["include/freetype2"],
)

cc_shared_library(
    name = "freetype2",
    deps = [":freetype2-lib"],
    exports_filter = [":freetype2-lib"],
    visibility = ["//visibility:public"],
)
