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
pacmngdl
checkdl=$?
if [ "$checkdl" = "0" ];then
	echo -e "\t\tbarname ha nasb shodan!!! [IR]"
	echo "Hala Barname bayad be dastorat ezafe beshe!![IR]"
	if [ "$sudo" = "0" ];then  #If Its == Ture , You Are Sudo
		sudo gem install colorize
		sudo cp funli /bin
		sudo chmod +x /bin/rcode
	else 
		echo "Shoma bayad 'colorize' ro nasb konid ke dastresi root mikhad!!! ba admin system dar tamas bashid"
		echo -e "baraye nasb az in dastor estefade konid!!!\n\t sudo gem install colorize "
		PATH=$PATH:$PWD
		export PATH
		echo "$PATH" >> ~/.bashrc
	fi
	echo "Khob Barname ba movafaghiat Nasb shod!!!"
	echo "Harvaght ke ba barname kar dashtin az dastoor 'funli' Mitonin estefade konid! [IR]"
else
	if [ "$checkdl" = "100" ] ; then
		echo "Motmaen Bashid Ke internet shoma vasle va makhazen shoma update hast [IR]"
		exit
	else
		echo "Unknow ERROR!!!!"
		echo "shoma bayad aval barname hara nasb konid va sepas funli dar dastoorat ezafe konid va sepas funli ro farakhani bekonid [IR]"

	fi
fi
echo "Movaffagh bashid!!!"
## Github.com/dearmad/funli
