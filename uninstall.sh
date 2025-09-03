#!/bin/bash

clear
echo -e "\033[1;36m🚀 Uninstalling Ditzz4you Termux Theme...\033[0m"
sleep 1

# Fungsi loading animasi
loading() {
    local pid=$!
    local delay=0.1
    local spin='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        for i in $(seq 0 3); do
            printf "\r\033[1;33m[ %c ] \033[0mMenghapus theme..." "${spin:$i:1}"
            sleep $delay
        done
    done
    printf "\r\033[1;32m[ ✔ ]\033[0m Selesai!\n"
}

# Cek apakah ada backup
if [ -f ~/.bashrc.backup ]; then
    (
        sleep 2
        mv ~/.bashrc.backup ~/.bashrc
        rm -f ~/.termux_theme_installed 2>/dev/null
    ) & loading
    sleep 1
    echo -e "\n\033[1;32m✅ Theme berhasil dihapus, Termux kembali ke tampilan default.\033[0m\n"
else
    echo -e "\033[1;31m⚠️ Tidak ditemukan file backup (.bashrc.backup).\033[0m"
    echo -e "\033[1;33mTheme tidak bisa di-uninstall otomatis!\033[0m"
fi
