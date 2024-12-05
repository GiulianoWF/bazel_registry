#!/bin/bash

# For now copy from host system, eventually will be from a container or remote repo.
rm -rf /opt/fusion/registry/

mkdir -p /opt/fusion/registry
cat > /opt/fusion/registry/bazel_registry.json << 'EOF'
{
    "mirrors": [],
    "module_base_path": "modules"
}
EOF

# Apache
mkdir -p /opt/fusion/registry/modules/apache/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/apache/1.0.0.0/include/apr-1/
mkdir -p /opt/fusion/registry/modules/apache/1.0.0.0/include/httpd/
cp -f /usr/lib64/libapr-1.so.0 /usr/lib64/libaprutil-1.so.0 /opt/fusion/registry/modules/apache/1.0.0.0/lib64/
cp -rf /usr/include/apr-1/ /opt/fusion/registry/modules/apache/1.0.0.0/include/
cp -rf /usr/include/httpd/ /opt/fusion/registry/modules/apache/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_apache.BUILD /opt/fusion/registry/modules/apache/1.0.0.0/BUILD
echo 'module(name="apache", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/apache/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/apache/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/apache/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "apache/1.0.0.0"
}
EOF

# Boost
mkdir -p /opt/fusion/registry/modules/boost/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/boost/1.0.0.0/include/boost/
cp -f /usr/lib64/libboost_thread.so.1.66.0 /usr/lib64/libboost_filesystem.so.1.66.0 /usr/lib64/libboost_regex.so.1.66.0 /usr/lib64/libboost_locale.so.1.66.0 /usr/lib64/libboost_iostreams.so.1.66.0 /usr/lib64/libboost_date_time.so.1.66.0 /usr/lib64/libboost_system.so.1.66.0 /usr/lib64/libboost_log_setup.so.1.66.0 /usr/lib64/libboost_log.so.1.66.0 /usr/lib64/libboost_program_options.so.1.66.0 /opt/fusion/registry/modules/boost/1.0.0.0/lib64/
cp -rf /usr/include/boost/ /opt/fusion/registry/modules/boost/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_boost.BUILD /opt/fusion/registry/modules/boost/1.0.0.0/BUILD
echo 'module(name="boost", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/boost/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/boost/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/boost/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "boost/1.0.0.0"
}
EOF

# Curl
mkdir -p /opt/fusion/registry/modules/fusioncurl/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/fusioncurl/1.0.0.0/include/curl/
cp -f /usr/lib64/libcurl.so.4.5.0 /opt/fusion/registry/modules/fusioncurl/1.0.0.0/lib64/
cp -rf /usr/include/curl/ /opt/fusion/registry/modules/fusioncurl/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_curl.BUILD /opt/fusion/registry/modules/fusioncurl/1.0.0.0/BUILD
echo 'module(name="fusioncurl", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/fusioncurl/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/fusioncurl/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/fusioncurl/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "fusioncurl/1.0.0.0"
}
EOF

# libdl
mkdir -p /opt/fusion/registry/modules/libdl/1.0.0.0/lib64/
cp -f /usr/lib64/libdl.so /opt/fusion/registry/modules/libdl/1.0.0.0/lib64/
cp -f fusion-custom-external-libs/host_dl.BUILD /opt/fusion/registry/modules/libdl/1.0.0.0/BUILD
echo 'module(name="libdl", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/libdl/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/libdl/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libdl/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libdl/1.0.0.0"
}
EOF

# Freetype2
mkdir -p /opt/fusion/registry/modules/freetype2/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/freetype2/1.0.0.0/include/freetype2/
cp -f /usr/lib64/libfreetype.so.6 /opt/fusion/registry/modules/freetype2/1.0.0.0/lib64/
cp -rf /usr/include/freetype2/ /opt/fusion/registry/modules/freetype2/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_freetype2.BUILD /opt/fusion/registry/modules/freetype2/1.0.0.0/BUILD
echo 'module(name="freetype2", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/freetype2/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/freetype2/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/freetype2/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "freetype2/1.0.0.0"
}
EOF

