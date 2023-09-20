FROM ubuntu:focal

ADD setup.sh /setup.sh
RUN ./setup.sh

ENV JAVA_HOME /opt/jdk
ENV PATH $JAVA_HOME/bin:/opt/maven/bin:$PATH

WORKDIR /opt/leyden/test/hotspot/jtreg/premain/spring-petclinic
