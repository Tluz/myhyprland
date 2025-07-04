# Install everything
for f in ~/.local/share/MyHyprland/install/*.sh; do source "$f" $1; done

#Autologin
if [$1 == 1]; then
    source ~/.local/share/MyHyprland/session-manager/autologin.sh 
fi

# Ensure locate is up to date now that everything has been installed
sudo updatedb

gum confirm "Reboot to apply all settings?" && reboot
