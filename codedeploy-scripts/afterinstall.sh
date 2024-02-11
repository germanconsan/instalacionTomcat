#!/bin/bash

# Detener Tomcat antes de copiar el archivo WAR
/opt/tomcat/bin/shutdown.sh

# Copiar el archivo WAR al directorio de despliegue de Tomcat
cp /opt/tomcat/webapps/tu-aplicacion.war /opt/tomcat/webapps/
