#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

print_msg() { echo -e "${GREEN}[INFO]${NC} $1"; }
print_err() { echo -e "${RED}[ERROR]${NC} $1"; }
print_warn() { echo -e "${YELLOW}[WARNING]${NC} $1"; }
print_header() { echo -e "${BLUE}=== $1 ===${NC}"; }


install_dotfile_selection() {
  print_msg "Iniciando instalação"
  cp -v ./theme-manager -r ~/.config
  cp -v ./src/* -r ~/.config

  print_msg "Dando Permição de executavel para o dotfile.sh"
  chmod +x ./dotfile.sh

  print_msg "Executando o script do dotfile."
  ./dotfile.sh
}

main() {
  install_dotfile_selection
}

main 
