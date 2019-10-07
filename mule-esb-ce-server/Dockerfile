FROM openjdk:8-jdk
MAINTAINER Richard Leon Ingaruca <jrichardsz.java@gmail.com>

ENV MULE_HOME=/opt/mule
ENV MULE_VERSION=3.9.0

RUN mkdir /opt/mule/ \
    && wget https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/${MULE_VERSION}/mule-standalone-${MULE_VERSION}.tar.gz && \
    tar xvzf mule-standalone-${MULE_VERSION}.tar.gz && \
    mv mule-standalone-${MULE_VERSION}/* /opt/mule && \
    rm -rvf  mule-standalone-${MULE_VERSION} && \
    rm -f  mule-standalone-${MULE_VERSION}.tar.gz

# allow java memory external parametrization
RUN sed -i 's/wrapper.java.maxmemory=1024/wrapper.java.maxmemory=0/g' /opt/mule/conf/wrapper.conf
RUN sed -i 's/wrapper.java.initmemory=1024/wrapper.java.initmemory=0/g' /opt/mule/conf/wrapper.conf

WORKDIR ${MULE_HOME}

#allow premature tail log
RUN touch $MULE_HOME/logs/mule.log

# Start Mule ESB.
# Mule is launched in the foreground and will thus be the main process of the container.
CMD [ "bin/mule", "console"]
