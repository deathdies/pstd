#!/data/data/com.termux/files/usr/bin/bash
M="\e[0;31m"
K="\e[0;33m"
H="\e[0;32m"
C="\e[0;34m"
N="\e[0;0m"
pstdD+=('Android')
pstdD+=('ALDOS')
pstdD+=('Alpine Linux')
pstdD+=('Amazon Linux')
pstdD+=('Antergos')
pstdD+=('Arch Linux')
pstdD+=('Arch Linux - Old')
pstdD+=('ArcoLinux')
pstdD+=('Artix Linux')
pstdD+=('blackPanther OS')
pstdD+=('BLAG')
pstdD+=('BunsenLabs')
pstdD+=('CentOS')
pstdD+=('Chakra')
pstdD+=('Chapeau')
pstdD+=('Chrome OS')
pstdD+=('Chromium OS')
pstdD+=('CrunchBang')
pstdD+=('CRUX')
pstdD+=('Debian')
pstdD+=('Deepin')
pstdD+=('DesaOS')
pstdD+=('Devuan')
pstdD+=('Dragora')
pstdD+=('elementary OS')
pstdD+=('EuroLinux')
pstdD+=('Evolve OS')
pstdD+=('Sulin')
pstdD+=('Exherbo')
pstdD+=('Fedora')
pstdD+=('Frugalware')
pstdD+=('Fuduntu')
pstdD+=('Funtoo')
pstdD+=('Fux')
pstdD+=('Gentoo')
pstdD+=('gNewSense')
pstdD+=('Guix System')
pstdD+=('Hyperbola GNU/Linux-libre')
pstdD+=('januslinux')
pstdD+=('Jiyuu Linux')
pstdD+=('Kali Linux')
pstdD+=('KaOS')
pstdD+=('KDE neon')
pstdD+=('Kogaion')
pstdD+=('Korora')
pstdD+=('LinuxDeepin')
pstdD+=('Linux Mint')
pstdD+=('LMDE')
pstdD+=('Logos')
pstdD+=('Mageia')
pstdD+=('Mandriva/Mandrake')
pstdD+=('Manjaro')
pstdD+=('Mer')
pstdD+=('Netrunner')
pstdD+=('NixOS')
pstdD+=('OBRevenge')
pstdD+=('openSUSE')
pstdD+=('OS Elbrus')
pstdD+=('Oracle Linux')
pstdD+=('Parabola GNU/Linux-libre')
pstdD+=('Pardus')
pstdD+=('Parrot Security')
pstdD+=('PCLinuxOS')
pstdD+=('PeppermintOS')
pstdD+=('Proxmox VE')
pstdD+=('PureOS')
pstdD+=('Qubes OS')
pstdD+=('Raspbian')
pstdD+=('Red Hat Enterprise Linux')
pstdD+=('ROSA')
pstdD+=('Sabayon')
pstdD+=('SailfishOS')
pstdD+=('Scientific Linux')
pstdD+=('Siduction')
pstdD+=('Slackware')
pstdD+=('Solus')
pstdD+=('Source Mage GNU/Linux')
pstdD+=('SparkyLinux')
pstdD+=('SteamOS')
pstdD+=('SUSE Linux Enterprise')
pstdD+=('SwagArch')
pstdD+=('TinyCore')
pstdD+=('Trisquel')
pstdD+=('Ubuntu')
pstdD+=('Viperr')
pstdD+=('Void')
pstdD+=('Zorin OS')
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
echo -e $K"Options!"
echo ""
echo -e $N"[+] Tap ${C}[ 1 ] ${N}for ${H}Choose ${N}SF Distro"
echo -e $N"[+] Tap ${C}[ 2 ] ${N}for ${H}Preview ${N}SF Distro"
echo -e $N"[+] Press ${C}[ ctrl+z ] ${N}for Close!"
echo "═══════════════════════════════════║"
echo -e "   [ z ] ${K}Main Menu!${N}"
echo -e "   [ x ] ${M}EXIT?!${N}"
echo -e "══════════════════════════║"$H
read -rsn1 -p "[+] Choose! : " sf;echo -e $N
while :
do
	case $sf in
		1)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[ 1 ] Choose ScreenFetch Distro"$N
		  sleep 2
