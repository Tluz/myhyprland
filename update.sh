# Copy over myhyprland configs
cp -R ~/.local/share/myhyprland/config/* ~/.config/

# Touch alacritty config to pickup the changed theme
touch "$HOME/.config/alacritty/alacritty.toml"

# Restart for new theme
pkill -SIGUSR2 waybar
makoctl reload
hyprctl reload
