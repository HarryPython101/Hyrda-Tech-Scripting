#!/usr/bin/env bash

function HomeScreen(){

	cd ~
	sudo unalias -a

	
	# user display
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                          (#%%%%%%%%%%%%# &                                   *"
	echo "*                         %%%%%%%%%%%%%%%%%#                                   *"
	echo "*                         %%%%%%%%%%%%%%%%%#                                   *"
	echo "*                         %%%%%#&    (#%%%%#                                   *"
	echo "*                         %%%%%#&                                              *"
	echo "*                         %%%%%#&  /###########                                *"
	echo "*                         %%%%%#&  /#%%%%%%%%%%                                *"
	echo "*                         %%%%%#&  /#%%%%%%%%%%                                *"
	echo "*                         %%%%%#&     ((%%%%%(                                 *"
	echo "*                         %%%%%%%%%%%%%#%%%%%(                                 *"
	echo "*                         %%%%%%%%%%%%%%%%%%%(                                 *"
	echo "*                          (#%%%%%%%%%%%%%%%%(                                 *"
	echo "*                                     ((%%%%%(  #((((((                        *"
	echo "*                                     ((%%%%%(  (#%%%%(                        *"
	echo "*                                     %#%%%%%%%%%%%%%%(                        *"
	echo "*                                     %%%%%%%%%%%%%%%%(                        *"
	echo "*//////////////////////WELCOME TO HYDRATECH'S CYBERSCRIPT//////////////////////*"
	echo "*                                                                              *"
	echo "*///////////////////////////////ENTER 1 TO BEGIN///////////////////////////////*"
	echo "********************************************************************************"
	echo "********************************************************************************"
	
	homeAns=" "

	read homeAns

	case $homeAns in

		1 )
			sudo apt-get update

			MainScreen
			;;

		* )
			HomeScreen
			;;

	esac
}

function MainScreen(){
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*//////////////////////////////1. User Management      ////////////////////////*"
	echo "*//////////////////////////////2. Updates              ////////////////////////*"
	echo "*//////////////////////////////3. Unauthorized Media   ////////////////////////*"
	echo "*//////////////////////////////4. Unauthorized software////////////////////////*"
	echo "*//////////////////////////////5. Guest Removal        ////////////////////////*"
	echo "*//////////////////////////////6. Disable Root         ////////////////////////*"
	echo "*//////////////////////////////7. Open SSH             ////////////////////////*"
	echo "*//////////////////////////////8. Firewall             ////////////////////////*"
	echo "*//////////////////////////////9. Password Policy      ////////////////////////*"
	echo "*//////////////////////////////X. Exit Program         ////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

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
			Firewall
			;;

		9 )
			PasswordPolicy
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
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*/////////////////////////1. Delete Unauthorized Users////////////////////////*"
	echo "*                                                                              *"
	echo "*/////////////////////////2. Change Weak Passwords    /////////////////////////*"
	echo "*                                                                              *"
	echo "*/////////////////////////3. Change Admin Access      /////////////////////////*"
	echo "*                                                                              *"
	echo "*/////////////////////////4. Main Screen              /////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	userAns=" "

	read userAns

	case $userAns in

		1 )
			echo "Delete Unauthorized Users"
			;;

		2 )
			echo "Change Passwords"
			;;

		3 )
			for x in `cat users`
			do
				read -p "Is $x considered an admin?[y/n]: " a
				if [ $a = y ]
					then
						##Adds to the adm group
						sudo usermod -a -G adm $x
						##Adds to the sudo group
						sudo usermod -a -G sudo $x
					else
						##Removes from the adm group
						sudo deluser $x adm

						##Removes from the sudo group
						sudo deluser $x sudo
				fi
			done

			MainScreen
			;;

		4 )
			MainScreen
			;;
		* )
			UserManagement
			;;
	esac

}

function AutomaticUpdates(){
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*/////////////////////////////Enable Auto Updates?/////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/No////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	autoAns=" "

	read autoAns

	case $autoAns in

		"Y" | "Yes" | "yes" | "y" )

			sudo apt-get upgrade
			sudo apt-get dist-upgrade
			sudo apt-get install --only-upgrade bash --force-yes -y
			sudo apt-get install -f --force-yes -y
			sudo apt-get autoremove --force-yes -y
			sudo apt-get autoclean --force-yes -y
			sudo apt-get check

			apt_config=/etc/apt/apt.conf.d/10periodic
			echo "APT::Periodic::Update-Package-Lists \"1\";" > $apt_config
			echo "APT::Periodic::Download-Upgradeable-Packages \"1\";" >> $apt_config
			echo "APT::Periodic::AutocleanInterval \"0\";" >> $apt_config
			echo "APT::Periodic::Unattended-Upgrade \"1\";" >> $apt_config

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
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////REMOVE ALL UNAUTHORIZED FILES?////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/No////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

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
	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////REMOVE Unauthorized Software?/////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/No////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	softAns=" "

	read softAns

	case $softAns in

		"Y" | "Yes" | "yes" | "y" )
			sudo service pure-ftpd stop
			sudo apt-get autoremove pure-ftpd
			sudo apt-get autoremove nmap
			sudo apt-get purge qbittorrent 
			sudo apt-get purge utorrent 
			sudo apt-get purge ctorrent 
			sudo apt-get purge ktorrent 
			sudo apt-get purge rtorrent 
			sudo apt-get purge deluge 
			sudo apt-get purge transmission-gtk
			sudo apt-get purge transmission-common 
			sudo apt-get purge tixati 
			sudo apt-get purge frostwise 
			sudo apt-get purge vuze 
			sudo apt-get purge irssi
			sudo apt-get purge talk 
			sudo apt-get purge telnet
				#Remove pentesting
			sudo apt-get purge wireshark 
			sudo apt-get purge nmap 
			sudo apt-get purge john 
			sudo apt-get purge netcat 
			sudo apt-get purge netcat-openbsd 
			sudo apt-get purge netcat-traditional 
			sudo apt-get purge netcat-ubuntu 
			sudo apt-get purge netcat-minimal
				#cleanup	 
			sudo apt-get autoremove

			echo "other software"
			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function GuestRemoval(){

	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*///////////////////////////////REMOVE THE GUEST///////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/No////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	guestAns=" "

	read guestAns

	case $guestAns in

		"Y" | "Yes" | "yes" | "y" )
			sudo echo "allow-guest=false" >> /etc/lightdm/lightdm.conf
			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function DisableRoot(){

	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*/////////////////////////////////Disable Root?////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/no////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

	rootAns=" "

	read rootAns

	case $rootAns in

		"Y" | "Yes" | "yes" | "y" )
		
			echo "remove root"
			MainScreen
			;;

		* )
			MainScreen
			;;

	esac

}

function OpenSSH(){

	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*///////////////////////////////Install Open SSH?//////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/no////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

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

function Firewall(){
	sudo ufw enable
	sudo ufw deny 23
    sudo ufw deny 2049
    sudo ufw deny 515
    sudo ufw deny 111
	MainScreen
}


function PasswordPolicy(){

	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*///////////////////////////Enforce Password Policys?//////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/no////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"


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

function AreYouSure(){

	echo "********************************************************************************"
	echo "********************************************************************************"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////Are You Sure You Want to Exit?////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*////////////////////////////////////Yes/no////////////////////////////////////*"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "*                                                                              *"
	echo "********************************************************************************"
	echo "********************************************************************************"

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
