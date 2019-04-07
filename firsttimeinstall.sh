#!/bin/sh

#Installing my frequently used programs
echo "Install basic programs"
sudo apt-get -y install rofi xbacklight lxappearance nm-tray network-manager-openvpn fish filezilla atom compton feh texlive-full flameshot htop i3 i3lock-fancy nm-applet qbittorrent ranger rhythmbox telegram texstudio vlc git
sudo apt-get -y install network-manager-openvpn-gnome openvpn-systemd libappindicator1 python-pip ipykernel youtube-dl ruby-full build-essential zlib1g-dev
sudo apt-get -y install exfat-utils exfat-fuse playerctl lm-sensors



#Building i3-gaps
echo "Building i3-gaps from source"
sudo apt-get install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
libxcb-util0-dev libxcb-icccm4-dev libyajl-dev \
libstartup-notification0-dev libxcb-randr0-dev \
libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev

mkdir ~/Documents/GitClones/

cd ~/Documents/GitClones
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install


#Making fish the default shell
chsh -s /usr/bin/fish

#Making fish cool
curl -L https://get.oh-my.fish | fish

