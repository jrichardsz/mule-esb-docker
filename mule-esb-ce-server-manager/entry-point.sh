#! /bin/sh
if [[ "${ENABLE_MANAGER}" == "true" ]];
then
      echo "\$ENABLE_MANAGER is true. You can deploy mule zip apps to /manager/deploy"
      cp /manager.zip $MULE_HOME/apps/manager.zip
      ls -la $MULE_HOME/apps/
else
      echo "\$ENABLE_MANAGER will ignored"
fi


# Start Mule ESB.
# The Mule startup script will take care of launching Mule using the appropriate user.
# Mule is launched in the foreground and will thus be the main process of the container.
${MULE_HOME}/bin/mule console
