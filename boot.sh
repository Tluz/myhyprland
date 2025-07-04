echo -e "Welcome to MyHyprland!"

pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git

echo -e "\nCloning MyHyprland..."
rm -rf ~/.local/share/myhyprland/
git clone https://github.com/Tluz/MyHyprland.git ~/.local/share/MyHyprland >/dev/null

echo -e "\nInstallation starting..."
read -p "Would you like to (1) Install with autologin (2) Install with session manger or (3) Just update files: " installationType
source ~/.local/share/MyHyprland/install.sh $installationType
