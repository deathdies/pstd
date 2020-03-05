#!/data/data/com.termux/files/usr/bin/bash
M="\e[0;31m"
K="\e[0;33m"
H="\e[0;32m"
C="\e[0;34m"
N="\e[0;0m"
function logo() {
clear
cat << EOF
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
clear
cat << EOF
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
  echo "~~~~~~~~~~~~~~~~~"
  echo -e $H" U S A G E ! ! !"
  echo -e $N"~~~~~~~~~~~~~~~~~"
  echo "Guide For"
  echo "Usage P10k ScreenFetch Termux Deluxe! :"
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo -e $C"  Options [ About ] :"
  echo -e $N"   * This is an program"
  echo "   * Which aims to facilitate the user"
  echo "   * In beautifying the appearance of the Termux!"
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo -e $C"### About Me! ###"
  echo -e $N"[+] WA       : +6281233657831"
  echo "[+] Email    : death.die112@gmail.com"
  echo "[+] Github   : https://github.com/deathdies"
  echo "[+] FaceBook : https://facebook.com/deathdie.sugito"
  echo "[+] Author By de@hdies"
  echo "[+] P10k ScreenFetch Termux Deluxe!"
  echo ""
  echo -e $C"Thanks To :"
  echo "[✓] LS Deluxe >>> 'https://github.com/Peltoche/'"
  echo "[✓] ScreenFetch >>> 'https://github.com/KittyKatt/'"
  echo "[✓] Powerlevel10k >>> 'https://github.com/romkatv/'"
  echo ""
  echo -e $K"  Tap Key Options [ 1 ] For Guide This Tools!"
  echo -e $N"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"$M
  read -rsn1 -p "Or Tap [ z ] for Back to Main Menu! " guide;echo -e $N
	case $guide in
		1)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[!] 1! Wait.."
		  echo -e $N"[+] Go to Guide!"
		  sleep 2
		  logo
		  echo "~~~~~~~~~~~~~~~~~"
		  echo -e $H" U S A G E ! ! !"
		  echo -e $N"~~~~~~~~~~~~~~~~~"
		  echo "Guide For"
		  echo "Usage P10k ScreenFetch TERMUX Deluxe! :"
		  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		  echo -e $C"  Options [ Guide ] :"
		  echo -e $K"   1) Make Sure You Are in ZSH Mode!"
		  echo -e $H"        * To enter ZSH Mode Type :"
		  echo -e $N"          [ ! ] - chsh -s zsh"
		  echo "          [ ! ] - exec zsh"
		  echo "          - And then Close Ur Session!"
		  echo "          - Or Restart Ur Termux!"
		  echo -e $H"        * To Return back to BASH Mode :"
		  echo -e $N"          [ ! ] - chsh -s bash"
		  echo "          [ ! ] - exec bash"
		  echo "          - And then Close Ur Session!"
		  echo "          - Or Restart Ur Termux!"
		  echo -e $K"   2) If You Are Already in ZSH Mode!"
		  echo -e $H"        * You can enter commands directly :"
		  echo -e $N"          - zfonts >>> Change Fonts"
		  echo "          - zthemes >>> Change Themes"
		  echo "          - zcolors >>> Change Colors Themes"
		  echo "          - zdistro >>> Change Screenfetch Distros"
		  echo "          - zupdate >>> Installation or Update"
		  echo "          - zguide >>> Guide For Use PSTD Tools"
		  echo "          - zreset >>> Reset Themes To Default PSTD"
		  echo "          - zunins >>> For Uninstall PSTD Tools"
		  echo -e $H"[+] You can also call all the Menus"
		  echo -e $H"[!] With the '${C}pstd${H}' command"
		  echo -e $N"[+] More Info U Can Visit Official Git Site Author"
		  echo -e $C"[✓] LS Deluxe >>> 'https://github.com/Peltoche/'"
		  echo "[✓] ScreenFetch >>> 'https://github.com/KittyKatt/'"
		  echo "[✓] Powerlevel10k >>> 'https://github.com/romkatv/'"
		  echo -e $N""
		  echo -e $K"   Tap [Enter] to go back!!"
		  echo -e $N"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"$M
		  read -rsn1 -p "Or type [ ctrl+z ] to Exit! " guide;echo -e $N
		  logo
		  echo -e $H"[!] Wait..."
		  echo -e $N"[+] Go to Back!"
		  sleep 1
		  ;;
		z)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[!] z! Wait.."
		  echo -e $N"[+] Back to Main Menu!"
		  sleep 2
          "$HOME/.termux/menu/pstd.sh"
          exit
          ;;
        *)logo
          echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $M"[ ! ] Invalid Choice!"
		  echo ""
		  echo -e $H"Tips!"
		  echo -e $N"[!] Tap [ 1 / x ] for Ur Choice"
		  echo "[!] Or [ ctrl+z ] for Exit!"
		  echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"$K
		  read -rsn1 -p "Press [Enter] to Continue..." readEnterKey;echo -e $N
		  sleep 1
		  ;;
	esac
done
