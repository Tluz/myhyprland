installationType = $1
if [! $installationType == 3]; then
  yay -S --noconfirm --needed \
    cargo clang llvm mise \
    imagemagick \
    mariadb-libs postgresql-libs \
    github-cli \
    lazygit lazydocker
fi
