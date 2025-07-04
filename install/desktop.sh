$installationType = $1
if [! $installationType == 3]; then
  yay -S --noconfirm --needed \
    brightnessctl playerctl pamixer pavucontrol wireplumber \
    wl-clip-persist clipse \
    nautilus sushi gnome-calculator \
    chromium vlc \
    evince imv
fi