# GStreamer
mkdir -p /opt/fusion/registry/modules/gstreamer/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/gstreamer/1.0.0.0/include/gstreamer-1.0/gst/
cp -f /usr/lib64/libgstreamer-1.0.so.0 /usr/lib64/libgstaudio-1.0.so.0 /opt/fusion/registry/modules/gstreamer/1.0.0.0/lib64/
cp -rf /usr/include/gstreamer-1.0/gst/ /opt/fusion/registry/modules/gstreamer/1.0.0.0/include/gstreamer-1.0/
cp -f fusion-custom-external-libs/host_gstreamer.BUILD /opt/fusion/registry/modules/gstreamer/1.0.0.0/BUILD
echo 'module(name="gstreamer", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/gstreamer/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/gstreamer/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/gstreamer/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "gstreamer/1.0.0.0"
}
EOF

# ICU
mkdir -p /opt/fusion/registry/modules/icu/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/icu/1.0.0.0/include/unicode/
cp -f /usr/lib64/libicuuc.so.60 /usr/lib64/libicudata.so.60 /opt/fusion/registry/modules/icu/1.0.0.0/lib64/
cp -rf /usr/include/unicode/ /opt/fusion/registry/modules/icu/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_icu.BUILD /opt/fusion/registry/modules/icu/1.0.0.0/BUILD
echo 'module(name="icu", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/icu/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/icu/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/icu/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "icu/1.0.0.0"
}
EOF

# Continue with remaining libraries following the same pattern...
# Libjpeg-turbo
mkdir -p /opt/fusion/registry/modules/libjpeg-turbo/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libjpeg-turbo/1.0.0.0/include/
cp -f /usr/lib64/libjpeg.so.62 /opt/fusion/registry/modules/libjpeg-turbo/1.0.0.0/lib64/
cp -f /usr/include/jpeglib.h /usr/include/jconfig.h /usr/include/jerror.h /usr/include/jmorecfg.h /opt/fusion/registry/modules/libjpeg-turbo/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_libjpeg-turbo.BUILD /opt/fusion/registry/modules/libjpeg-turbo/1.0.0.0/BUILD
echo 'module(name="libjpeg-turbo", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/libjpeg-turbo/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/libjpeg-turbo/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libjpeg-turbo/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libjpeg-turbo/1.0.0.0"
}
EOF
# Libkmod
mkdir -p /opt/fusion/registry/modules/libkmod/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libkmod/1.0.0.0/include/
cp -f /usr/lib64/libkmod.so.2 /opt/fusion/registry/modules/libkmod/1.0.0.0/lib64/
cp -f /usr/include/libkmod.h /opt/fusion/registry/modules/libkmod/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_libkmod.BUILD /opt/fusion/registry/modules/libkmod/1.0.0.0/BUILD
echo 'module(name="libkmod", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/libkmod/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/libkmod/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libkmod/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libkmod/1.0.0.0"
}
EOF

# Libudev
mkdir -p /opt/fusion/registry/modules/libudev/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libudev/1.0.0.0/include/
cp -f /usr/lib64/libudev.so.1 /opt/fusion/registry/modules/libudev/1.0.0.0/lib64/
cp -f /usr/include/libudev.h /opt/fusion/registry/modules/libudev/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_libudev.BUILD /opt/fusion/registry/modules/libudev/1.0.0.0/BUILD
echo 'module(name="libudev", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/libudev/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/libudev/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libudev/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libudev/1.0.0.0"
}
EOF

# Libusb-0.1
mkdir -p /opt/fusion/registry/modules/libusb-0.1/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libusb-0.1/1.0.0.0/include/
cp -f /usr/lib64/libusb-0.1.so.4 /opt/fusion/registry/modules/libusb-0.1/1.0.0.0/lib64/
cp -f /usr/include/usb.h /opt/fusion/registry/modules/libusb-0.1/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_libusb-0.1.BUILD /opt/fusion/registry/modules/libusb-0.1/1.0.0.0/BUILD
echo 'module(name="libusb-0.1", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/libusb-0.1/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/libusb-0.1/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libusb-0.1/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libusb-0.1/1.0.0.0"
}
EOF

