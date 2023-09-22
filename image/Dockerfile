FROM ubuntu:focal

ADD setup.sh /setup.sh
ADD prepare.sh /prepare.sh
RUN ./setup.sh
RUN ./prepare.sh

FROM ubuntu:focal
RUN mkdir -p /opt/leyden/test/hotspot/jtreg/premain
COPY --from=0 /opt/jdk /opt/jdk
COPY --from=0 /opt/leyden/test/hotspot/jtreg/premain/spring-petclinic /opt/leyden/test/hotspot/jtreg/premain/spring-petclinic
ADD start.sh /start.sh

ENV JAVA_HOME /opt/jdk
ENV PATH $JAVA_HOME/bin:$PATH

WORKDIR /opt/leyden/test/hotspot/jtreg/premain/spring-petclinic
CMD /start.sh
