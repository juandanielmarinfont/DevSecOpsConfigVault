#!/bin/bash

# Actualizar e instalar AWS CLI
sudo apt-get update
sudo apt-get install -y awscli

# Configuración de AWS CLI
# NOTA: Es más seguro usar IAM roles o variables de entorno en un entorno de producción
echo "Configurando AWS CLI. Por favor, ingresa tus credenciales."
aws configure
