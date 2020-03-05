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
  echo -e "═══════════[ ${C}MAIN${N}═${C}MENU${N} ]═══════════║"        
  echo "[ 1 ] Change Fonts"
  echo "[ 2 ] Change Themes"
  echo "[ 3 ] Change Colors Themes"
  echo "[ 4 ] Change Screenfetch Distro"
  echo "[ 5 ] Installation or Update"
  echo "[ 6 ] Guide For Use PSTD Tools"
  echo "[ 7 ] Reset Themes To Default PSTD"
  echo "═══════════════════════════════════║"
  echo -e "   [ 0 ] ${K}EXIT${N}"
  echo -e "   [XXX] ${M}Uninstall?!${N}"
  echo "══════════════════════════║"
  echo "PSTD@$(hostname)"
  echo -e "$(date)"$H
  read -rsn1 -p "[+] Tap Number Key For Choice! " zfs;echo -e $N
	case $zfs in
		1)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[ 1 ] Change Fonts"$N
		  sleep 2
		  "$HOME/.termux/menu/fonts.sh"
		  exit
		  ;;
		2)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[ 2 ] Change Themes"$N
		  sleep 2
		  "$HOME/.termux/menu/themes.sh"
		  exit
		  ;;
		3)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[ 3 ] Change Colors Themes"$N
		  sleep 2
		  "$HOME/.termux/menu/colors.sh"
		  exit
		  ;;
		4)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[ 4 ] Change Screenfetch Distro"$N
		  sleep 2
		  "$HOME/.termux/menu/screenfetch.sh"
		  exit
		  ;;
		5)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[ 5 ] Installation or Update"$N
		  sleep 2
		  "$HOME/.termux/menu/update.sh"
		  exit
		  ;;
		6)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[ 6 ] Guide For Use PSTD Tools"$N
		  sleep 2
		  "$HOME/.termux/menu/guide.sh"
		  exit
		  ;;
		7)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[ 7 ] Reset Themes To Default PSTD"$N
		  sleep 1
while true; do
        logo
		echo -e $K"[!] R U Sure U Want To Reset Themes?!"
	    echo -e $N"[+] Reset Themes Now?!"
	    echo -e $M"      Tap! ${N}>>> ${C}[ Y / n ]"$N
	    read -rsn1 -p "" yesno
   case $yesno in
      Y)logo
		echo ">>> Ur Choice :"
		sleep 0.5
		echo -e $H"[!] Y! Wait.."
		echo -e $N"[+] Reset for 3s..."
		sleep 3
		logo
		echo -e $K"[!] Change Permission File For Reset..."$N
		sleep 1
		chmod +x "$HOME/.zshrc"
		logo
		echo -e $K"[!] Remove Older File..."$N
		sleep 1
        rm "$HOME/.zshrc"
        rm "$HOME/.zshrc.bak"
        logo
		echo -e $K"[!] Change Permission File For Copy..."$N
        sleep 1
        chmod +x "$HOME/.termux/menu/reset.sh"
        logo
		echo -e $K"[!] Copy New File..."$N
        sleep 1
        cp "$HOME/.termux/menu/reset.sh" "$HOME/.zshrc"
        logo
		echo -e $H"[!] Done!"
        sleep 0.5
        echo ""
        echo -e $K"[+] Please Close This Session"$N
        read -rsn1 -p "[+] Or Restart Ur Terminal Termux!"
        chsh -s zsh
        exec zsh
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
          ;;
        0)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[ 0 ] EXIT"$N
		  sleep 2
		  "$HOME/.termux/menu/exit.sh"
		  exit
		  ;;
		x)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[ XXX ] Uninstall"$N
		  sleep 2
		  "$HOME/.termux/menu/uninstall.sh"
		  exit
		  ;;
		*)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  logo
		  echo -e $M"[ ! ] Invalid Choice!"
		  echo ""
		  echo -e $H"Tips!"
		  echo -e $N"[+] Tap ${C}[ 1-7 ] ${N}for Ur Choice"
		  echo -e "[+] And ${C}[ 0/x/ctrl+z ] ${N}for Bad Choice!"
		  echo -e "════════════════════════════════════════║"$K
		  read -rsn1 -p "Press [Enter] to Continue..." readEnterKey;echo -e $N
		  sleep 1
		  ;;
	esac
done
