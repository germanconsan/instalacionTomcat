#!/bin/bash

# Detener Tomcat antes de copiar los archivos compilados
/opt/tomcat/bin/shutdown.sh

# Copiar los archivos compilados al directorio de despliegue de Tomcat
cp -r /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/libs/* /opt/tomcat/webapps/

# Iniciar Tomcat
/opt/tomcat/bin/startup.sh
