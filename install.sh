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

# Hapus pesan welcome default Termux (motd)
if [ -f /data/data/com.termux/files/usr/etc/motd ]; then
    rm -f /data/data/com.termux/files/usr/etc/motd
    echo -e "${cyan}🗑️ Welcome bawaan Termux berhasil dihapus${reset}"
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
