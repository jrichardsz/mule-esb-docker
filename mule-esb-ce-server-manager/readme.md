## Running server with manager

Manager is a small mule app deployed inside the server which expose an endpoint **/manager/deploy**. This endpoints allow us remote deployments.

In order to startup the server with this manager, execute

```
docker run -d --name my_mule_server_01 \
-p 8081:8081 \
-p 2708:2708 \
-e "ENABLE_MANAGER=true" \
-e "MANAGER_PORT=2708" \
mule-esb-ce:3.9.0-openjdk-8-jdk-manager
```

You can change **2708**.

Finally, to deploy an application inside this container, execute this:

```
curl localhost:2708/manager/deploy?name=tiny_mule_app -T /workspace/etc/previous_packaged_mule_app.zip
```

Note **previous_packaged_mule_app.zip** which is a mule app previously packaged with AnypointStudio or maven.
