package(default_visibility = ["//visibility:public"])

cc_import(
    name = "libssl-import",
    shared_library = "lib64/libssl.so.1.1",
    hdrs = glob(["include/openssl/*.h"]),
    includes = ["include"],
)

cc_import(
    name = "libcrypto-import",
    shared_library = "lib64/libcrypto.so.1.1",
    hdrs = glob(["include/openssl/*.h"]),
    includes = ["include"],
)

cc_library(
    name = "openssl-lib",
    deps = [
        ":libssl-import",
        ":libcrypto-import",
    ],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "openssl",
    deps = [":openssl-lib"],
    exports_filter = [":openssl-lib"],
    visibility = ["//visibility:public"],
)
