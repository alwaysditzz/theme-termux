#!/bin/bash

green="\033[1;32m"
blue="\033[1;34m"
cyan="\033[1;36m"
reset="\033[0m"

echo -e "${blue}============================================"
echo -e "   🚀 Installing Ditzz4you Termux Theme 🚀"
echo -e "============================================${reset}"

if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/.bashrc.backup
    echo -e "${cyan}📂 Backup .bashrc lama disimpan di ~/.bashrc.backup${reset}"
fi

if [ -f /data/data/com.termux/files/usr/etc/motd ]; then
    rm -f /data/data/com.termux/files/usr/etc/motd
    echo -ne "${cyan}⚡ Optimizing Termux environment"
    for i in {1..3}; do
        echo -n "."
        sleep 0.5
    done
    echo -e "${reset} ✅"
fi

cp .bashrc ~/
echo -e "${green}✅ Theme berhasil dipasang!${reset}"

source ~/.bashrc

echo -e "${blue}============================================"
echo -e "  🎉 Theme Ditzz4you sudah aktif!"
echo -e "  Jika tidak tampil, restart Termux"
echo -e "============================================${reset}"

echo ""
echo -e "${cyan}Silahkan Pilih Opsi Di Bawah Ini.${reset}"
echo -e "${green}1) Exit${reset}"
read -p "Pilih opsi (1): " opsi

case $opsi in
    1)
        echo -e "${cyan}Menutup Termux...${reset}"
        exit
        ;;
    *)
        echo -e "${red}Pilihan tidak valid, keluar.${reset}"
        exit
        ;;
esac
