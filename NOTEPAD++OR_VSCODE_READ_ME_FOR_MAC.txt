#################################################################################################################################
#################################         THIS IS FOR VMs AND DEBIAN CAPABLE PCs  ###############################################
#                                           PREREQUISITES:																		#
# I'm sorry, you're on your own on this one for MAC, I don't use mac so don't blame me for errors, pls do your own research.    #
# however, you can use VMWare on MAC machines    	                                                                            #
#                                                                                                                               #
# Doc 4 hard-disk install:    https://www.kali.org/docs/installation/hard-disk-install-on-mac/                                  #
# Software 4 VMWare Mac:      https://blogs.vmware.com/teamfusion/2024/05/fusion-pro-now-available-free-for-personal-use.html   #
# More resources:             https://www.kali.org/docs/virtualization/install-vmware-silicon-host/								#
#                                                                                                                               #															#	
##KALI IS A HACKING SOFTWARE, IT WILL DETECT AS A VIRUS AGENT ON YOUR PC. IT IS A FALSE ALARM, BUT BE SURE TO DOWNLOAD IT ON 	#
#                                   https://www.kali.org/get-kali/#kali-platforms 				    							#
#																																#	
# But for VMWare, Qemu, HyperVisor and Oracle Virtualbox,																		#					
# Download the torrent/ISO here:																								#			
# https://www.kali.org/get-kali/#kali-virtual-machines																			#
# Do not skip anything, read instructions carefully.																			#
# I'm not responsible for your illegal actions if you decide to use this illegally.												#	
################################################################################################################################# 
# Before you launch this script, please grant +x permission on your installed Debian 12 copy.                                   #
#                                                                                                                               #
# GO TO your download folder where you stored/downloaded this file                                                              #
#                                                                                                                               #
# ~~~~~~~~sudo or su -                                                                                                          #
# ~~~~~Enter Your Password~~~~~~~                                                                                               #
#                                                                                                                               #
# cd /path/to/directory or cd "YourFolder"                                                                                      #
# chmod 777 _file_   or    chmod +x script.sh                                                                                   #
# ./makingdebian12kali4mac.sh    or     sudo   ./makingdebian12kali4mac.sh                                                      #
# Then wait, execute & choose what you want for Debian 12 - Kali Tools!                                                         #
# Done                                                                                                                          #
# Thank you!                                                                                                                    #
#################################################################################################################################
#                                                           Additional Notes                                                    #
#                                       Ensure you trust the source of the .sh file before running it.                          #
#                                       You can view the contents of the script using:                                          #
#                                                                                                                               #
#                                 bash                                                                                          #
#    Concatenate:                 cat script.sh                                                                                 #
#################################################################################################################################

# Manual Terminal installation (bash)
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
#
#
#
apt -y install kali-linux-everything
#
#
#
#
#
# I recommend looking at the kali metapackages to see which one suites you. Your PC has to have enough storage
# https://www.kali.org/docs/general-use/metapackages/
#
#
#
#
#
# YOUR OPTIONS:
#kali-linux-core: Base Kali Linux System – core items that are always included
#kali-linux-headless: Default install that doesn’t require GUI
#kali-linux-default: “Default” desktop images include these tools
#kali-linux-arm: All tools suitable for ARM devices
#
