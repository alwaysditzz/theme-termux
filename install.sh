#!/bin/bash

green="\033[1;32m"
blue="\033[1;34m"
cyan="\033[1;36m"
reset="\033[0m"

echo -e "${blue}============================================"
echo -e "   🚀 Installing Ditzz4you Termux Theme 🚀"
echo -e "============================================${reset}"

# Backup .bashrc lama kalau ada
if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/.bashrc.backup
    echo -e "${cyan}📂 Backup .bashrc lama disimpan di ~/.bashrc.backup${reset}"
fi

# Hapus pesan welcome default Termux (motd) secara halus
if [ -f /data/data/com.termux/files/usr/etc/motd ]; then
    rm -f /data/data/com.termux/files/usr/etc/motd
    echo -ne "${cyan}⚡ Optimizing Termux environment"
    for i in {1..3}; do
        echo -n "."
        sleep 0.5
    done
    echo -e "${reset} ✅"
fi

# Pasang theme baru
cp .bashrc ~/
echo -e "${green}✅ Theme berhasil dipasang!${reset}"

# Aktifkan theme langsung
source ~/.bashrc

echo -e "${blue}============================================"
echo -e "  🎉 Theme Ditzz4you sudah aktif!"
echo -e "  Jika tidak tampil, restart Termux"
echo -e "============================================${reset}"

# Menu setelah install
echo ""
echo -e "${cyan}Apa yang ingin kamu lakukan selanjutnya?${reset}"
echo -e "${green}1) Uninstall Theme"
echo -e "2) Exit${reset}"
read -p "Pilih opsi (1/2): " opsi

case $opsi in
    1)
        bash uninstall.sh
        ;;
    2)
        echo -e "${cyan}Bye! Keluar dari installer.${reset}"
        exit 0
        ;;
    *)
        echo -e "${red}Pilihan tidak valid, keluar.${reset}"
        exit 1
        ;;
esac
