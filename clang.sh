#!/bin/bash

wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -

# ubuntu20.04
sudo apt update
sudo apt install -y  llvm-11 lldb-11 clang-11 clangd-11 clang-tidy-11 clang-format-11 llvm-11-runtime lld-11 libclang-common-11-dev libclang-11-dev

sudo apt install -y libllvm-16-ocaml-dev libllvm16 llvm-16 llvm-16-dev llvm-16-doc llvm-16-examples llvm-16-runtime
sudo apt install -y clang-16 clang-tools-16 clang-16-doc libclang-common-16-dev libclang-16-dev libclang1-16 clang-format-16 python3-clang-16 clangd-16 clang-tidy-16
sudo apt install -y libclang-rt-16-dev lldb-16 lld-16 libomp-16-dev

# set clang-16 as default
change16() {
  cd /usr/bin
  sudo rm $1
  sudo ln -s $1-16 $1
}
clangs=(clang clang++ clangd clang-format clang-format-diff clang-tidy git-clang-format)
for clangi in ${clangs[@]}
do
  change16 $clangi
  echo "change `pwd`/$clangi done"
done

cd /usr/bin
sudo rm run-clang-tidy
sudo ln -s run-clang-tidy-16.py run-clang-tidy
echo "change `pwd`/$clangi done"
sudo apt --fix-broken install -y
sudo apt autoremove -y
