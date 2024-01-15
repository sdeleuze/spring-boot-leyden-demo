# Petclinic demo with Project Leyden premain optimizations (new workflow)

This `spring-boot-leyden-demo` repository intends to allow building a container image based on [Project Leyden](https://openjdk.org/projects/leyden/) `premain` branch and the Spring Data JDBC variant of Petclinic, combined with the [`unpack-executable-jar.sh`]( https://github.com/sdeleuze/spring-petclinic-data-jdbc/blob/cds/unpack-executable-jar.sh) script, leveraging [the proposed new Leyden terminal stage workflow](https://github.com/openjdk/leyden/tree/premain/test/hotspot/jtreg/premain/javac_new_workflow). [Spring AOT optimizations](https://docs.spring.io/spring-boot/docs/current/reference/html/deployment.html#deployment.efficient.aot) are enabled by default. 

From within the `spring-boot-leyden-demo` folder, build the container image with:
```
./build.sh
```

And run the optimized runs with:
```
./run.sh
```
