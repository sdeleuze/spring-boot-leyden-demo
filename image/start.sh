#!/bin/bash
set -ex

java -XX:CacheDataStore=build/unpacked/application.cds -jar build/unpacked/run-app.jar
