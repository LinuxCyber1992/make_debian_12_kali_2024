#################################################################################################################################
################   THIS IS FOR VMs AND DEBIAN CAPABLE PCs   #####################################################################
#PREREQUISITES:																													#
#1 Your PC should have the Windows Features  - Virtual Machine Platform Turned On												#	
#2 Turn off your Virus Protection For Windows 10 or Windows 11 or excude the folder which you are going							#
#  install VMWare and your VM ISO import - for example: If I store my VM HDD on C Drive: find that								#	
#  folder and exclude it on your virus scan. It is better to turn off the Virus Protection before you							#
#   install Debian 12 Kali-Tools or even installing any Forensic and Hacking OS like Parrot, Kali, BackBox, etc					#
#3 A minimum of 4GB ram (the more the better!),																					#
#4 A minimum of 20GB hard disk space for installation, depending on the version. I am using Version 2024.2                      #
#  I really recommend getting at least 150 GB for future installations and updates!											    #
#5 A minimum of 2GB RAM for i386 and AMD64 architectures. (I really don't like using 2GB RAM, the more the better!)				#	
#																																#
# Please Check Kali Linux Documentation at : 																					#	
# https://www.kali.org/docs/installation/hard-disk-install/ , https://www.kali.org/get-kali/#kali-platforms 					#
# This is for hard-disk-install	& VM install, pls test it on VMs first															#	
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
# GO TO your download folder where you stored/donwloaded this file                                                              #
#                                                                                                                               #
# sudo _user_ or sudo su                                                                                                        #
# ~~~~~Enter Your Password~~~~~~~                                                                                               #
#                                                                                                                               #
# cd Downloads/path_to_this_file                                                                                                #
# chmod +x makingdebian12kali4Linux&VMs.sh                                                                                      #
# ./makingdebian12kali4Linux&VMs.sh                                                                                             #
# Then wait execute what you want for Debian 12 - Kali Tools!                                                                   #
# Done                                                                                                                          #
# Thank you!                                                                                                                    #
#################################################################################################################################

# Manual Terminal based installation (thru shell/cli) commands:
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

