$installationType = $1
if [! $installationType == 3]; then
    # Install bluetooth controls
    yay -S --noconfirm --needed blueberry

    # Turn on bluetooth by default
    sudo systemctl enable --now bluetooth.service
fi
