$installationType = $1

if [! $installationType == 3]; then
  yay -S --noconfirm --needed \
     spotify

  # Copy over MyHyprland applications
  source ~/.local/share/MyHyprland/bin/MyHyprland-sync-applications
fi