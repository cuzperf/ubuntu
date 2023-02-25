#!/bin/bash
sudo apt update && sudo apt upgrade -y
# sagemath include jupyter
sudo apt install -y sagemath octave haskell-platform texlive-full
echo "%colors linux" > .sage/init.sage
cd pkg
./texmaker.sh
cd ..
sudo apt --fix-broken install -y

sudo apt autoremove -y
