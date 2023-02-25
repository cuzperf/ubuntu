sudo apt-get install -y libcanberra-gtk-module libssl-dev libsodium-dev
sudo apt --fix-broken install -y

cd /tmp

wget https://github.com/qingshuisiyuan/electron-ssr-backup/releases/download/v0.2.6/electron-ssr-0.2.6.AppImage

chmod a+x electron-ssr-0.2.6.AppImage
sudo cp electron-ssr-0.2.6.AppImage /usr/local/bin/electron-ssr

# use above or use electron-ssr-0.3.0-alpha.6.AppImage

# link
# https://fast.lycorisrecoil.org/link/Ix6X7lXn8i0Nq7ww?sub=1
