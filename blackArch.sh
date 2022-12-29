#!/bin/bash

if [ -d "repos" ]; then
  # La carpeta "repos" existe
  cd repos
else
  # La carpeta "repos" no existe
  mkdir repos && cd repos
fi

if command -v curl > /dev/null; then
  echo "curl SI está instalado"
else
  echo "curl NO está instalado"
  echo "Instala curl ejecutando sudo pacman -Sy curl en arch o sudo apt install curl en debian"
fi

curl -O https://blackarch.org/strap.sh

chmod u+x strap.sh

echo "Ahora solo tienes que ejecutar sudo ./strap.sh para tener el repositorio instalado"

