#!/bin/bash

# run once.sh first
# Better to install zsh soon after once.sh
# ./zsh.sh
# ./zshConfig.sh
# source ~/.zshrc

sudo apt update && sudo apt upgrade -y
sudo apt install -y curl vim git curl xsel vim net-tools p7zip-full libfuse2 fuse3 libx11-xcb-dev nfs-common python-is-python3
sudo apt install -y build-essential gcc gcc-multilib g++ g++-multilib cmake gdb libboost-all-dev qemu-system strace gdb sudo bear libsdl2-dev libreadline-dev llvm-11 gcc-riscv64-linux-gnu
sudo apt install -y autoconf automake libtool flex libx11-dev libx11-6 libx11-data libbison-dev libxaw7-dev adms libxml2-dev libxml-libxml-perl texinfo libssl-dev
sudo apt install -y fcitx-googlepinyin
sudo apt install -y adb tldr golang ngspice htop tmux
sudo apt install -y openssh-server openfortivpn
sudo ufw allow 22
cp .vimrc ~/.vimrc
sudo apt --fix-broken install -y
sudo apt autoremove -y
