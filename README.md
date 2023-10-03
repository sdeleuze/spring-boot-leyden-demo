# Petclinic demo with Project Leyden premain optimizations and Spring AOT

The `data-jdbc` branch of the `spring-boot-leyden-demo` intends to allow building a container image based on a fork of [Project Leyden](https://openjdk.org/projects/leyden/) `premain` branch and the Spring Data JDBC variant of Petclinic, combined with Spring AOT optimizations (see https://github.com/sdeleuze/spring-petclinic-data-jdbc/tree/jvmaot).
See more details on the proposed Leyden terminal stage workflow [here](https://github.com/openjdk/leyden/tree/premain/test/hotspot/jtreg/premain/javac_new_workflow).

From within the `spring-boot-leyden-demo` folder, build the container image with:
```
./build.sh
```

And run both training and optimized runs (because currently some issues can happen when doing both runs on different marchines) with:
```
./run.sh
```

You can of course deploy the resulting container on your Kubernetes or Cloud platform.
