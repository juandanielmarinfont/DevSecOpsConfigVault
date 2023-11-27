#!/bin/bash

# Nombre de la distribución de Ubuntu (puedes cambiarlo si deseas)
ubuntu_distro="Ubuntu"

# Instalar la distribución de Ubuntu con WSL
wsl --install -d $ubuntu_distro

# Iniciar la distribución de Ubuntu recién instalada
wsl -d $ubuntu_distro

# Configurar el nombre de usuario y contraseña (cambia 'usuario' y 'contraseña' por tus preferencias)
wsl -d $ubuntu_distro -u usuario -p contraseña

# Acceder a la distribución de Ubuntu
wsl -d $ubuntu_distro
