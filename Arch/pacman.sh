# apps that can be installed via pacman

sudo pacman -S gnome-keyring archlinux-keyring

# Programming Languages

sudo pacman -S python python-virtualenv python-pipenv \
    go gcc nodejs npm zsh

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Tools
sudo pacman -S neovim mysql-workbench sqlitebrowser

# Sublime
curl -O https://download.sublimetext.com/sublimehq-pub.gpg \
  && sudo pacman-key --add sublimehq-pub.gpg \
  && sudo pacman-key --lsign-key 8A8F901A \
  && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | \
  sudo tee -a /etc/pacman.conf
sudo pacman -Syu sublime-text

# LunarVim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
echo 'export PATH="$HOME/.local/bin/:$PATH"' >> ~/.zshrc

