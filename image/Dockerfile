FROM ubuntu:focal

ADD setup.sh /setup.sh
RUN ./setup.sh

FROM ubuntu:focal
RUN mkdir -p /opt/leyden/test/hotspot/jtreg/premain
COPY --from=0 /opt/jdk /opt/jdk
ADD start.sh /start.sh

ENV JAVA_HOME /opt/jdk
ENV PATH $JAVA_HOME/bin:$PATH

ADD prepare.sh /prepare.sh
RUN ./prepare.sh

WORKDIR /opt/spring-petclinic-data-jdbc
CMD /start.sh