# Libusb-1.0
mkdir -p /opt/fusion/registry/modules/libusb-1.0/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libusb-1.0/1.0.0.0/include/libusb-1.0/
cp -f /usr/lib64/libusb-1.0.so.0 /opt/fusion/registry/modules/libusb-1.0/1.0.0.0/lib64/
cp -f /usr/include/libusb-1.0/libusb.h /opt/fusion/registry/modules/libusb-1.0/1.0.0.0/include/libusb-1.0/
cp -f fusion-custom-external-libs/host_libusb-1.0.BUILD /opt/fusion/registry/modules/libusb-1.0/1.0.0.0/BUILD
echo 'module(name="libusb-1.0", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/libusb-1.0/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/libusb-1.0/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libusb-1.0/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libusb-1.0/1.0.0.0"
}
EOF

# Libx11
mkdir -p /opt/fusion/registry/modules/libx11/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libx11/1.0.0.0/include/X11/
cp -f /usr/lib64/libX11.so.6 /opt/fusion/registry/modules/libx11/1.0.0.0/lib64/
cp -rf /usr/include/X11/ /opt/fusion/registry/modules/libx11/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_libx11.BUILD /opt/fusion/registry/modules/libx11/1.0.0.0/BUILD
echo 'module(name="libx11", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/libx11/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/libx11/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libx11/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libx11/1.0.0.0"
}
EOF

# Libxi
mkdir -p /opt/fusion/registry/modules/libxi/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libxi/1.0.0.0/include/X11/extensions/
cp -f /usr/lib64/libXi.so.6 /opt/fusion/registry/modules/libxi/1.0.0.0/lib64/
cp -f /usr/include/X11/extensions/XInput.h /usr/include/X11/extensions/XInput2.h /opt/fusion/registry/modules/libxi/1.0.0.0/include/X11/extensions/
cp -f fusion-custom-external-libs/host_libxi.BUILD /opt/fusion/registry/modules/libxi/1.0.0.0/BUILD
cat > /opt/fusion/registry/modules/libxi/1.0.0.0/MODULE.bazel << 'EOF'
module(
    name = "libxi",
    version = "1.0.0.0",
    compatibility_level = 1,
)

bazel_dep(name = "libx11", version = "1.0.0.0")
EOF
cat > /opt/fusion/registry/modules/libxi/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libxi/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libxi/1.0.0.0"
}
EOF

# Libxml2
mkdir -p /opt/fusion/registry/modules/libxml2/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libxml2/1.0.0.0/include/libxml2/
cp -f /usr/lib64/libxml2.so.2 /opt/fusion/registry/modules/libxml2/1.0.0.0/lib64/
cp -rf /usr/include/libxml2/ /opt/fusion/registry/modules/libxml2/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_libxml2.BUILD /opt/fusion/registry/modules/libxml2/1.0.0.0/BUILD
cat > /opt/fusion/registry/modules/libxml2/1.0.0.0/MODULE.bazel << 'EOF'
module(
    name = "libxml2",
    version = "1.0.0.0", 
    compatibility_level = 1,
)

bazel_dep(name = "icu", version = "1.0.0.0")
EOF
cat > /opt/fusion/registry/modules/libxml2/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libxml2/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libxml2/1.0.0.0"
}
EOF

# Libxrandr
mkdir -p /opt/fusion/registry/modules/libxrandr/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libxrandr/1.0.0.0/include/X11/extensions/
cp -f /usr/lib64/libXrandr.so.2 /opt/fusion/registry/modules/libxrandr/1.0.0.0/lib64/
cp -f /usr/include/X11/extensions/Xrandr.h /opt/fusion/registry/modules/libxrandr/1.0.0.0/include/X11/extensions/
cp -f fusion-custom-external-libs/host_libxrandr.BUILD /opt/fusion/registry/modules/libxrandr/1.0.0.0/BUILD
cat > /opt/fusion/registry/modules/libxrandr/1.0.0.0/MODULE.bazel << 'EOF'
module(
    name = "libxrandr",
    version = "1.0.0.0", 
    compatibility_level = 1,
)

