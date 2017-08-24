#!/bin/bash
pacmngdl(){
	sudo apt update
	sudo apt install ruby sl gem cowsay bsdgames mplayer curl figlet
	sleep 3
	clear
}
clear
echo -e """
To run the program, we need to install the listed tools :

\truby, sl , gem , cowsay , bsdgames , colorize, mplayer, curl, banner, figlet

"""
id | grep sudo  > /dev/null
sudo=$?
chmod +x funli
if [ $sudo = "0" ];then
	pacmngdl
	checkdl=$?
	if [ "$checkdl" = "0" ];then
		echo -e "\t\tall programms are installed successfully!!!"
		echo "Now the programms should be added without any problem!!"
		if [ "$sudo" = "0" ];then  #If Its == Ture , You Are Sudo
			sudo gem install colorize
			sudo cp funli /bin
			sudo chmod +x /bin/rcode
		else 
			echo "you need to install 'colorize' which needs root access!!! contact your system admin"
			echo -e "use this command to install!!!\n\t sudo gem install colorize "
			PATH=$PATH:$PWD
			export PATH
			echo "$PATH" >> ~/.bashrc
		fi
		echo "the programm was installed successfully"
		echo "you can use the 'funli' command whenever you need to use the programm"
	else
		if [ "$checkdl" = "100" ] ; then
			echo "Make sure you have a working connection and your your repositories are up to date"
			exit
		else
			echo "Unknow ERROR!!!!"
			echo "you should first install the programms, then add funli to your commands and then recall funli"
		fi
	fi
else
	echo "you are not a sudo user. ask your administrator to install these programms or make you a sudo user!!!"
	echo "ruby sl gem cowsay bsdgames mplayer curl figlet"
	echo "And type this command : 'sudo gem install colorize'"
fi
echo "Have Fun!!!"
## Github.com/dearmad/funli
## Installer Coded By Https://Pouya-abbasian
## translation by https://gitlab.com/mhmdreza_abedi
