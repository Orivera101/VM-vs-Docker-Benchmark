#!/usr/bin/bash
#Para inicializar el archivo es recomendable utilizar los siguientes dos comandos:
#sudo apt install dos2unix
#dos2unix vm_setup.sh
echo "🚀 Iniciando configuración de entorno en VM..."

# 🔄 Actualizar paquetes
sudo apt update && sudo apt upgrade -y

# 🧰 Instalar herramientas necesarias
echo "🔧 Instalando dependencias..."
sudo apt install -y python3 python3-pip nginx git curl sysbench docker.io procps

# 🐍 Python y librerías para benchmarking
pip3 install --upgrade pip
pip3 install jupyter matplotlib psutil

# 🐳 Agregar usuario a grupo docker
sudo usermod -aG docker $USER

# 📁 Clonar emulador retro
echo "🎮 Clonando emulador web..."
git clone https://github.com/ethanaobrien/emulatorjs ~/emulador-retro

# 🔄 Mover archivos del emulador al directorio web de nginx
echo "📦 Copiando archivos del emulador a /var/www/html..."
sudo rm -rf /var/www/html/*
sudo cp -r ~/emulador-retro/* /var/www/html/
sudo systemctl start nginx

# ✅ Finalización
echo "✅ Setup completo. Reinicia la VM para aplicar permisos de Docker."
echo "➡️ Listo para ejecutar la pagina con el IP de la VM"
echo "➡️ Para abrir Jupyter: jupyter notebook"
