installationType = $1
if [! $installationType == 3]; then
  yay -S --noconfirm --needed \
    wget curl unzip inetutils \
    fd eza fzf ripgrep zoxide bat \
    wl-clipboard fastfetch btop \
    man tldr less whois plocate \
    alacritty
fi
