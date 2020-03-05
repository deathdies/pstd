#!/data/data/com.termux/files/usr/bin/bash
M="\e[0;31m"
K="\e[0;33m"
H="\e[0;32m"
C="\e[0;34m"
N="\e[0;0m"
function logo() {
clear
cat << "EOF"
▄───▄────────▄───▄
█▀█▀█────▄█▄─█▀█▀█─▄█▄
█▄█▄█───▀▀████▄█▄████▀▀
─███──▄▄─────▀█▀█▀
─████▐█─█─P̳o̳w̳e̳r̳L̳e̳v̳e̳l̳1̳0̳k̳
─████───█─S̳c̳r̳e̳e̳n̳F̳e̳t̳c̳h̳─T̳e̳r̳m̳u̳x̳─D̳e̳l̳u̳x̳e̳
─▀▀▀▀▀▀▀────────────────────────
EOF
echo "PSTD@$(hostname)"
echo "$(date)"
echo "════════════════════════════════════════║"
}
function update() {
clear
cat << "EOF"
logo
EOF
echo "════════════════════════════════════════║"
echo "Attention!"
echo "[ + ] Size Package And Installation"
read -p "[ + ] 100Mb± >>> [Enter]" enter
clear
cat << "EOF"
logo
EOF
echo "════════════════════════════════════════║"
echo "[ + ] Installing Require Package..."
pkg update -y
pkg upgrade -y
clear
cat << "EOF"
logo
EOF
echo "════════════════════════════════════════║"
echo "[ + ] Please Be patient until"
echo "[ + ] The Download And Installation is Complete!"
pkg install termux-elf-cleaner -y
pkg install -y git zsh screenfetch sl rust
clear
cat << "EOF"
logo
EOF
echo "════════════════════════════════════════║"
echo "[ + ] Process Clone And Installation..."
git clone https://github.com/deathdies/pstd.git "$HOME/.termux" --depth 1
git clone https://github.com/romkatv/powerlevel10k.git "$HOME/.termux/zsh" --depth 1
git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.termux/plugins/zsh-autosuggestions" --depth 1
git clone https://github.com/zdharma/fast-syntax-highlighting.git "$HOME/.termux/plugins/fast-syntax-highlighting" --depth 1
cargo install --git https://github.com/Peltoche/lsd.git --branch master
clear
cat << "EOF"
logo
EOF
echo "════════════════════════════════════════║"
echo "[ + ] Change Permission Files..."
chmod +x "$HOME/.termux/menu/pstd.sh"
chmod +x "$HOME/.termux/menu/fonts.sh"
chmod +x "$HOME/.termux/menu/themes.sh"
chmod +x "$HOME/.termux/menu/colors.sh"
chmod +x "$HOME/.termux/menu/screenfetch.sh"
chmod +x "$HOME/.termux/menu/update.sh"
chmod +x "$HOME/.termux/menu/guide.sh"
chmod +x "$HOME/.termux/menu/reset.sh"
chmod +x "$HOME/.termux/menu/exit.sh"
chmod +x "$HOME/.termux/menu/uninstall.sh"
rm "$HOME/.zshrc"
echo "extra-keys = [  ['ESC','PGUP','HOME','/','DEL','LEFT','UP','RIGHT'],  ['TAB','PGDN','END','-','BKSP','ALT','DOWN','CTRL'] ]" > "$HOME/.termux/termux.properties"
cp "$HOME/.termux/menu/reset.sh" "$HOME/.zshrc"
cp "$HOME/.termux/fonts/0_Default" "$HOME/.termux/font.ttf"
cp "$HOME/.cargo/bin/lsd" "/data/data/com.termux/files/usr/bin/applets"
termux-elf-cleaner "/data/data/com.termux/files/usr/bin/applets/lsd"
clear
cat << "EOF"
logo
EOF
echo "════════════════════════════════════════║"
echo "[ + ] Done..."
echo '[ ! ] Usage "pstd"'
read -p "     to Display the Main Menu! >>> [Enter]" enter
echo "[ ! ] Now Open New Session"
read -p "     or Restart Ur Termux! >>> [Enter]" enter
echo "[ + ] Finishing..."
sleep 1
rm -rf "$HOME/.cargo"
rm -rf "$HOME/pstd"
chsh -s zsh
exec zsh
exit
}
logo
echo "[!] Please Wait..."
sleep 1
echo -e $K"[+] Checking Installation..."$N
sleep 3
if [ ! -f $HOME/.termux/zsh/prompt_powerlevel10k_setup ]; then
while true; do
logo
echo -e $K"[!] U R NOT PSTD!!"
echo -e $N"[+] Install Now?!"
echo -e $M"      Tap! ${N}>>> ${C}[ Y / n ]"$N
read -rsn1 -p "" yesno
   case $yesno in
      Y)logo
		echo ">>> Ur Choice :"
		sleep 0.5
		echo -e $H"[!] Y! Wait.."
		echo -e $N"[+] Installing for 3s..."
		sleep 3
        update
        break
        ;;
      n)logo
		echo ">>> Ur Choice :"
		sleep 0.5
		echo -e $H"[!] n! Wait.."
		echo -e $N"[+] Back to Main Menu!"
		sleep 2
        "$HOME/.termux/menu/pstd.sh"
        exit
        ;;
      *)logo
		echo ">>> Ur Choice :"
		sleep 0.5
		logo
		echo -e $M"[ ! ] Invalid Choice!"
		echo ""
		echo -e $H"Tips!"
		echo -e $N"[+] Tap ${C}[ Y ] ${N}for Execution!"
		echo -e "[+] Tap ${C}[ n ] ${N}for Back to Main Menu!"
		echo -e "[+] And ${C}[ ctrl+z ] ${N}for Exit!"
		echo -e "════════════════════════════════════════║"$K
		read -rsn1 -p "Press [Enter] to Continue..." readEnterKey;echo -e $N
		sleep 1
		;;
   esac
done
else
while true; do
logo
echo -e $H"[!] U R PSTD!!"
echo -e $N"[+] Update Now?!"
echo -e $M"      Tap! ${N}>>> ${C}[ Y / n ]"$N
read -rsn1 -p "" yesno
   case $yesno in
      Y)logo
		echo ">>> Ur Choice :"
		sleep 0.5
		echo -e $H"[!] Y! Wait.."
		echo -e $N"[+] Update for 3s..."
		sleep 3
		logo
		update
		break
        ;;
      n)logo
		echo ">>> Ur Choice :"
		sleep 0.5
		echo -e $H"[!] n! Wait.."
		echo -e $N"[+] Back to Main Menu!"
		sleep 2
        "$HOME/.termux/menu/pstd.sh"
        exit
        ;;
      *)logo
		echo ">>> Ur Choice :"
		sleep 0.5
		logo
		echo -e $M"[ ! ] Invalid Choice!"
		echo ""
		echo -e $H"Tips!"
		echo -e $N"[+] Tap ${C}[ Y ] ${N}for Execution!"
		echo -e "[+] Tap ${C}[ n ] ${N}for Back to Main Menu!"
		echo -e "[+] And ${C}[ ctrl+z ] ${N}for Exit!"
		echo -e "════════════════════════════════════════║"$K
		read -rsn1 -p "Press [Enter] to Continue..." readEnterKey;echo -e $N
		sleep 1
		;;
   esac
done
fi
