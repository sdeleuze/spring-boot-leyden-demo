#!/bin/bash
set -ex

# Training run
java -XX:SharedArchiveFile=spring-petclinic.dynamic.jsa \
     -XX:+ReplayTraining -XX:+StoreCachedCode \
     -XX:CachedCodeFile=spring-petclinic.code.jsa \
     -XX:CachedCodeMaxSize=512M -DautoQuit=true \
     -cp @petclinic-snapshot/build/unpacked/classpath \
     -Dspring.aot.enabled=true \
     org.springframework.samples.petclinic.PetClinicApplication

# Optimized run
java -XX:SharedArchiveFile=spring-petclinic.dynamic.jsa  \
     -XX:+ReplayTraining -XX:+LoadCachedCode  \
     -XX:CachedCodeFile=spring-petclinic.code.jsa \
     -Xlog:init -Xlog:scc=error  \
     -cp @petclinic-snapshot/build/unpacked/classpath \
     -Dspring.aot.enabled=true \
     org.springframework.samples.petclinic.PetClinicApplication
