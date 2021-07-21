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
echo "════════════════════════════════════════║"
echo "Attention!"
echo "[ + ] Size Package And Installation"
read -p "[ + ] 100Mb± >>> [Enter]" enter
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
echo "════════════════════════════════════════║"
echo "[ + ] Installing Require Package..."
apt update -y
apt upgrade -y
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
echo "════════════════════════════════════════║"
echo "[ + ] Please Be patient until"
echo "[ + ] The Download And Installation is Complete!"
pkg install termux-elf-cleaner -y
pkg install -y git zsh screenfetch sl lsd
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
echo "════════════════════════════════════════║"
echo "[ + ] Process Clone And Installation..."
git clone https://github.com/deathdies/pstd.git "$HOME/.termux" --depth 1
git clone https://github.com/romkatv/powerlevel10k.git "$HOME/.termux/zsh" --depth 1
git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.termux/plugins/zsh-autosuggestions" --depth 1
git clone https://github.com/zdharma/fast-syntax-highlighting.git "$HOME/.termux/plugins/fast-syntax-highlighting" --depth 1
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
termux-elf-cleaner "/data/data/com.termux/files/usr/bin/applets/lsd"
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
echo "════════════════════════════════════════║"
echo "[ + ] Done..."
echo '[ ! ] Usage "pstd"'
read -p "     to Display the Main Menu! >>> [Enter]" enter
echo "[ ! ] Now Open New Session"
read -p "     or Restart Ur Termux! >>> [Enter]" enter
echo "[ + ] Finishing..."
sleep 1
rm -rf "$HOME/pstd"
chsh -s zsh
exec zsh
exit
