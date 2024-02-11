#!/bin/bash

# Detener Tomcat antes de copiar los archivos compilados
/opt/tomcat/bin/shutdown.sh



# Iniciar Tomcat
/opt/tomcat/bin/startup.sh
