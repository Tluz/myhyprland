$installationType = $1
# Copy over MyHyprland configs
cp -R ~/.local/share/MyHyprland/config/* ~/.config/

# Use default bashrc from MyHyprland
echo "source ~/.local/share/MyHyprland/default/bash/rc" >~/.bashrc

if [! $installationType == 3]; then
  # Set common git aliases
  git config --global alias.co checkout
  git config --global alias.br branch
  git config --global alias.ci commit
  git config --global alias.st status
  git config --global pull.rebase true
  git config --global init.defaultBranch master

  # Set identification from install inputs
  if [[ -n "${MyHyprland_USER_NAME//[[:space:]]/}" ]]; then
    git config --global user.name "$MyHyprland_USER_NAME"
  fi

  if [[ -n "${MyHyprland_USER_EMAIL//[[:space:]]/}" ]]; then
    git config --global user.email "$MyHyprland_USER_EMAIL"
  fi
fi