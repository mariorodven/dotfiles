#!/bin/bash

# Comprueba si la carpeta "repos" existe
if [ -d "repos" ]; then
  # La carpeta "repos" existe, así que cambia el directorio de trabajo a "repos"
  cd repos
else
  # La carpeta "repos" no existe, así que la crea y cambia el directorio de trabajo a "repos"
  mkdir repos
  cd repos
fi

# Comprueba si git está instalado
if command -v git > /dev/null; then
  # curl está instalado
  echo "git está instalado"
else
  # curl no está instalado
  echo "git no está instalado"
  echo "Por favor, instala git ejecutando el siguiente comando: sudo apt-get install git o sudo pacman -Sy git en tu caso que estas usando Manjaro"
fi



git clone https://aur.archlinux.org/paru.git

cd paru

makepkg -si

