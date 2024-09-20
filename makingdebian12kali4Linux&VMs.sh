apt update -y
apt install wget gnupg dirmngr -y
wget -q -O - https://archive.kali.org/archive-key.asc | gpg --import
gpg --keyserver hkp://keys.gnupg.net --recv-key 44C6513A8E4FB3D30875F758ED444FF07D8D0BF6
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
gpg -a --export ED444FF07D8D0BF6 | sudo apt-key add -
apt update -y
apt full-upgrade -y
apt dist-upgrade -y
apt autoremove --purge
apt install kali-linux-core -y
##################################################################################
##############                                                                   #
#########                                                                        #
####          Now, install your desired kali-linux-tools                         #
####    Example: #sudo apt kali-linux-default (whatever you want)                #
####                                                                             #
#########                                                                        #
##############                                                                   #
##################################################################################