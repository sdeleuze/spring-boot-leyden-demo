#!/bin/bash
set -ex

cd /opt/leyden/test/hotspot/jtreg/premain/spring-petclinic
make app
make aot
