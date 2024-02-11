#!/bin/bash
# Descargar Tomcat
wget http://mirror.apache-oregon.org/tomcat/tomcat-9/v9.0.60/bin/apache-tomcat-9.0.60.tar.gz -P /tmp

# Extraer el archivo
tar xf /tmp/apache-tomcat-9.0.60.tar.gz -C /opt

# Renombrar el directorio
mv /opt/apache-tomcat-9.0.60 /opt/tomcat

# Configurar permisos
chmod +x /opt/tomcat/bin/*.sh

# Construir la aplicación con Gradle
cd /mi-repositorio/
./gradlew clean build

# Mover el archivo WAR compilado al directorio de despliegue de Tomcat
cp build/libs/tu-aplicacion.war /opt/tomcat/webapps/

# Limpiar archivos temporales
rm -f /tmp/apache-tomcat-9.0.60.tar.gz