bazel_dep(name = "libx11", version = "1.0.0.0")
EOF
cat > /opt/fusion/registry/modules/libxrandr/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libxrandr/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libxrandr/1.0.0.0"
}
EOF
# Libxslt
mkdir -p /opt/fusion/registry/modules/libxslt/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libxslt/1.0.0.0/include/libxslt/
cp -f /usr/lib64/libxslt.so.1 /opt/fusion/registry/modules/libxslt/1.0.0.0/lib64/
cp -rf /usr/include/libxslt/ /opt/fusion/registry/modules/libxslt/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_libxslt.BUILD /opt/fusion/registry/modules/libxslt/1.0.0.0/BUILD
echo 'module(name="libxslt", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/libxslt/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/libxslt/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libxslt/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libxslt/1.0.0.0"
}
EOF

# Log4cpp
mkdir -p /opt/fusion/registry/modules/log4cpp/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/log4cpp/1.0.0.0/include/log4cpp/
cp -f /usr/lib64/liblog4cpp.so.5 /opt/fusion/registry/modules/log4cpp/1.0.0.0/lib64/
cp -rf /usr/include/log4cpp/ /opt/fusion/registry/modules/log4cpp/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_log4cpp.BUILD /opt/fusion/registry/modules/log4cpp/1.0.0.0/BUILD
echo 'module(name="log4cpp", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/log4cpp/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/log4cpp/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/log4cpp/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "log4cpp/1.0.0.0"
}
EOF

# OpenSSL
mkdir -p /opt/fusion/registry/modules/openssl/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/openssl/1.0.0.0/include/openssl/
cp -f /usr/lib64/libssl.so.1.1 /usr/lib64/libcrypto.so.1.1 /opt/fusion/registry/modules/openssl/1.0.0.0/lib64/
cp -rf /usr/include/openssl/ /opt/fusion/registry/modules/openssl/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_openssl.BUILD /opt/fusion/registry/modules/openssl/1.0.0.0/BUILD
echo 'module(name="openssl", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/openssl/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/openssl/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/openssl/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "openssl/1.0.0.0"
}
EOF

# PciUtils
mkdir -p /opt/fusion/registry/modules/pciutils/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/pciutils/1.0.0.0/include/pci/
cp -f /usr/lib64/libpci.so.3 /usr/lib64/libpciaccess.so.0 /opt/fusion/registry/modules/pciutils/1.0.0.0/lib64/
cp -rf /usr/include/pci/ /opt/fusion/registry/modules/pciutils/1.0.0.0/include/
cp -f /usr/include/pciaccess.h /opt/fusion/registry/modules/pciutils/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_pciutils.BUILD /opt/fusion/registry/modules/pciutils/1.0.0.0/BUILD
echo 'module(name="pciutils", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/pciutils/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/pciutils/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/pciutils/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "pciutils/1.0.0.0"
}
EOF

# Pthread
mkdir -p /opt/fusion/registry/modules/pthread/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/pthread/1.0.0.0/include/
cp -f /usr/lib64/libpthread.so.0 /opt/fusion/registry/modules/pthread/1.0.0.0/lib64/
cp -f /usr/include/pthread.h /opt/fusion/registry/modules/pthread/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_pthread.BUILD /opt/fusion/registry/modules/pthread/1.0.0.0/BUILD
echo 'module(name="pthread", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/pthread/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/pthread/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/pthread/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "pthread/1.0.0.0"
}
EOF

# Qt5
mkdir -p /opt/fusion/registry/modules/qt5/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/qt5/1.0.0.0/include/qt5/
mkdir -p /opt/fusion/registry/modules/qt5/1.0.0.0/bzl
cp -f /usr/lib64/libQt5Core.so /usr/lib64/libQt5Gui.so /usr/lib64/libQt5Widgets.so /usr/lib64/libQt5Network.so /usr/lib64/libQt5Sql.so /usr/lib64/libQt5Xml.so /usr/lib64/libQt5Qml.so /usr/lib64/libQt5Quick.so /usr/lib64/libQt5QuickWidgets.so /usr/lib64/libQt5WebEngine.so /usr/lib64/libQt5WebEngineCore.so /usr/lib64/libQt5WebEngineWidgets.so /usr/lib64/libQt5WebChannel.so /usr/lib64/libQt5QmlModels.so /usr/lib64/libQt5Positioning.so /opt/fusion/registry/modules/qt5/1.0.0.0/lib64/
cp -rf /usr/include/qt5/ /opt/fusion/registry/modules/qt5/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_qt.BUILD /opt/fusion/registry/modules/qt5/1.0.0.0/BUILD
cp fusion-custom-external-libs/qt.bzl /opt/fusion/registry/modules/qt5/1.0.0.0/bzl/
echo 'module(name="qt5", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/qt5/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/qt5/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/qt5/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "qt5/1.0.0.0"
}
EOF

