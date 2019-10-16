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
	echo -e "********************************************************************************${NC}" "                                                                             *"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////1. User Management      ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////2. Updates              ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////3. Unauthorized Media   ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////4. Unauthorized software////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////5. Guest Removal        ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////6. Disable Root         ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////7. Open SSH             ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////8. Network Security     ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////9. Password Policy      ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////10. File Permissions    ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}//////////////////////////////${RED}X. Exit Program${NC}         ////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
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
	echo -e "${RED}*${NC}/////////////////////////1. Delete Unauthorized Users////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}/////////////////////////2. Change Weak Passwords    /////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}/////////////////////////3. Change Admin Access      /////////////////////////${RED}*${NC}"
	echo -e "${RED}*${NC}                                                                              ${RED}*${NC}"
	echo -e "${RED}*${NC}/////////////////////////4. Add Users                /////////////////////////${RED}*${NC}"
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
			for i in $(cat /etc/passwd | cut -d: -f 1,3,6 | grep -e "[5-9][0-9][0-9]" -e "[0-9][0-9][0-9][0-9]" | grep "/home" | cut -d: -f1) ; do
				if [[ $( grep -ic -e $i $(pwd)/Documents/Hyrda-Tech-Scriptin/users.txt ) -eq 0 ]]; then	
					(deluser $i --remove-all-files >>T RemovingUsers.txt 2>&1)				fi
			done
			MainScreen
			;;

		2 )
			echo "Change Passwords"
			MainScreen
			;;

		3 )
			for i in $(cat /etc/passwd | cut -d: -f 1,3,6 | grep -e "[5-9][0-9][0-9]" -e "[0-9][0-9][0-9][0-9]" | grep "/home" | cut -d: -f1); do
				#If the user is supposed to be a normal user but is in the sudo group, remove them from sudo
				BadUser=0
				if [[ $( grep -ic $i $(pwd)/Documents/users.txt ) -ne 0 ]]; then	
					if [[ $( echo $( grep "sudo" /etc/group) | grep -ic $i ) -ne 0 ]]; then	
						#if username is in sudo when shouldn’t
						deluser $i sudo;
						echo "removing $i from sudo" >> usersChanged.txt
					fi
			if [[ $( echo $( grep "adm" /etc/group) | grep -ic $i ) -ne 0 ]]; then	
						#if username is in adm when shouldn’t
						deluser $i adm;
						echo "removing $i from adm" >> usersChanged.txt
					fi
				else
					BadUser=$((BadUser+1));
				fi
				#If user is supposed to be an adm but isn’t, raise privilege.
				if [[ $( grep -ic $i $(pwd)/Documents/admin.txt ) -ne 0 ]]; then	
					if [[ $( echo $( grep "sudo" /etc/group) | grep -ic $i ) -eq 0 ]]; then	
						#if username isn't in sudo when should
						usermod -a -G "sudo" $i
						echo "add $i to sudo"  >> usersChanged.txt
					fi
			if [[ $( echo $( grep "adm" /etc/group) | grep -ic $i ) -eq 0 ]]; then	
						#if username isn't in adm when should
						usermod -a -G "adm" $i
						echo "add $i to adm"  >> usersChanged.txt
					fi
				else
					BadUser=$((BadUser+1));
				fi
				if [[ $BadUser -eq 2 ]]; then
					echo "WARNING: USER $i HAS AN ID THAT IS CONSISTENT WITH A NEWLY ADDED USER YET IS NOT MENTIONED IN EITHER THE admin.txt OR users.txt FILE. LOOK INTO THIS." >> usersChanged.txt
				fi
			done
			MainScreen
			;;

		4 )
			echo "" >> addusers.txt
			for i in $(cat $(pwd)/Documents/addusers.txt); do
				useradd $i;
			done
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

			sudo apt-get upgrade
			sudo apt-get install --only-upgrade bash --force-yes -y
			sudo apt-get install -f --force-yes -y
			sudo apt-get autoremove --force-yes -y
			sudo apt-get autoclean --force-yes -y
			sudo apt-get check
			
			sudo apt-get install perl --force-yes -y

			sudo perl -pi -e 's/"${distro_id}:"*/Ubuntu xenial-security/g' /etc/apt/apt.conf.d/50unattended-upgrades
			
			apt_config=/etc/apt/apt.conf.d/10periodic
			sudo bash -c 'echo "APT::Periodic::Update-Package-Lists \"1\";" > $apt_config'
			sudo bash -c 'echo "APT::Periodic::Download-Upgradeable-Packages \"1\";" >> $apt_config'
			sudo bash -c 'echo "APT::Periodic::AutocleanInterval \"7\";" >> $apt_config'
			sudo bash -c 'echo "APT::Periodic::Unattended-Upgrade \"1\";" >> $apt_config'

			sudo apt-get dist-upgrade

			sudo apt-get install unattended-upgrades --force-yes -y	

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
			find / -name '*.mp3' -type f -delete
    		find / -name '*.mov' -type f -delete
 			find / -name '*.mp4' -type f -delete
    		find / -name '*.avi' -type f -delete
    		find / -name '*.mpg' -type f -delete
    		find / -name '*.mpeg' -type f -delete
			find / -name '*.flac' -type f -delete
			find / -name '*.m4a' -type f -delete
    		find / -name '*.flv' -type f -delete
    		find / -name '*.ogg' -type f -delete
			find /home -name '*.gif' -type f -delete
			find /home -name '*.png' -type f -delete
    		find /home -name '*.jpg' -type f -delete
    		find /home -name '*.jpeg' -type f -delete
			
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
	echo -e "${RED}*${NC}/////////////////////////////////Disable Root?////////////////////////////////${RED}*${NC}echo "
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