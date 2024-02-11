#!/bin/bash

# Instalar dependencias
apt-get update
apt-get install -y unzip

# Descargar e instalar Apache Tomcat
mkdir /opt/tomcat
cd /opt/tomcat
wget [URL_DEL_TOMCAT] -O tomcat.zip
unzip tomcat.zip
mv apache-tomcat-*/* /opt/tomcat/
rm -rf apache-tomcat-*

# Cambiar permisos
chmod +x /opt/tomcat/bin/*.sh

# Iniciar Tomcat
/opt/tomcat/bin/startup.sh
