installationType = $1

if [! $installationType == 3]; then
  yay -S --noconfirm --needed \
    spotify

  # Copy over myhyprland applications
  source ~/.local/share/myhyprland/bin/myhyprland-sync-applications
fi

