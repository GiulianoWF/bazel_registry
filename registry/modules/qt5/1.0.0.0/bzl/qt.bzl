def qt_library(name, dynamic_modules, include_only_modules, lib_dir="lib64", include_dir="include/qt5"):
    for module in dynamic_modules:
        native.cc_import(
            name = "libQt5{}-import".format(module),
            shared_library = "{}/libQt5{}.so.5".format(lib_dir, module),
            hdrs = native.glob([
                "{}/Qt{}/**/*".format(include_dir, module),
                "{}/Qt{}/*".format(include_dir, module),
            ]),
            includes = [include_dir, "{}/Qt{}".format(include_dir, module)],
        )

    for module in include_only_modules:
        native.cc_library(
            name = "libQt5{}-import".format(module),
            hdrs = native.glob([
                "{}/Qt{}/**/*".format(include_dir, module),
                "{}/Qt{}/*".format(include_dir, module),
            ]),
            includes = [include_dir, "{}/Qt{}".format(include_dir, module)],
        )

    all_modules = dynamic_modules + include_only_modules

    native.cc_library(
        name = "qt-lib",
        deps = [":libQt5{}-import".format(module) for module in all_modules],
        includes = ["{}/Qt{}".format(include_dir, module) for module in all_modules],
        defines = ["QT_{}_LIB".format(module.upper()) for module in all_modules],
    )

    native.cc_shared_library(
        name = name,
        deps = [":qt-lib"],
        exports_filter = [":qt-lib"],
    )