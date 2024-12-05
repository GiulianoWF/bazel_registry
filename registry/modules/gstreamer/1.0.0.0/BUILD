package(default_visibility = ["//visibility:public"])

cc_import(
    name = "gstreamer-1.0-lib",
    shared_library = "lib64/libgstreamer-1.0.so.0",
    hdrs = glob(["include/gstreamer-1.0/gst/**/*.h"]),
    includes = ["include/gstreamer-1.0"],
)

cc_import(
    name = "gstaudio-1.0-lib",
    shared_library = "lib64/libgstaudio-1.0.so.0",
    hdrs = glob(["include/gstreamer-1.0/gst/audio/**/*.h"]),
    includes = ["include/gstreamer-1.0"],
)

cc_library(
    name = "gstreamer-1.0",
    deps = [
        ":gstreamer-1.0-lib",
        ":gstaudio-1.0-lib",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "gstreamer",
    deps = [":gstreamer-1.0"],
    exports_filter = [":gstreamer-1.0"],
    visibility = ["//visibility:public"],
)