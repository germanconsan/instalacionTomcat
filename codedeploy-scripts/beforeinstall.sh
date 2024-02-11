#!/bin/bash

# Instalar JDK y Gradle (si no están instalados)
apt-get update
apt-get install -y openjdk-8-jdk gradle

# Imprimir la ubicación actual antes de cambiar al directorio del proyecto
echo "Ubicación actual antes de cambiar al directorio del proyecto: $(pwd)"

# Cambiar al directorio del proyecto después de la clonación por CodeDeploy
# Esto dependerá de cómo CodeDeploy organiza los archivos
cd /opt/codedeploy-agent

# Imprimir la ubicación actual después de cambiar al directorio del proyecto
echo "Ubicación actual después de cambiar al directorio del proyecto: $(pwd)"

# Imprimir el contenido del directorio para ayudar a determinar la estructura
ls -la

# Ejecutar el proceso de compilación y despliegue con Gradle
sudo gradle clean build
