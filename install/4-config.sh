# Copy over myhyprland configs
cp -R ~/.local/share/myhyprland/config/* ~/.config/

# Use default bashrc from myhyprland
echo "source ~/.local/share/myhyprland/default/bash/rc" >~/.bashrc

# Ensure application directory exists for update-desktop-database
mkdir -p ~/.local/share/applications

# Set common git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global pull.rebase true
git config --global init.defaultBranch master

# Set identification from install inputs
if [[ -n "${myhyprland_USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$myhyprland_USER_NAME"
fi

if [[ -n "${myhyprland_USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$myhyprland_USER_EMAIL"
fi
