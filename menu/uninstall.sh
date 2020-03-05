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
while :
do
logo
echo -e $K"[!] R U Sure U Want to Uninstall PSTD!?"
echo -e $N"[+] Uninstall Now?!"
echo -e $M"      Tap! ${N}>>> ${C}[ Y / n ]"$N
read -rsn1 -p "" yesno
   case $yesno in
      Y)logo
        echo ">>> Ur Choice :"
		sleep 0.5
		echo -e $H"[!] Y! Wait.."
		echo -e $N"[+] Cleaning All for 3s..."
		sleep 3
		logo
        echo -e $M"[!] Change Permission And Cleaning..."$N
		sleep 1
echo '#!/data/data/com.termux/files/usr/bin/bash
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
logo
echo -e $M"[!]CLEANING..."$N
sleep 1
rm "/data/data/com.termux/files/usr/bin/applets/lsd"
rm "$HOME/.zshrc"
rm -rf "$HOME/.cache"
rm -rf "$HOME/.termux"
logo
echo -e $H"[+] DONE!"
sleep 0.5
echo ""
echo -e $K"[!] Please Close This Session!"$N
read -p "[!] Or Restart Ur Terminal Termux! >>> [Enter]"
sl
logo
echo -e $H"[+] Thanks For Using This Tools!"
echo "[+] See U Around! :)"
echo -e $C"### About Me! ###"
echo -e $N"[+] WA       : +6281233657831"
echo "[+] Email    : death.die112@gmail.com"
echo "[+] Github   : https://github.com/deathdies"
echo "[+] FaceBook : https://facebook.com/deathdie.sugito"
echo "[+] Menu By de@hdies"
echo "[+] P10k ScreenFetch Termux Deluxe!"
rm "$HOME/zshrc.sh"
chsh -s bash
exec bash
exit' >> "$HOME/zshrc.sh"
        chmod +x "$HOME/zshrc.sh"
        "$HOME/zshrc.sh"
        exit
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
