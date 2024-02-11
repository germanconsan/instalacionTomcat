#!/bin/bash

# Instalar dependencias
apt-get update
apt-get install -y unzip

# Descargar e instalar Apache Tomcat
mkdir /opt/tomcat
cd /opt/tomcat
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.zip -O tomcat.zip
unzip tomcat.zip
mv apache-tomcat-*/* /opt/tomcat/
rm -rf apache-tomcat-*

# Cambiar permisos
chmod +x /opt/tomcat/bin/*.sh

# Iniciar Tomcat
/opt/tomcat/bin/startup.sh
