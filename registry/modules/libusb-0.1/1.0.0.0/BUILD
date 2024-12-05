package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libusb-0.1-libimport",
    shared_library = "lib64/libusb-0.1.so.4",
    hdrs = ["include/usb.h"],
    includes = ["include"],
)

cc_library(
    name = "libusb-0.1-lib",
    deps = [
        ":libusb-0.1-libimport",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "libusb-0.1",
    deps = [":libusb-0.1-lib"],
    exports_filter = [":libusb-0.1-lib"],
    visibility = ["//visibility:public"],
)
