#!/usr/bin/env bash

BLUE='\033[0;34m'
RED='\033[0;031m'
GREEN='\033[0;032m'
NC='\033[0m'


function HomeScreen(){

	cd ~
	sudo unalias -a

	
	# user display
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                          (#%%%%%%%%%%%%# &                                   ${RED}*${NC}"
	echo -e "${RED}*${NC}                         %%${BLUE}%%%%%%%%%%%%%%${NC}%#                                   ${RED}*${NC}"
	echo -e "${RED}*${NC}                         %${BLUE}%%%%%${NC}%%%%%%${BLUE}%%%%%${NC}#                                   ${RED}*${NC}"
	echo -e "${RED}*${NC}                         %${BLUE}%%%%${NC}#&    (#%%%%#                                   ${RED}*${NC}"
	echo -e "${RED}*${NC}                         %${BLUE}%%%%${NC}#&                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                         %${BLUE}%%%%${NC}#&  /###########                                ${RED}*${NC}"
	echo -e "${RED}*${NC}                         %${BLUE}%%%%${NC}#&  /#${BLUE}%%%%%%%%${NC}%%                                ${RED}*${NC}"
	echo -e "${RED}*${NC}                         %${BLUE}%%%%${NC}#&  /#${BLUE}%%%%%%%%${NC}%%                                ${RED}*${NC}"
	echo -e "${RED}*${NC}                         %${BLUE}%%%%${NC}#&     ((${BLUE}%%%%${NC}%(                                 ${RED}*${NC}"
	echo -e "${RED}*${NC}                         %${BLUE}%%%%%${NC}%%%%%%%${BLUE}#%%%%${NC}%(                                 ${RED}*${NC}"
	echo -e "${RED}*${NC}                         %${BLUE}%%%%%%%%%%%%%%%%%${NC}%(                                 ${RED}*${NC}"
	echo -e "${RED}*${NC}                          (#%%%%%%%%%%${BLUE}%%%%%${NC}%(                                 ${RED}*${NC}"
	echo -e "${RED}*${NC}                                     ((${BLUE}%%%%${NC}%(  #((((((                        ${RED}*${NC}"
	echo -e "${RED}*${NC}                                     ((${BLUE}%%%%${NC}%(  (#${BLUE}%%%${NC}%(                        ${RED}*${NC}"
	echo -e "${RED}*${NC}                                     %#${BLUE}%%%%%%%%%%%%%${NC}%(                        ${RED}*${NC}"
	echo -e "${RED}*${NC}                                     %%%%%%%%%%%%%%%%(                        ${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////WELCOME TO ${RED}HYDRATECH'S${NC} CYBERSCRIPT//////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}///////////////////////////////ENTER ${GREEN}1${NC} TO BEGIN///////////////////////////////${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	
	homeAns=" "

	read homeAns

	case $homeAns in

		1 )
			#sudo apt-get update

			MainScreen
			;;

		* )
			HomeScreen
			;;

	esac
}

function MainScreen(){
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"                                                                             
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${GREEN}1. User Management${NC}      ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////2. Updates              ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${GREEN}3. Unauthorized Media${NC}   ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${GREEN}4. Unauthorized software${NC}////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${GREEN}5. Guest Removal${NC}        ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${GREEN}6. Disable Root${NC}         ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${GREEN}7. Open SSH${NC}             ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${GREEN}8. Network Security${NC}     ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${GREEN}9. Password Policy${NC}      ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${GREEN}10. File Permissions${NC}    ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${GREEN}11. System Security${NC}      ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${RED}X. Exit Program${NC}         ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	mainAns=" "

	read mainAns

	case $mainAns in

		1 )
			UserManagement
			;;

		2 )
			AutomaticUpdates
			;;

		3 )
			MediaRemoval
			;;

		4 )
			UnauthorizedSoftware
			;;

		5 )
			GuestRemoval
			;;

		6 )
			DisableRoot
			;;		

		7 )
			OpenSSH
			;;

		8 )
			NetWorkSecurity
			;;

		9 )
			PasswordPolicy
			;;
		
		10 )
			FilePermissions
			;;
		11)
			SystemSecurity
			;;	
		[xX] )
			AreYouSure
			;;

		* )
			MainScreen
			;;

	esac

}

