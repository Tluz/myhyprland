# Copy over myhyprland configs
cp -R ./config/* ~/.config/

# Touch alacritty config to pickup the changed theme
touch "$HOME/.config/alacritty/alacritty.toml"
touch "$HOME/.config/foot/foot.ini"

# Restart for new theme
pkill -SIGUSR2 waybar
makoctl reload
hyprctl reload
