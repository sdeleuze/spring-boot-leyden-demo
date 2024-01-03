#!/bin/bash
set -ex

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y --no-install-recommends tzdata ca-certificates git curl build-essential libfreetype6-dev libfontconfig-dev libcups2-dev libx11-dev libxext-dev libxrender-dev libxrandr-dev libxtst-dev libxt-dev libasound2-dev libffi-dev autoconf file unzip zip nano

export ARCH=$(uname -m)
case $ARCH in
    aarch64)   export BOOT_JDK_URL="https://download.bell-sw.com/java/21+37/bellsoft-jdk21+37-linux-aarch64.tar.gz" ;;
    *)       export BOOT_JDK_URL="https://download.bell-sw.com/java/21+37/bellsoft-jdk21+37-linux-amd64.tar.gz" ;;
esac
mkdir -p /opt/boot-jdk
cd /opt/boot-jdk
curl -L ${BOOT_JDK_URL} | tar zx --strip-components=1
test -f /opt/boot-jdk/bin/java
test -f /opt/boot-jdk/bin/javac

cd /opt
git clone -b premain --depth 1 https://github.com/openjdk/leyden.git
cd leyden

bash configure --with-boot-jdk=/opt/boot-jdk
make images
mv /opt/leyden/build/linux-$ARCH-server-release/images/jdk /opt