#read list of authorized users
#delete all users not on it. and change administrator positions
function UserManagement(){
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}/////////////////////////${GREEN}1. Delete Unauthorized Users${NC}////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}/////////////////////////${GREEN}2. Change Weak Passwords${NC}    /////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}/////////////////////////${GREEN}3. Change Admin Access${NC}      /////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}/////////////////////////${GREEN}4. Add Users${NC}                /////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}/////////////////////////5. ${RED}Main Screen${NC}              /////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	userAns=" "

	read userAns

	case $userAns in

		1 )
			UnauthorizedUsers
			MainScreen
			;;

		2 )
			ChangePasswords
			MainScreen
			;;

		3 )
			ChangeAdmins
			MainScreen
			;;

		4 )
			AddUsers
			MainScreen
			;;

		5 )
			MainScreen
			;;
		* )
			UserManagement
			;;
	esac

}

function UnauthorizedUsers(){

	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}///////////////////////Enter Name Of User To Be Deleted///////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	
	userDel=" "

	read userDel

	sudo userdel -r $userDel

	UserManagement

}

function ChangePasswords(){
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}///////////////////////Enter Username to Change Password///////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	
	chngPass=" "

	read chngPass
	
	sed -i s/NOPASSWD:// /etc/sudoers

	echo "CyberP@tr1ot" | sudo passwd $chngPass

	UserManagement
}

function ChangeAdmins(){

	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}////////////////////////Enter Username to Change Admin////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

chngAdm=" "

read  chngAdm

	##Removes user from the admin group
	sudo deluser $chngAdm adm

	##Removes from the sudo group
	sudo deluser $chngAdm sudo

	UserManagement
}

function AddUsers(){
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////Enter Username to Add User//////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	
	addUser=" "

	read addUser

	## Adds The User
	sudo useradd $addUser

	## Creates Home Directory for the User
	sudo mkdir /home/$addUser

	UserManagement
}


function AutomaticUpdates(){
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}/////////////////////////////Enable Auto Updates?/////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}////////////////////////////////////${GREEN}Yes${NC}/${RED}No${NC}////////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	autoAns=" "

	read autoAns

	case $autoAns in

		"Y" | "Yes" | "yes" | "y" )

			sudo apt-get update --force-yes -y
			sudo apt-get upgrade --force-yes -y
			sudo apt-get install --only-upgrade bash --force-yes -y
			sudo apt-get install -f --force-yes -y

			
			sudo apt-get install perl --force-yes -y

			chmod 777 /etc/apt/apt.conf.d/10periodic
			cp /etc/apt/apt.conf.d/10periodic ~/Desktop/backups/
			echo -e "APT::Periodic::Update-Package-Lists \"1\";\nAPT::Periodic::Download-Upgradeable-Packages \"1\";\nAPT::Periodic::AutocleanInterval \"1\";\nAPT::Periodic::Unattended-Upgrade \"1\";" > /etc/apt/apt.conf.d/10periodic
			apt_config=/etc/apt/apt.conf.d/10periodic
			sudo bash -c 'echo "APT::Periodic::Update-Package-Lists \"1\";" > $apt_config'
			sudo bash -c 'echo "APT::Periodic::Download-Upgradeable-Packages \"1\";" >> $apt_config'
			sudo bash -c 'echo "APT::Periodic::AutocleanInterval \"7\";" >> $apt_config'
			sudo bash -c 'echo "APT::Periodic::Unattended-Upgrade \"1\";" >> $apt_config'
			chmod 644 /etc/apt/apt.conf.d/10periodic
			
			sudo apt-get dist-upgrade
			sudo apt-get install unattended-upgrades --force-yes -y	
			apt-get update -qq
			apt-get upgrade -qq
			apt-get dist-upgrade -qq

			sudo apt-get autoremove --force-yes -y
			sudo apt-get autoclean --force-yes -y
			sudo apt-get check
			MainScreen
			;;

		"n" | "N" | "No" | "NO" | "no" )

			MainScreen
			;;

		* )

			Automatic Updates
			;;

	esac

}

