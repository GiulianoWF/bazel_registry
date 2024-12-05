package(default_visibility = ["//visibility:public"])

# Core imports for each Qt library
cc_import(
    name = "libQt5Core-libimport",
    shared_library = "lib64/libQt5Core.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5Gui-libimport",
    shared_library = "lib64/libQt5Gui.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5Network-libimport",
    shared_library = "lib64/libQt5Network.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5Positioning-libimport",
    shared_library = "lib64/libQt5Positioning.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5QmlModels-libimport",
    shared_library = "lib64/libQt5QmlModels.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5Qml-libimport",
    shared_library = "lib64/libQt5Qml.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5Quick-libimport",
    shared_library = "lib64/libQt5Quick.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5QuickWidgets-libimport",
    shared_library = "lib64/libQt5QuickWidgets.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5Sql-libimport",
    shared_library = "lib64/libQt5Sql.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5WebChannel-libimport",
    shared_library = "lib64/libQt5WebChannel.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5WebEngineCore-libimport",
    shared_library = "lib64/libQt5WebEngineCore.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5WebEngine-libimport",
    shared_library = "lib64/libQt5WebEngine.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5WebEngineWidgets-libimport",
    shared_library = "lib64/libQt5WebEngineWidgets.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5Widgets-libimport",
    shared_library = "lib64/libQt5Widgets.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

cc_import(
    name = "libQt5Xml-libimport",
    shared_library = "lib64/libQt5Xml.so",
    hdrs = glob(["include/qt5/**/*"]),
    includes = ["include"],
)

# Combined library target
cc_library(
    name = "qt-lib",
    deps = [
        ":libQt5Core-libimport",
        ":libQt5Gui-libimport",
        ":libQt5Network-libimport",
        ":libQt5Positioning-libimport",
        ":libQt5QmlModels-libimport",
        ":libQt5Qml-libimport",
        ":libQt5Quick-libimport",
        ":libQt5QuickWidgets-libimport",
        ":libQt5Sql-libimport",
        ":libQt5WebChannel-libimport",
        ":libQt5WebEngineCore-libimport",
        ":libQt5WebEngine-libimport",
        ":libQt5WebEngineWidgets-libimport",
        ":libQt5Widgets-libimport",
        ":libQt5Xml-libimport",
    ],
    hdrs = glob([
        "include/qt5/**/*",
    ]),
    includes = [
        "include/qt5",
        "include/qt5/QtCore",
        "include/qt5/QtGui",
        "include/qt5/QtNetwork",
        "include/qt5/QtQml",
        "include/qt5/QtQuick",
        "include/qt5/QtQuickWidgets",
        "include/qt5/QtWebEngineWidgets",
        "include/qt5/QtWebEngine",
        "include/qt5/QtWebChannel",
        "include/qt5/QtSql",
        "include/qt5/QtWidgets",
        "include/qt5/QtXml",
    ],
    visibility = ["//visibility:public"],
)

# Shared library target
cc_shared_library(
    name = "qt5",
    deps = [":qt-lib"],
    exports_filter = [":qt-lib"],
    visibility = ["//visibility:public"],
)