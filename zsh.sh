#!/usr/bin/zsh
sudo apt --fix-broken install -y
sudo apt update && sudo apt upgrade -y
sudo apt install -y zsh

rm -rf ~/.zshrc ~/.oh-my-zsh
sh -c "$(curl -fsSL https://gitee.com/install-zsh/install-zsh/raw/master/install.sh)"
