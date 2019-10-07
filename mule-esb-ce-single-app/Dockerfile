FROM jrichardsz/mule-esb-ce:3.9.0-openjdk-8-jdk
MAINTAINER Richard Leon Ingaruca <jrichardsz.java@gmail.com>

ARG ARTIFACT_FOLDER=./target

RUN mkdir -p /tmp/artifact_selector
COPY $ARTIFACT_FOLDER /tmp/artifact_selector

#move artifact to mule
WORKDIR /tmp/artifact_selector
RUN mv $(find -maxdepth 1 -name "*.zip") $MULE_HOME/apps
RUN rm -rf /tmp/artifact_selector

RUN ls -la $MULE_HOME/apps

# Start Mule ESB.
# Mule is launched in the foreground and will thus be the main process of the container.
WORKDIR $MULE_HOME
CMD [ "bin/mule", "console"]
