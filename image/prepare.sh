#!/bin/bash
set -ex

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y --no-install-recommends tzdata ca-certificates git curl unzip nano
rm -rf /var/lib/apt/lists/*

cd /opt
git clone -b cds --depth 1 https://github.com/sdeleuze/spring-petclinic-data-jdbc

cd spring-petclinic-data-jdbc
./gradlew build -x test
./unpack-executable-jar.sh -d build/unpacked build/libs/spring-petclinic-1.0.0-SNAPSHOT.jar
java -Dspring.aot.enabled=true -Dspring.context.exit=onRefresh -XX:CacheDataStore=build/unpacked/application.cds -jar build/unpacked/run-app.jar