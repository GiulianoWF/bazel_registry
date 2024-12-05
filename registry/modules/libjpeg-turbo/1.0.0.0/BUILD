package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libjpeg-turbo-libimport",
    shared_library = "lib64/libjpeg.so.62",
    hdrs = [
        "include/jpeglib.h",
        "include/jconfig.h",
        "include/jerror.h",
        "include/jmorecfg.h",
    ],
    includes = ["include"],
)

cc_library(
    name = "libjpeg-turbo-lib",
    deps = [":libjpeg-turbo-libimport"],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "libjpeg-turbo",
    deps = [":libjpeg-turbo-lib"],
    exports_filter = [":libjpeg-turbo-lib"],
    visibility = ["//visibility:public"],
)
