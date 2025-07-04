echo -e "Welcome to myhyprland!"

pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

echo -e "\nCloning myhyprland..."
rm -rf ~/.local/share/myhyprland/
git clone https://github.com/Tluz/myhyprland.git ~/.local/share/myhyprland >/dev/null

echo -e "\nInstallation starting..."
read -p "Would you like to (1) Install with autologin (2) Install with session manger or (3) Just update files: " installationType
source ~/.local/share/myhyprland/install.sh $installationType
