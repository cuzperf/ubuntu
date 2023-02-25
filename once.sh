# 不再用声音警报
sudo sed -i 's/# set bell-style none/set bell-style none/g' /etc/inputrc
# 双系统选择时间设为 3s
sudo update-grub
sudo sed -i 's/GRUB_TIMEOUT=10/GRUB_TIMEOUT=3/g' /etc/default/grub
# 合盖不休眠
echo "HandleLidSwitch=ignore" | sudo tee -a /etc/systemd/logind.conf
# 显示时间到秒
gsettings set org.gnome.desktop.interface clock-show-seconds true
# 手动：关闭自动休眠，设置中文输入法（记得配置一下，不然很难用），设置下默认浏览器，设置以下缩放比例，安装 qq
# 双系统蓝牙鼠标问题：https://zhuanlan.zhihu.com/p/466962255

# for clang
echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-11 main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://apt.llvm.org/focal/ llvm-toolchain-focal-11 main" | sudo tee -a /etc/apt/sources.list
echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-16 main" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://apt.llvm.org/focal/ llvm-toolchain-focal-16 main" | sudo tee -a /etc/apt/sources.list
