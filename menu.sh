#!/bin/bash

# Warna
green="\033[1;32m"; red="\033[1;31m"; cyan="\033[1;36m"; reset="\033[0m"

while true; do
    clear
    echo -e "${cyan}"
    figlet "TOOLS-TERMUX" | lolcat
    echo -e "${reset}"
    echo -e "${green}1) Install Theme"
    echo -e "2) Uninstall Theme"
    echo -e "3) Exit${reset}"
    echo ""
    read -p "Pilih opsi (1/2/3): " opsi

    case $opsi in
        1)
            bash install.sh
            read -p "Tekan [Enter] untuk kembali ke menu..."
            ;;
        2)
            bash uninstall.sh
            read -p "Tekan [Enter] untuk kembali ke menu..."
            ;;
        3)
            echo -e "${cyan}Bye! Keluar dari menu.${reset}"
            exit 0
            ;;
        *)
            echo -e "${red}Pilihan tidak valid!${reset}"
            sleep 1
            ;;
    esac
done
