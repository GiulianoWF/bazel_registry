package(default_visibility = ["//visibility:public"])

cc_import(
    name = "boost_thread-libimport",
    shared_library = "lib64/libboost_thread.so.1.66.0",
    hdrs = glob(["include/boost/thread/**/*.hpp"]),
    includes = ["include"],
)

cc_import(
    name = "boost_filesystem-libimport",
    shared_library = "lib64/libboost_filesystem.so.1.66.0",
    hdrs = glob(["include/boost/filesystem/**/*.hpp"]),
    includes = ["include"],
)

cc_import(
    name = "boost_regex-libimport",
    shared_library = "lib64/libboost_regex.so.1.66.0",
    hdrs = glob(["include/boost/regex/**/*.hpp"]),
    includes = ["include"],
)

cc_import(
    name = "boost_locale-libimport",
    shared_library = "lib64/libboost_locale.so.1.66.0",
    hdrs = glob(["include/boost/locale/**/*.hpp"]),
    includes = ["include"],
)

cc_import(
    name = "boost_iostreams-libimport",
    shared_library = "lib64/libboost_iostreams.so.1.66.0",
    hdrs = glob(["include/boost/iostreams/**/*.hpp"]),
    includes = ["include"],
)

cc_import(
    name = "boost_date_time-libimport",
    shared_library = "lib64/libboost_date_time.so.1.66.0",
    hdrs = glob(["include/boost/date_time/**/*.hpp"]),
    includes = ["include"],
)

cc_import(
    name = "boost_system-libimport",
    shared_library = "lib64/libboost_system.so.1.66.0",
    hdrs = glob(["include/boost/system/**/*.hpp"]),
    includes = ["include"],
)

cc_import(
    name = "boost_log_setup-libimport",
    shared_library = "lib64/libboost_log_setup.so.1.66.0",
    hdrs = glob(["include/boost/log/**/*.hpp"]),
    includes = ["include"],
)

cc_import(
    name = "boost_log-libimport",
    shared_library = "lib64/libboost_log.so.1.66.0",
    hdrs = glob(["include/boost/log/**/*.hpp"]),
    includes = ["include"],
)

cc_import(
    name = "boost_program_options-libimport",
    shared_library = "lib64/libboost_program_options.so.1.66.0",
    hdrs = glob(["include/boost/program_options/**/*.hpp"]),
    includes = ["include"],
)

cc_library(
    name = "boost-lib",
    deps = [
        ":boost_thread-libimport",
        ":boost_filesystem-libimport",
        ":boost_regex-libimport",
        ":boost_locale-libimport",
        ":boost_iostreams-libimport",
        ":boost_date_time-libimport",
        ":boost_system-libimport",
        ":boost_log_setup-libimport",
        ":boost_log-libimport",
        ":boost_program_options-libimport",
    ],
    hdrs = glob(["include/boost/**/*.hpp", "include/boost/**/*.h"]),
    includes = ["include"],
    visibility = ["//visibility:public"],
)

cc_shared_library(
    name = "boost",
    deps = [":boost-lib"],
    exports_filter = [
        ":boost_thread-libimport",
        ":boost_filesystem-libimport",
        ":boost_regex-libimport",
        ":boost_locale-libimport",
        ":boost_iostreams-libimport",
        ":boost_date_time-libimport",
        ":boost_system-libimport",
        ":boost_log_setup-libimport",
        ":boost_log-libimport",
        ":boost_program_options-libimport",
    ],
    visibility = ["//visibility:public"],
)