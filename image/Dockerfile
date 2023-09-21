FROM ubuntu:focal

ENV JAVA_HOME /opt/jdk
ENV PATH $JAVA_HOME/bin:/opt/maven/bin:$PATH

ADD setup.sh /setup.sh
ADD start.sh /start.sh
ADD prepare.sh /prepare.sh
RUN ./setup.sh
RUN ./prepare.sh

WORKDIR /opt/leyden/test/hotspot/jtreg/premain/spring-petclinic
ENTRYPOINT /start.sh
