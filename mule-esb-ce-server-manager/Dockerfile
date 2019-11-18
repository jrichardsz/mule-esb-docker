FROM jrichardsz/mule-esb-ce:3.9.0-openjdk-8-jdk
MAINTAINER Richard Leon Ingaruca <jrichardsz.java@gmail.com>

# source code :
# https://github.com/jrichardsz/mule-esb-snippets-templates/tree/master/mule-manager
COPY ./manager.zip /manager.zip

# Default when starting the container is to start Mule ESB.
COPY ./entry-point.sh /entry-point.sh
RUN chmod +x /entry-point.sh

CMD ["bash","/entry-point.sh" ]
