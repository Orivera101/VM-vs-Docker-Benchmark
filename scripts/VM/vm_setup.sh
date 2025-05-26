#!/usr/bin/bash
#Para mi VM, utilice la direccion puesta arriba. En caso de usar otro bash, modificar a #!/bin/bash o a la direccion que utilice el equipo.
#Para inicializar el archivo es recomendable utilizar los siguientes dos comandos:
#sudo apt install dos2unix
#dos2unix vm_setup.sh

echo "Iniciando configuración de entorno en VM"

#Instalar y actualizar herramientas necesarias
sudo apt update && sudo apt upgrade -y
echo "Instalando dependencias..."
sudo apt install -y python3 python3-pip nginx git curl sysbench docker.io procps
pip3 install --upgrade pip
pip3 install jupyter matplotlib psutil

#Agregar usuario a grupo docker (Opcional)
sudo usermod -aG docker $USER

#Clonar emulador retro
echo "Clonando emulador web"
git clone https://github.com/ethanaobrien/emulatorjs ~/emulador-retro

#Mover archivos del emulador al directorio web de nginx
echo "Copiando archivos del emulador a /var/www/html"
sudo rm -rf /var/www/html/*
sudo cp -r ~/emulador-retro/* /var/www/html/

#Finalización
#Reinicia la VM para aplicar permisos de Docker
echo "Entrar a la IP que tenga la VM en un navegador para entrar al emulador"
