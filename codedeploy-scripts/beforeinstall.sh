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


# Imprimir la ubicación actual después de cambiar al directorio del proyecto
echo "Ubicación actual después de cambiar al directorio del proyecto: $(pwd)"

# Imprimir el contenido del directorio para ayudar a determinar la estructura
ls -la


cd /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/

sudo chmod -R +w ./

# Ejecutar el proceso de compilación y despliegue con Gradle Wrapper
chmod +x gradlew
sudo ./gradlew war