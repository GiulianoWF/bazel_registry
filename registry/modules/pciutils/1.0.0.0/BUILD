package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libpci-import",
    shared_library = "lib64/libpci.so.3",
    hdrs = glob(["include/pci/**/*.h"]),
    includes = ["include"],
)

cc_import(
    name = "libpciaccess-import",
    shared_library = "lib64/libpciaccess.so.0",
    hdrs = glob(["include/pciaccess.h"]),
    includes = ["include"],
)

cc_library(
    name = "pciutils-lib",
    deps = [
        ":libpci-import",
        ":libpciaccess-import",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "pciutils",
    deps = [":pciutils-lib"],
    exports_filter = [":pciutils-lib"],
    visibility = ["//visibility:public"],
)