function MediaRemoval(){
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}////////////////////////REMOVE ALL UNAUTHORIZED FILES?////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}////////////////////////////////////${GREEN}Yes${NC}/${RED}No${NC}////////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	fileAns=" "

	read fileAns

	case $fileAns in

		"Y" | "Yes" | "yes" | "y" )
			sudo find / -name '*.mp3' -type f -delete
    		sudo find / -name '*.mov' -type f -delete
    		sudo find / -name '*.mov' -type f -delete
 			sudo find / -name '*.mp4' -type f -delete
    		sudo find / -name '*.avi' -type f -delete
    		sudo find / -name '*.mpg' -type f -delete
    		sudo find / -name '*.mpeg' -type f -delete
			sudo find / -name '*.flac' -type f -delete
			sudo find / -name '*.m4a' -type f -delete
    		sudo find / -name '*.flv' -type f -delete
    		sudo find / -name '*.ogg' -type f -delete
			sudo find /home -name '*.gif' -type f -delete
			sudo find /home -name '*.png' -type f -delete
    		sudo find /home -name '*.jpg' -type f -delete
    		sudo find /home -name '*.jpeg' -type f -delete
			
			echo "Removed the media"

			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function UnauthorizedSoftware(){
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}////////////////////////REMOVE Unauthorized Software?/////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "*////////////////////////////////////${GREEN}Yes${NC}/${RED}No${NC}////////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	softAns=" "

	read softAns

	case $softAns in

		"Y" | "Yes" | "yes" | "y" )

				#miscellaneous
			sudo service pure-ftpd stop
			sudo apt-get autoremove pure-ftpd --force-yes -y
			sudo apt-get autoremove nmap --force-yes -y
			sudo apt-get purge qbittorrent --force-yes -y
			sudo apt-get purge utorrent --force-yes -y
			sudo apt-get purge ctorrent --force-yes -y
			sudo apt-get purge ktorrent --force-yes -y
			sudo apt-get purge rtorrent --force-yes -y
			sudo apt-get purge deluge --force-yes -y
			sudo apt-get purge transmission-gtk --force-yes -y
			sudo apt-get purge transmission-common --force-yes -y
			sudo apt-get purge tixati --force-yes -y
			sudo apt-get purge frostwise --force-yes -y
			sudo apt-get purge vuze --force-yes -y
			sudo apt-get purge irssi --force-yes -y
			sudo apt-get purge talk --force-yes -y
			sudo apt-get purge telnet --force-yes -y
			sudo apt-get purge ftp --force-yes -y

				#Remove pentesting
			sudo apt-get purge wireshark --force-yes -y
			sudo apt-get purge nmap --force-yes -y
			sudo apt-get purge john --force-yes -y
			sudo apt-get purge netcat --force-yes -y
			sudo apt-get purge netcat-openbsd --force-yes -y
			sudo apt-get purge netcat-traditional --force-yes -y
			sudo apt-get purge netcat-ubuntu --force-yes -y
			sudo apt-get purge netcat-minimal--force-yes -y

				#cleanup	 
			sudo apt-get autoremove

			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function GuestRemoval(){

	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}///////////////////////////////REMOVE THE GUEST///////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}////////////////////////////////////${GREEN}Yes${NC}/${RED}No${NC}////////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	guestAns=" "

	read guestAns

	case $guestAns in

		"Y" | "Yes" | "yes" | "y" )
			sudo bash -c 'echo "allow-guest=false" >> /etc/lightdm/lightdm.conf'
			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function DisableRoot(){

	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}/////////////////////////////////Disable Root?////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}////////////////////////////////////${GREEN}Yes${NC}/${RED}No${NC}////////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	sudo apt-get install perl --force-yes -y

	rootAns=" "

	read rootAns

	case $rootAns in

		"Y" | "Yes" | "yes" | "y" )
		
			sudo passwd -l root
			
			rootExists=$(grep PermitRootLogin /etc/ssh/sshd_config|wc -l)

			if [ $rootExists=0 ]; then
				sudo bash -c 'echo "PermitRootLogin no" >> /etc/ssh/shd_config'
			else
				sudo perl -pi -e 's/.*PermitRootLogin*/PermitRootLogin no/g' /etc/ssh/sshd_config
			fi
			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function OpenSSH(){

	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}///////////////////////////////Install Open SSH?//////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}////////////////////////////////////${GREEN}Yes${NC}/${RED}No${NC}////////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	exitAns=" "

	read exitAns

	case $exitAns in

		"Y" | "Yes" | "yes" | "y" )
			sudo apt-get install openssh-server --force-yes -y
			sudo systemctl enable ssh
			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function NetWorkSecurity(){
		echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}///////////////////////////Enable Network Security?///////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}*////////////////////////////////////${GREEN}Yes${NC}/${RED}No${NC}////////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	networkAns=" "

	read networkAns

	case $networkAns in

		"Y" | "Yes" | "yes" | "y" )
			sudo ufw enable
			sudo ufw deny 23
			sudo ufw deny 2049
			sudo ufw deny 515
			sudo ufw deny 111
			
			cp /etc/hosts hosts
			sudo bash -c 'echo 127.0.0.1	localhost > /etc/hosts'
			sudo bash -c 'echo 127.0.1.1	ubuntu  >> /etc/hosts'

			sudo bash -c 'echo ::1     ip6-localhost ip6-loopback >> /etc/hosts'
			sudo bash -c 'echo fe00::0 ip6-localnet >> /etc/hosts'
			sudo bash -c 'echo ff00::0 ip6-mcastprefix >> /etc/hosts'
			sudo bash -c 'echo ff02::1 ip6-allnodes >> /etc/hosts'
			sudo bash -c 'echo ff02::2 ip6-allrouters >> /etc/hosts'
			
			echo "net.ipv6.conf.all.disable_ipv6 = 1" | sudo tee -a /etc/sysctl.conf


			sudo echo "# Block SYN Attacks
	net.ipv4.tcp_syncookies = 1
	net.ipv4.tcp_max_syn_backlog = 2048
	net.ipv4.tcp_synack_retries = 2
	net.ipv4.tcp_syn_retries = 5">>/etc/svsctl.com
			sudo echo "#Turn on Source Address Verification in all interface to
	# prevent some spoofing attacks
	net.ipv4.conf.default.rp_filter=1
	net.ipv4.conf.all.rp_filter=1">>/etc/sysctl.conf
			sudo echo "# The “order” line is only used by old versions of the C library.
	order hosts ,bind
	multi on
	order blind ,host
	nospoof on">>/etc/host.conf


		MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}


