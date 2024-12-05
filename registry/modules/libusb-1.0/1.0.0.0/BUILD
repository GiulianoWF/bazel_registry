package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libusb-1.0-libimport",
    shared_library = "lib64/libusb-1.0.so.0",
    hdrs = ["include/libusb-1.0/libusb.h"],
    includes = ["include/libusb-1.0"],
)

cc_library(
    name = "libusb-1.0-lib",
    deps = [
        ":libusb-1.0-libimport",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "libusb-1.0",
    deps = [":libusb-1.0-lib"],
    exports_filter = [":libusb-1.0-lib"],
    visibility = ["//visibility:public"],
)

