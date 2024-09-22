sudo apt update -y
sudo apt install wget gnupg dirmngr -y
sudo wget -q -O - https://archive.kali.org/archive-key.asc | gpg --import
sudo gpg --keyserver hkp://keys.gnupg.net --recv-key 44C6513A8E4FB3D30875F758ED444FF07D8D0BF6
sudo echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
sudo gpg -a --export ED444FF07D8D0BF6 | sudo apt-key add -
sudo apt update -y
sudo apt full-upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove --purge
sudo apt install kali-linux-core -y
##################################################################################
##############                                                                   #
#########                                                                        #
####          Now, install your desired kali-linux-tools                         #
####    Example: #sudo apt kali-linux-default (whatever you want)                #
####                                                                             #
#########                                                                        #
##############                                                                   #
##################################################################################