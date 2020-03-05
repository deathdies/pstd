#!/data/data/com.termux/files/usr/bin/bash
M="\e[0;31m"
K="\e[0;33m"
H="\e[0;32m"
C="\e[0;34m"
N="\e[0;0m"
DIR=$HOME/.termux
THEMES_DIR=$DIR/themes
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
function pstdrc() {
.pstdrc=`mktemp`
head -n0 $HOME/.zshrc > $.pstdrc
echo 'clear
screenfetch -A "Android"
source "$HOME/.termux/zsh/powerlevel10k.zsh-theme"
source "$HOME/.termux/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
source "$HOME/.termux/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
alias pstd="/data/data/com.termux/files/home/.termux/menu/pstd.sh"
alias zfonts="/data/data/com.termux/files/home/.termux/menu/fonts.sh"
alias zthemes="/data/data/com.termux/files/home/.termux/menu/themes.sh"
alias zcolors="/data/data/com.termux/files/home/.termux/menu/colors.sh"
alias zdistro="/data/data/com.termux/files/home/.termux/menu/screenfetch.sh"
alias zupdate="/data/data/com.termux/files/home/.termux/menu/update.sh"
alias zguide="/data/data/com.termux/files/home/.termux/menu/guide.sh"
alias zreset="/data/data/com.termux/files/home/.termux/menu/reset.sh"
alias zexit="/data/data/com.termux/files/home/.termux/menu/exit.sh"
alias zuninstall="/data/data/com.termux/files/home/.termux/menu/uninstall.sh"
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"
alias q="exit"
alias h="cd $HOME"
alias gc="git clone"
alias cx="chmod +x"
alias csd="cd $HOME/storage/downloads"
HISTFILE="$HOME/.cache/.zsh_history"
HIST_STAMPS="mm/dd/yyyy"
DISABLE_UPDATE_PROMPT="true"
HISTSIZE="100000"
SAVEHIST="100000"
ZLE_RPROMPT_INDENT="0"
POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=white"
autoload -Uz add-zsh-hook
setopt hist_expire_dups_first
setopt always_to_end
setopt correct_all
setopt autocd
setopt append_history
setopt auto_list
setopt auto_menu
setopt auto_pushd
setopt extended_history
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt ignore_eof
setopt inc_append_history
setopt interactive_comments
setopt no_beep
setopt no_hist_beep
setopt no_list_beep
setopt magic_equal_subst
setopt notify
setopt print_eight_bit
setopt print_exit_value
setopt prompt_subst
setopt pushd_ignore_dups
setopt rm_star_wait
setopt share_history
setopt transient_rprompt
watch=(notme)
LOGCHECK="60"
REPORTTIME="5"
KEYTIMEOUT="1"
WORDCHARS="*?_-[]~=./&;!#$%^(){}<>"' >> $.pstdrc
tail -n +0 $HOME/.zshrc >> $.pstdrc
mv $.pstdrc $HOME/.zshrc
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
echo -e "══════════[ ${C}THEMES${N}═${C}MENU${N} ]══════════║"        
count=0
for themes in $THEMES_DIR/*; do
	themes_file[count]=$themes;
	echo "[ $count ] $( echo ${themes_file[count]} | awk -F'/' '{print $NF}' )";
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
  read -p "[+] Choose Ur Favorite Themes : " number;echo -e $N
  if [[ $number =~ ^[0-3]$ ]]; then
	(( $number >= 0 && $number <= $count ));
	rm "$HOME/.zshrc"
	cp "${themes_file[number]}" "$HOME/.zshrc"
		logo
	    echo -e ">>> Ur Choice :"
	    sleep 0.5
	    echo -e $C"[!] Themes >>> ${H}[ $number ]"
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
		pstdrc
		chsh -s zsh
		exec zsh
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
		echo -e $N"[+] Tap ${C}[ 0-3 ] ${N}for Ur Choice"
		echo -e "[+] And ${C}[ z/x/ctrl+z ] ${N}for Bad Choice!"
		echo -e "════════════════════════════════════════║"$K
		read -rsn1 -p "Press [Enter] to Continue..." readEnterKey;echo -e $N
		sleep 1
		"$HOME/.termux/menu/themes.sh"
		;;
	esac
done;
termux-reload-settings
