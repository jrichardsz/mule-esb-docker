## Running just the server

If you are mule lover, you will know that mule esb does not expose ports like tomcat, jboss or another java application server. Mule deployed applications can expose the port they need.

So, in order to run just the mule esb server execute this:

```
docker run -d --name my_mule_server_01 jrichardsz/mule-esb-ce:3.9.0-openjdk-8-jdk
```

If you will deploy an application which expose an http resource (api rest) in some port (e.g 8081 ), you just need to bind the port at run:

```
docker run -d --name my_mule_server_01 \
-p 8081:8081 \
jrichardsz/mule-esb-ce:3.9.0-openjdk-8-jdk
```

You could use another port instead **8081** in the host.

Finally, to deploy an application inside this container, execute this:

```
docker cp /workspace/etc/previous_packaged_mule_app.zip my_mule_server_01:/opt/mule/apps
```

Note **my_mule_server_01** which is the name used at run container and **previous_packaged_mule_app.zip** is a mule app previously packaged with AnypointStudio or maven.
