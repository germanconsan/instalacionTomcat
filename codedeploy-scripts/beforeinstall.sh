#!/bin/bash

# Instalar JDK (si no está instalado)
apt-get update
apt-get install -y openjdk-8-jdk

# Instalar Gradle (si no está instalado)
if ! command -v gradle &> /dev/null; then
    apt-get install -y gradle
fi

# Imprimir la ubicación actual antes de cambiar al directorio del proyecto
echo "Ubicación actual antes de cambiar al directorio del proyecto: $(pwd)"

# Cambiar al directorio del proyecto después de la clonación por CodeDeploy
# Esto dependerá de cómo CodeDeploy organiza los archivos
cd /opt/codedeploy-agent

# Imprimir la ubicación actual después de cambiar al directorio del proyecto
echo "Ubicación actual después de cambiar al directorio del proyecto: $(pwd)"

# Imprimir el contenido del directorio para ayudar a determinar la estructura
ls -la

chmod -R +x /opt/codedeploy-agent
chown -R 2450:users /opt/codedeploy-agent

# Ejecutar el proceso de compilación y despliegue con Gradle
gradle clean build --stacktrace
