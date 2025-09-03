#!/bin/bash

blue="\033[1;34m"; cyan="\033[1;36m"; green="\033[1;32m"
yellow="\033[1;33m"; red="\033[1;31m"; reset="\033[0m"

clear
echo -e "${cyan}🚀 Uninstalling Ditzz4you Termux Theme...${reset}"
sleep 1

MOTD="/data/data/com.termux/files/usr/etc/motd"

if [ -f "$HOME/.bashrc.backup" ]; then
  cp -f "$HOME/.bashrc.backup" "$HOME/.bashrc"
  echo -e "${green}✓ Konfigurasi shell berhasil dipulihkan dari backup.${reset}"
else
  cat > "$HOME/.bashrc" <<'EOF'
PS1='\u@\h:\w$ '
EOF
  echo -e "${yellow}✨ Environment shell telah disetel ulang ke konfigurasi standar.${reset}"
fi
sleep 1

cat > "$MOTD" <<'EOF'
Welcome to Termux!

Docs:       https://termux.dev/docs
Donate:     https://termux.dev/donate
Community:  https://termux.dev/community

Working with packages:
- Search:   pkg search <query>
- Install:  pkg install <package>
- Upgrade:  pkg upgrade
EOF
echo -e "${green}✓ Pesan welcome (motd) berhasil dipulihkan.${reset}"
sleep 1

if [ -f "$HOME/.hushlogin" ]; then
  rm -f "$HOME/.hushlogin"
  echo -e "${green}✓ File .hushlogin dihapus (motd akan muncul lagi).${reset}"
fi
sleep 1

echo -e "${blue}↻ Menerapkan perubahan...${reset}"
source "$HOME/.bashrc"

echo -e "${cyan}🎉 Proses uninstall selesai!${reset}"
echo ""

echo -e "${cyan}Apa yang ingin kamu lakukan selanjutnya?${reset}"
echo -e "${green}1) Exit${reset}"
read -p "Pilih opsi (1): " opsi

case $opsi in
    1)
        echo -e "${blue}👋 Keluar dari Termux...${reset}"
        exit
        ;;
    *)
        echo -e "${red}Pilihan tidak valid. Keluar otomatis.${reset}"
        exit
        ;;
esac
