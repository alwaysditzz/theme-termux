text="Welcome To Termux!"
for i in $(seq 0 $((${#text}-1))); do
  printf "%s" "${text:$i:1}" | lolcat
  sleep 0.01
done
echo -e "\n"

echo -e "\033[1;34m"
figlet "TOOLS-TERMUX" | lolcat
echo -e "\033[0m"

echo -e "\033[1;31m           |              \033[1;32m=============================="
echo -e "\033[1;33m          / \\             \033[1;32mOWNER    : Ditzz4you-Official"
echo -e "\033[1;32m         / _ \\            \033[1;32mTELEGRAM : @Ditzz4youOfficial"
echo -e "\033[1;36m        |.o '.|           \033[1;32mWHATSAPP : +6283867251273"
echo -e "\033[1;34m        |'._.'|           \033[1;32m=============================="
echo -e "\033[1;35m        |     |"
echo -e "\033[1;31m       /|  |  |\\"
echo -e "\033[1;33m      / |  |  | \\"
echo -e "\033[1;32m     /  |  |  |  \\"
echo -e "\033[1;36m    |   |  |  |   |"
echo -e "\033[1;34m    |,-'--|--'--.-|\033[0m"

echo -e "\n\n"

PS1="\[\033[1;36m\](🚀 Tools-Termux) \[\033[1;33m\]\W ➤ \[\033[0m\]"
