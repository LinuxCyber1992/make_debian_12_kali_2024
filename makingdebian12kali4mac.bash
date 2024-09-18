apt update
apt -y install wget gnupg dirmngr
wget -q -O - https://archive.kali.org/archive-key.asc | gpg --import
gpg --keyserver hkp://keys.gnupg.net --recv-key 44C6513A8E4FB3D30875F758ED444FF07D8D0BF6
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
gpg -a --export ED444FF07D8D0BF6 | sudo apt-key add -
apt update
apt -y upgrade
apt -y dist-upgrade
apt -y autoremove --purge
# If you don't have enough hard drive/sdd space for kali-everything version, then you can do download the minimalized, default
# and top10 version, and change the "kali-linux-everything" portion of this code:
apt -y install kali-linux-everything