function xD() {
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
		  echo -e "══════════[ ${C}DISTRO${N}═${C}MENU${N} ]══════════║"
	count=0
	pstdD+=()
	for D in $(eval "echo {0..$(( ${#pstdD[@]} - 1 ))}"); do
	   distro[count]="${pstdD[$D]}";
	   echo -e $N"[ $count ] $( echo ${distro[count]})";
	count=$(( $count + 1));
	done;
}
xD
while true; do
	count=$(( $count - 1 ));
		  echo "═══════════════════════════════════║"
		  echo -e "   [ z ] ${K}Main Menu!${N}"
		  echo -e "   [ x ] ${M}EXIT?!${N}"
		  echo "══════════════════════════║"
		  echo "PSTD@$(hostname)"
		  echo -e "$(date)"$H
		  read -p "[+] Choose Ur Favorite Distros! : " changeD;echo -e $N
    if [[ "$changeD" =~ ^[0-9]+$ ]] && [ "$changeD" -ge 0 ] && [ "$changeD" -le 86 ]; then
	(( $changeD >= 0 && $changeD <= $changeD ));
	sed -i "2s/.*/screenfetch -A '${distro[changeD]}'/" "$HOME/.zshrc";
          logo
          echo -e ">>> Ur Choice :"
	      sleep 0.5
	      echo -e $C"[!] Distros >>> ${H}[ ${distro[changeD]} ]"
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
		  chsh -s zsh
		  exec zsh
          break
   fi
     case $changeD in
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
		    echo -e $N"[+] Tap ${C}[ 0-86 ] ${N}for Ur Choice"
		    echo -e "[+] And ${C}[ z/x/ctrl+z ] ${N}for Bad Choice!"
		    echo -e "════════════════════════════════════════║"$K
		    read -rsn1 -p "Press [Enter] to Continue..." readEnterKey;echo -e $N
		    sleep 1
		    xD
		    ;;
	  esac
done
termux-reload-settings
		  ;;
		2)logo
		  echo ">>> Ur Choice :"
		  sleep 0.5
		  echo -e $H"[ 2 ] Preview ScreenFetch Distro"$N
		  sleep 2
		  logo
		  echo -e $K"[!] Information!"
		  echo ""
		  echo -e $H"Tips!"$N
		  read -p "[+] Zoom Out Ur Screen First!"
		  logo
		  pstdD+=()
		  for D in $(eval "echo {0..$(( ${#pstdD[@]} - 1 ))}"); do
		  	distro="${pstdD[$D]}"
		  	echo -e $H"***********************************************************************"
		  	echo -e $N">>> ${K}$distro ${N}<<<"
		  	screenfetch -A "$distro"
		  	echo -e $M"#######################################################################"
		  	echo -e $N""
		  	echo ""
		  done
while true; do
		  echo "═══════════════════════════════════║"
		  echo -e "   [ z ] ${K}Main Menu!${N}"
		  echo -e "   [ x ] ${M}EXIT?!${N}"
		  echo "══════════════════════════║"
		  echo "PSTD@$(hostname)"
		  echo -e "$(date)"$H
		  read -rsn1 -p "Tap [ 1 ] To back Options Distro Menu! : " changeD;echo -e $N
     case $changeD in
          1)logo
            echo ">>> Ur Choice :"
		    sleep 0.5
		    echo -e $H"[!] 1! Wait.."
		    echo -e $N"[+] Back to Options Distro Menu!"
		    sleep 2
		    "$HOME/.termux/menu/screenfetch.sh"
		    exit
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
		    echo -e $N"Press [ ctrl+z ] for Close!"
		    echo -e "════════════════════════════════════════║"$K
		    read -rsn1 -p "Press [Enter] to Back Main Menu..." readEnterKey;echo -e $N
		    sleep 1
		    "$HOME/.termux/menu/pstd.sh"
		    ;;
	  esac
done
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
		  echo -e $N"[+] Tap ${C}[ 1-2 ] ${N}for Ur Choice"
		  echo -e "[+] And ${C}[ z/x/ctrl+z ] ${N}for Bad Choice!"
		  echo -e "════════════════════════════════════════║"$K
		  read -rsn1 -p "Press [Enter] to Continue..." readEnterKey;echo -e $N
		  sleep 1
		  "$HOME/.termux/menu/screenfetch.sh"
		  ;;
	esac
done
