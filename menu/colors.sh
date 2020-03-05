#!/data/data/com.termux/files/usr/bin/bash
M="\e[0;31m"
K="\e[0;33m"
H="\e[0;32m"
C="\e[0;34m"
N="\e[0;0m"
DIR=$HOME/.termux
FONTS_DIR=$DIR/colors
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
echo -e "══════════[ ${C}COLORS${N}═${C}MENU${N} ]══════════║"        
count=0
for colors in $FONTS_DIR/*; do
	colors_file[count]=$colors;
	echo "[ $count ] $( echo ${colors_file[count]} | awk -F'/' '{print $NF}' )";
	count=$(( $count + 1));
done;
count=$(( $count - 1 ));
while true; do
  echo "═══════════════════════════════════║"
  echo -e "   [ z ] ${K}Main Menu!${N}"
  echo -e "   [ x ] ${M}EXIT?!${N}"
  echo "══════════════════════════║"
  echo "PSTD@$(hostname)"
  echo -e "$(date)"$H
  read -p "[+] Choose Ur Favorite Colors : " number;echo -e $N
    if [[ "$number" =~ ^[0-9]+$ ]] && [ "$number" -ge 0 ] && [ "$number" -le 42 ]; then
	(( $number >= 0 && $number <= $count ));
	rm "$HOME/.termux/colors.properties";
	cp "${colors_file[number]}" "$HOME/.termux/colors.properties";
		logo
	    echo -e ">>> Ur Choice :"
	    sleep 0.5
	    echo -e $C"[!] Colors >>> Number ${H}[ $number ]"
	    echo -e $N"[!] Wait for 3s..."
	    sleep 3
	    logo
		echo -e $H"[!] Done!"
        sleep 0.5
        echo ""
        echo -e $H"Tips!"
        echo -e $N"[+] Press ${C}[ ctrl+z ] ${N}for Exit!"
        echo "[+] >>> And Not Change..."
        echo -e "════════════════════════════════════════║"$C
        read -rsn1 -p "Press [Enter] to See Result!" readEnterKey;echo -e $N
		logo
        break
   fi
   case $number in
      z)logo
		echo ">>> Ur Choice :"
		sleep 0.5
		echo -e $H"[!] z! Wait.."
		echo -e $N"[+] Back to Main Menu!"
		sleep 2
        "$HOME/.termux/menu/pstd.sh"
        exit
        ;;
      x)logo
		echo ">>> Ur Choice :"
		sleep 0.5
		echo -e $H"[!] x! Wait.."
		echo -e $N"[+] EXIT!"
		sleep 2
        "$HOME/.termux/menu/exit.sh"
        exit
        ;;
      *)logo
		echo ">>> Ur Choice :"
		sleep 0.5
		logo
		echo -e $M"[ ! ] Invalid Choice!"
		echo ""
		echo -e $H"Tips!"
		echo -e $N"[+] Tap ${C}[ 0-5 ] ${N}for Ur Choice"
		echo -e "[+] And ${C}[ z/x/ctrl+z ] ${N}for Bad Choice!"
		echo -e "════════════════════════════════════════║"$K
		read -rsn1 -p "Press [Enter] to Continue..." readEnterKey;echo -e $N
		sleep 1
		"$HOME/.termux/menu/colors.sh"
		;;
	esac
done;
termux-reload-settings