function PasswordPolicy(){

	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}///////////////////////////Enforce Password Policys?//////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}////////////////////////////////////${GREEN}Yes${NC}/${RED}No${NC}////////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"


	passAns=" "

		read passAns

		case $passAns in

			"Y" | "Yes" | "yes" | "y" )

			sudo apt-get install libpam-cracklib --force-yes -y
			
			sudo apt-get install perl --force-yes -y

			# check to see if there is a pam_tally.so line - add if absent, replace if necessary
			tallyExists=$(grep pam_tally.so /etc/pam.d/common-auth|wc -l)

			if [ $tallyExists -eq 0 ]; then
				sudo bash -c 'echo "auth optional pam_tally.so deny=5 unlock_time=900 onerr=fail audit even_deny_root_account silent" >> /etc/pam.d/common-auth'
			else
				sudo perl -pi -e 's/.*pam_tally.so.*/auth optional pam_tally.so deny=5 unlock_time=900 onerr=fail audit even_deny_root_account silent/g' /etc/pam.d/common-auth
			fi

			# check to see if there is a pam_cracklib.so line - add if absent, replace if necessary
			cracklibExists=$(grep pam_cracklib.so /etc/pam.d/common-password|wc -l)

			if [ $cracklibExists -eq 0 ]; then
				sudo bash -c 'echo "password requisite pam_cracklib.so retry=3 minlen=8 difok=3 reject_username minclass=3 maxrepeat=2 dcredit=1 ucredit=1 lcredit=1 ocredit=1" >> /etc/pam.d/common-password'
			else
				sudo perl -pi -e 's/.*pam_cracklib.so.*/password requisite pam_cracklib.so retry=3 minlen=8 difok=3 reject_username minclass=3 maxrepeat=2 dcredit=1 ucredit=1 lcredit=1 ocredit=1/g' /etc/pam.d/common-password
			fi

			# check to see if there is a pam_pwhistory.so line - add if absent, replace if necessary
			historyExists=$(grep pam_pwhistory.so /etc/pam.d/common-password|wc -l)

			if [ $historyExists -eq 0 ]; then
				sudo bash -c 'echo "password requisite pam_pwhistory.so use_authok remember=24 enforce_for_root" >> /etc/pam.d/common-password'
			else
				sudo perl -pi -e 's/.*pam_pwhistory.so.*/password requisite pam_pwhistory.so use_authok remember=24 enforce_for_root/g' /etc/pam.d/common-password
			fi

			# check to see if there is a pam_unix.so line - add if absent, replace if necessary
			unixExists=$(grep pam_unix.so /etc/pam.d/common-password|wc -l)

			if [ $unixExists -eq 0 ]; then
				sudo bash -c 'echo "password [success=1 default=ignore] pam_unix.so obscure use_authtok sha512 shadow" >> /etc/pam.d/common-password'
			else
				sudo perl -pi -e 's/.*pam_unix.so.*/password [success=1 default=ignore] pam_unix.so obscure use_authtok sha512 shadow/g' /etc/pam.d/common-password
			fi

			# check to see if there is a PASS_MIN_DAYS line - add if absent, replace if necessary
			minDaysExists=$(cat /etc/login.defs|grep -v \#|grep PASS_MIN_DAYS|wc -l)

			if [ $minDaysExists -eq 0 ]; then
				sudo bash -c 'echo "PASS_MIN_DAYS 7" >> /etc/login.defs'
			else
				sudo perl -pi -e 's/^PASS_MIN_DAYS.*/PASS_MIN_DAYS 7/g' /etc/login.defs
			fi

			# check to see if there is a PASS_MAX_DAYS line - add if absent, replace if necessary
			maxDaysExists=$(cat /etc/login.defs|grep -v \#|grep PASS_MAX_DAYS|wc -l)

			if [ $maxDaysExists -eq 0 ]; then
				sudo bash -c 'echo "PASS_MAX_DAYS 90" >> /etc/login.defs'
			else
				sudo perl -pi -e 's/^PASS_MAX_DAYS.*/PASS_MAX_DAYS 90/g' /etc/login.defs
			fi

			# check to see if there is a PASS_WARN_AGE line - add if absent, replace if necessary
			warnAgeExists=$(cat /etc/login.defs|grep -v \#|grep PASS_WARN_AGE|wc -l)

			if [ $warnAgeExists -eq 0 ]; then
				sudo bash -c 'echo "PASS_WARN_AGE 14" >> /etc/login.defs'
			else
				sudo perl -pi -e 's/^PASS_WARN_AGE.*/PASS_WARN_AGE 14/g' /etc/login.defs
			fi
		
			MainScreen
				;;

			* )
				MainScreen
				;;

		esac




}


function FilePermissions(){


	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////CHANGE POSSIBLY EXPLOITABLE FILES?//////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}////////////////////////////////////${GREEN}Yes${NC}/${RED}No${NC}////////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	exploitAns=" "

	read exploitAns

	case $exploitAns in

		"Y" | "Yes" | "yes" | "y" )
			
			chown root:root /etc/securetty
			chmod 0600 /etc/securetty
			chmod 644 /etc/crontab
			chmod 640 /etc/ftpusers
			chmod 440 /etc/inetd.conf
			chmod 440 /etc/xinetd.conf
			chmod 400 /etc/inetd.d
			chmod 644 /etc/hosts.allow
			chmod 440 /etc/sudoers
			chmod 640 /etc/shadow
			chown root:root /etc/shadow
			
			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function SystemSecurity(){
		echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}///////////////////////////Enable System Security?////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}*////////////////////////////////////${GREEN}Yes${NC}/${RED}No${NC}////////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	systemAns=" "

	read systemAns

	case $systemAns in

		"Y" | "Yes" | "yes" | "y" )
			# Protect against rubber ducky attacks
			sudo bash -c 'echo "blacklist usbhid" > /etc/modprobe.d/usbhid.conf'
			sudo update-initramfs -u -k $(uname -r)
			update-initramfs: Generating /boot/initrd.img-4.15.0-23-generic

			sudo unalias -a
			sudo alias egrep='egrep --color=auto'
			sudo alias fgrep='fgrep --color=auto'
			sudo alias grep='grep --color=auto'
			sudo alias l='ls -CF'
			sudo alias la='ls -A'
			sudo alias ll='ls -alF'
			sudo alias ls='ls --color=auto'
			sudo alias cls='clear'
			sudo alias dir='ls'
			sudo alias type='cat'
			sudo alias apt-get='apt-get'

			apt-get upgrade openssl libssl-dev
			apt-cache policy openssl libssl-dev
			sudo apt-get install clamav --force-yes -y
			sudo freshclam >> clam.txt
			sudo clamscan -r / >> clam.txt
			sudo clamscan --remove -i >> clam.txt
			sudo clamscan ‘/home/ >> clam.txt
			sudo clamscan --remove -i >> clam.txt
			sudo clamscan -r >> clam.txt
			sudo clamscan -r --move=/home/USER/VIRUS /home/USER >> clam.txt
			sudo clamscan -r --remove /home/USER >> clam.txt
			
			sudo apt-get install gdebi --force-yes -y
			sudo wget https://bitbucket.org/dave_theunsub/clamtk/downloads/clamtk_5.20-1_all.deb
			sudo gdebi clamtk_5.20-1_all.deb
			sudo apt-get install gdebi --force-yes -y
			sudo wget https://bitbucket.org/dave_theunsub/clamtk-gnome/downloads/clamtk-gnome_0.01-1_all.deb
			sudo gdebi clamtk-gnome_0.01-1_all.deb
			
			sudo apt-get install chkrootkit 
			sudo chkrootkit >> rootscan.txt

			sudo apt-get install apparmor-utils --force-yes -y
			sudo apparmor_status
			sudo aa-enforce /etc/apparmor.d/usr.bin.firefox
			sudo aa-enforce  /etc/apparmor.d/usr.bin.Firefox
			sudo aa-enforce /etc/apparmor.d/usr.bin.window explorer
			
			sudo apt install ecryptfs-utils --force-yes -y
			sudo ecryptfs-setup-swap
			
			sudo apt‐get install auditd --force-yes -y
			auditctl –e 1
			
			sudo apt-get install tiger --force-yes -yes
			sudo tiger

	  			echo "--------------cron.* Directories------------------">>~/cron.txt
			sudo tree -a -h -A /etc/cron.hourly>>~/cron.txt
			sudo tree -a -h -A /etc/cron.daily>>~/cron.txt
			sudo tree -a -h -A /etc/cron.weekly>>~/cron.txt
			sudo tree -a -h -A /etc/cron.monthly>>~/cron.txt
				#Startup
				echo "-------------STARTUP-----------">>~/cron.txt
			sudo tree -a -h -A /var/spool>>~/cron.txt
			sudo tree -a -h -A /var/spool/cron >>~/cron.txt
			sudo tree -a -h -A /etc/init>>~/cron.txt

			crontab -r
			cd /etc/
			/bin/rm -f cron.deny at.deny
			echo root >cron.allow
			echo root >at.allow
			/bin/chown root:root cron.allow at.allow
			/bin/chmod 400 cron.allow at.allow
			cd ..

			echo "#deb cdrom:[Ubuntu 12.04.1 LTS _Precise Pangolin_ - Release i386 (20120817.3)]/ precise main restricted
    deb http://us.archive.ubuntu.com/ubuntu/ precise main restricted
    deb-src http://us.archive.ubuntu.com/ubuntu/ precise main restricted
    deb http://us.archive.ubuntu.com/ubuntu/ precise-updates main restricted
    deb-src http://us.archive.ubuntu.com/ubuntu/ precise-updates main restricted
    deb http://us.archive.ubuntu.com/ubuntu/ precise universe
    deb-src http://us.archive.ubuntu.com/ubuntu/ precise universe
    deb http://us.archive.ubuntu.com/ubuntu/ precise-updates universe
    deb-src http://us.archive.ubuntu.com/ubuntu/ precise-updates universe
    deb http://us.archive.ubuntu.com/ubuntu/ precise multiverse
    deb-src http://us.archive.ubuntu.com/ubuntu/ precise multiverse
    deb http://us.archive.ubuntu.com/ubuntu/ precise-updates multiverse
    deb-src http://us.archive.ubuntu.com/ubuntu/ precise-updates multiverse
    deb http://us.archive.ubuntu.com/ubuntu/ precise-backports main restricted universe multiverse
    deb-src http://us.archive.ubuntu.com/ubuntu/ precise-backports main restricted universe multiverse
    deb http://security.ubuntu.com/ubuntu precise-security main restricted
    deb-src http://security.ubuntu.com/ubuntu precise-security main restricted
    deb http://security.ubuntu.com/ubuntu precise-security universe
    deb-src http://security.ubuntu.com/ubuntu precise-security universe
    deb http://security.ubuntu.com/ubuntu precise-security multiverse
    deb-src http://security.ubuntu.com/ubuntu precise-security multiverse
    # deb http://archive.canonical.com/ubuntu precise partner
    # deb-src http://archive.canonical.com/ubuntu precise partner
    deb http://extras.ubuntu.com/ubuntu precise main
    deb-src http://extras.ubuntu.com/ubuntu precise main" > /etc/apt/sources.list

			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function AreYouSure(){

	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}////////////////////////Are You Sure You Want to Exit?////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}*////////////////////////////////////${RED}Yes${NC}/${GREEN}No${NC}////////////////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}********************************************************************************"
	echo -e "********************************************************************************${NC}"

	exitAns=" "

	read exitAns

	case $exitAns in

		"Y" | "Yes" | "yes" | "y" )
			exit
			;;

		* )
			MainScreen
			;;

	esac

}

HomeScreen