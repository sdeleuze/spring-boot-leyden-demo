#!/bin/bash
set -ex

java -Dspring.aot.enabled=true -XX:CacheDataStore=build/unpacked/application.cds -jar build/unpacked/run-app.jar
