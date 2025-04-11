#!/system/bin/sh
workDir="$(dirname $(realpath $0))"
prefix=/data/local/tmp/runner/usr
mkdir -p $prefix 2>&1 > /dev/null
cp -rf $workDir/usr $prefix/../
cp -rf $workDir/build.prop $prefix/

chmod +x $prefix/bin/*
$prefix/bin/busybox --install -s $prefix/bin/applets
