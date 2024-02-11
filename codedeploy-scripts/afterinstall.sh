#!/bin/bash

# Detener Tomcat antes de copiar los archivos compilados
/opt/tomcat/bin/shutdown.sh

sudo chmod o+rx /opt/tomcat/webapps/*

# Iniciar Tomcat
/opt/tomcat/bin/startup.sh
