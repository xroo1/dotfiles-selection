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



banner() {
    echo -e """\033[1;32m              
 ______               ____   
|   __ \.-----.-----.|_   |  
|      <|  _  |  _  | _|  |_ 
|___|__||_____|_____||______|
\033[0m
  """
  print_msg "Starting the Dotfile installation."
}



install_st() {
  print_warn "Do you want to install the stterm dependencies? ( y / n)"

  read -r option

  case $option  in 
    y)
      sudo apt install libx11-dev libxft-dev libxext-dev
      ;;
    *)
      print_msg "The installation of ST Term dependencies was skipped."
      ;;
  esac
}

install_dependencies() {
  print_msg "Installation of Dependencies"
  sudo apt install brightnessctl pulseaudio-utils xinput feh scrot imagemagick xclip neovim feh dunst i3lock ranger moc 

  install_st
}


install_dotfile() {
  print_msg "Starting the dotfile setup."
  print_msg "Add themes to the .config folder."
  cp -v ./theme-manager/ -r ~/.config

  print_warn "Do you want to add scripts folder to the HOME folder? ( s / n )"
  read -r script_option
  case $script_option in
    s)
      cp -v ./src/script/ -r ~/.scritps
      ;;
    *)
      print_warn "Add ignored scritps folder.."
      ;;
  esac


  print_warn "Do you want to add and apply text fonts? ( s / n )"
  read -r fonts_option
  case $fonts_option in 
    s)
      print_msg "Creating a .fonts folder if it doesn't already exist."
      mkdir -p ~/.fonts

      print_msg "Copying fonts to .fonts folder."
      cp -v ./src/fonts/* -r ~/.fonts

      print_msg "Applying fonts."
      fc-cache -v ~/.fonts/
      
      ;;
  esac
}


setup_dotfile() {
  banner
  install_dependencies

  install_dotfile
}


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
  setup_dotfile
}

main 