# Sqlite3
mkdir -p /opt/fusion/registry/modules/sqlite3/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/sqlite3/1.0.0.0/include/
cp -f /usr/lib64/libsqlite3.so.0 /opt/fusion/registry/modules/sqlite3/1.0.0.0/lib64/
cp -f /usr/include/sqlite3.h /opt/fusion/registry/modules/sqlite3/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_sqlite3.BUILD /opt/fusion/registry/modules/sqlite3/1.0.0.0/BUILD
echo 'module(name="sqlite3", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/sqlite3/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/sqlite3/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/sqlite3/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "sqlite3/1.0.0.0"
}
EOF

# Xerces-c
mkdir -p /opt/fusion/registry/modules/xerces-c/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/xerces-c/1.0.0.0/include/xercesc/
cp -f /usr/lib64/libxerces-c-3.2.so /opt/fusion/registry/modules/xerces-c/1.0.0.0/lib64/
cp -rf /usr/include/xercesc/ /opt/fusion/registry/modules/xerces-c/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_xerces-c.BUILD /opt/fusion/registry/modules/xerces-c/1.0.0.0/BUILD
echo 'module(name="xerces-c", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/xerces-c/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/xerces-c/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/xerces-c/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "xerces-c/1.0.0.0"
}
EOF

# Zlib
mkdir -p /opt/fusion/registry/modules/zlib/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/zlib/1.0.0.0/include/
cp -f /usr/lib64/libz.so.1 /opt/fusion/registry/modules/zlib/1.0.0.0/lib64/
cp -f /usr/include/zlib.h /usr/include/zconf.h /opt/fusion/registry/modules/zlib/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_zlib.BUILD /opt/fusion/registry/modules/zlib/1.0.0.0/BUILD
echo 'module(name="zlib", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/zlib/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/zlib/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/zlib/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "zlib/1.0.0.0"
}
EOF

# Libpq setup
mkdir -p /opt/fusion/registry/modules/libpq/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libpq/1.0.0.0/include/postgresql/
cp -f /usr/lib64/libpq.so.5 /opt/fusion/registry/modules/libpq/1.0.0.0/lib64/
cp -rf /usr/include/postgres_ext.h /opt/fusion/registry/modules/libpq/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_libpq.BUILD /opt/fusion/registry/modules/libpq/1.0.0.0/BUILD
echo 'module(name="libpq", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/libpq/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/libpq/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libpq/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path", 
    "path": "libpq/1.0.0.0"
}
EOF

# Libdb
mkdir -p /opt/fusion/registry/modules/libdb/1.0.0.0/lib64/
mkdir -p /opt/fusion/registry/modules/libdb/1.0.0.0/include/libdb/
cp -f /usr/lib64/libdb-6.so /opt/fusion/registry/modules/libdb/1.0.0.0/lib64/
cp -rf /usr/include/libdb/ /opt/fusion/registry/modules/libdb/1.0.0.0/include/
cp -f fusion-custom-external-libs/host_libdb.BUILD /opt/fusion/registry/modules/libdb/1.0.0.0/BUILD
echo 'module(name="libdb", version="1.0.0.0", compatibility_level = 1)' > /opt/fusion/registry/modules/libdb/1.0.0.0/MODULE.bazel
cat > /opt/fusion/registry/modules/libdb/metadata.json << 'EOF'
{
    "homepage": "https://your-company.com/fusion",
    "maintainers": [
        {
            "name": "Fusion Team",
            "email": "fusion-team@your-company.com"
        }
    ],
    "versions": ["1.0.0.0"],
    "yanked_versions": {}
}
EOF
cat > /opt/fusion/registry/modules/libdb/1.0.0.0/source.json << 'EOF'
{
    "type": "local_path",
    "path": "libdb/1.0.0.0"
}
EOF
