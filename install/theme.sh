# Use dark mode for QT apps too (like VLC and kdenlive)
sudo pacman -S --noconfirm kvantum-qt5

# Prefer dark mode everything
sudo pacman -S --noconfirm gnome-themes-extra # Adds Adwaita-dark theme

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

# Setup theme links
mkdir -p ~/.config/myhyprland/themes
for f in ~/.local/share/myhyprland/themes/*; do ln -s "$f" ~/.config/myhyprland/themes/; done

# Set initial theme
mkdir -p ~/.config/myhyprland/current
ln -snf ~/.config/myhyprland/themes/catppuccin ~/.config/myhyprland/current/theme

# Set specific app links for current theme
ln -snf ~/.config/myhyprland/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
mkdir -p ~/.config/btop/themes
ln -snf ~/.config/myhyprland/current/theme/btop.theme ~/.config/btop/themes/current.theme

# Set new background
ln -nsf $(find "$HOME/.config/myhyprland/current/theme/backgrounds/" -type f | head -n 1) "$HOME/.config/myhyprland/current/background"
pkill -x swaybg
setsid swaybg -i "$HOME/.config/myhyprland/current/background" -m fill &
