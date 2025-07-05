installationType = $1
if [ $installationType == 3 ]; then
  sudo pacman -S --needed --noconfirm base-devel
  if ! command -v yay &>/dev/null; then
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si --noconfirm
    cd ~
    rm -rf yay-bin
  fi
fi

