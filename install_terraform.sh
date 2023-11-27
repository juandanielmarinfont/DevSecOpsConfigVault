#!/bin/bash

# Identificar la última versión de Terraform
latest_version=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r .current_version)

# Crear un directorio temporal para descargar Terraform
temp_dir=$(mktemp -d)

# Descargar Terraform
curl -Lo $temp_dir/terraform.zip "https://releases.hashicorp.com/terraform/${latest_version}/terraform_${latest_version}_linux_amd64.zip"

# Descomprimir el archivo descargado
unzip -d $temp_dir $temp_dir/terraform.zip

# Mover Terraform a /usr/local/bin
sudo mv $temp_dir/terraform /usr/local/bin/

# Limpiar los archivos temporales
rm -rf $temp_dir

# Verificar la instalación
terraform -v
