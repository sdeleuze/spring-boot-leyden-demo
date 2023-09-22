#!/bin/bash
set -ex

java -XX:SharedArchiveFile=spring-petclinic.dynamic.jsa -XX:+ReplayTraining -XX:+LoadCachedCode -XX:CachedCodeFile=spring-petclinic.code.jsa -Xlog:init -Xlog:scc=error -cp @petclinic-snapshot/build/unpacked/classpath -Dspring.aot.enabled=true org.springframework.samples.petclinic.PetClinicApplication 
