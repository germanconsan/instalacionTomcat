#!/bin/bash

# Detener Tomcat antes de copiar los archivos compilados
/opt/tomcat/bin/shutdown.sh

# Copiar los archivos compilados al directorio de despliegue de Tomcat
cp -r /opt/codedeploy-agent/tu-proyecto/build/* /opt/tomcat/webapps/

# Iniciar Tomcat
/opt/tomcat/bin/startup.sh
