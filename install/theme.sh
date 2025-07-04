$installationType = $1

if [! $installationType == 3]; then
    # Use dark mode for QT apps too (like VLC and kdenlive)
    sudo pacman -S --noconfirm kvantum-qt5

    # Prefer dark mode everything
    sudo pacman -S --noconfirm gnome-themes-extra # Adds Adwaita-dark theme
fi

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

# Setup theme links
mkdir -p ~/.config/MyHyprland/themes
for f in ~/.local/share/MyHyprland/themes/*; do ln -s "$f" ~/.config/MyHyprland/themes/; done

# Set initial theme
mkdir -p ~/.config/MyHyprland/current
ln -snf ~/.config/MyHyprland/themes/tokyo-night ~/.config/MyHyprland/current/theme
source ~/.local/share/MyHyprland/themes/tokyo-night/backgrounds.sh
ln -snf ~/.config/MyHyprland/backgrounds/tokyo-night ~/.config/MyHyprland/current/backgrounds
ln -snf ~/.config/MyHyprland/current/backgrounds/1-Pawel-Czerwinski-Abstract-Purple-Blue.jpg ~/.config/MyHyprland/current/background

# Set specific app links for current theme
ln -snf ~/.config/MyHyprland/current/theme/hyprlock.conf ~/.config/hypr/hyprlock.conf
ln -snf ~/.config/MyHyprland/current/theme/wofi.css ~/.config/wofi/style.css
ln -snf ~/.config/MyHyprland/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
mkdir -p ~/.config/btop/themes
ln -snf ~/.config/MyHyprland/current/theme/btop.theme ~/.config/btop/themes/current.theme
mkdir -p ~/.config/mako
ln -snf ~/.config/MyHyprland/current/theme/mako.ini ~/.config/mako/config
